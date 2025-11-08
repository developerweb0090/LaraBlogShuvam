@extends('layouts.app')

@section('content')
<div class="container">
    {{-- POST SECTION --}}
    <h4>Post Details</h4>
    <table class="table table-bordered">
        <tbody>
            <tr>
                <th style="width: 20%;">Title</th>
                <td id="post-title">{{ $post->title }}</td>
            </tr>
            <tr>
                <th>Content</th>
                <td id="post-content">{{ $post->content }}</td>
            </tr>
            <tr>
                <th>Author</th>
                <td>{{ $post->user->name }}</td>
            </tr>
            <tr>
                <th>Actions</th>
                <td>
                    @can('update', $post)
                        <button class="btn btn-sm btn-warning" data-bs-toggle="modal" data-bs-target="#editPostModal">
                            Edit Post
                        </button>
                        <button class="btn btn-sm btn-danger" id="deletePostBtn" data-id="{{ $post->id }}">
                            Delete Post
                        </button>
                    @endcan
                </td>
            </tr>
        </tbody>
    </table>

    <hr>

    <hr>

    {{-- COMMENTS --}}
    <h5>Comments:</h5>
    @foreach($post->comments as $comment)
        <div class="border p-2 mb-2" id="comment-{{ $comment->id }}">
            <strong>{{ $comment->user->name }}</strong>:
            <span class="comment-text">{{ $comment->content }}</span>

            @can('update', $comment)
                <button class="btn btn-sm btn-outline-warning"
                        data-bs-toggle="modal"
                        data-bs-target="#editCommentModal-{{ $comment->id }}">
                    Edit
                </button>
                <button class="btn btn-sm btn-danger delete-comment" data-id="{{ $comment->id }}">
                  Delete
              </button>
            @endcan
        </div>

        {{-- COMMENT EDIT MODAL --}}
        <div class="modal fade" id="editCommentModal-{{ $comment->id }}" tabindex="-1">
            <div class="modal-dialog">
                <div class="modal-content">
                    <form id="editCommentForm-{{ $comment->id }}"
                          data-id="{{ $comment->id }}"
                          action="{{ route('comments.update', $comment) }}"
                          method="POST">
                        @csrf
                        @method('PUT')
                        <div class="modal-header">
                            <h5 class="modal-title">Edit Comment</h5>
                            <button type="button" class="btn-close" data-bs-dismiss="modal"></button>
                        </div>
                        <div class="modal-body">
                            <textarea name="content" class="form-control" rows="3">{{ $comment->content }}</textarea>
                        </div>
                        <div class="modal-footer">
                            <button type="submit" class="btn btn-primary">Save</button>
                            <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Cancel</button>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    @endforeach

    {{-- ADD NEW COMMENT --}}
    @auth
        <form action="{{ route('comments.store', $post) }}" method="POST" class="mt-3">
            @csrf
            <textarea name="content" class="form-control" rows="3" required></textarea>
            <button class="btn btn-sm btn-primary mt-2">Add Comment</button>
        </form>
    @endauth
</div>

{{-- POST EDIT MODAL --}}
@can('update', $post)
<div class="modal fade" id="editPostModal" tabindex="-1">
    <div class="modal-dialog">
        <div class="modal-content">
            <form id="editPostForm" action="{{ route('posts.update', $post) }}" method="POST">
                @csrf
                @method('PUT')
                <div class="modal-header">
                    <h5 class="modal-title">Edit Post</h5>
                    <button type="button" class="btn-close" data-bs-dismiss="modal"></button>
                </div>
                <div class="modal-body">
                    <input type="text" name="title" class="form-control mb-2" value="{{ $post->title }}">
                    <textarea name="content" class="form-control" rows="4">{{ $post->content }}</textarea>
                </div>
                <div class="modal-footer">
                    <button type="submit" class="btn btn-primary">Save</button>
                    <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Cancel</button>
                </div>
            </form>
        </div>
    </div>
</div>
@endcan
@endsection

@section('scripts')
<script>
$(function() {

    toastr.options = {
        "closeButton": true,
        "progressBar": true,
        "positionClass": "toast-top-right",
        "timeOut": "3000"
    };

    // --- AJAX Post Update ---
    $('#editPostForm').on('submit', function(e) {
        e.preventDefault();
        let form = $(this);

        $.ajax({
            url: form.attr('action'),
            type: 'POST',
            data: form.serialize(),
            success: function(res) {
                if (res.success) {
                    $('#post-title').text(res.title);
                    $('#post-content').text(res.content);
                    $('#editPostModal').modal('hide');
                    toastr.success('Post updated successfully!');
                }
            },
            error: function(xhr) {
                if(xhr.status === 422) {
                    let errors = xhr.responseJSON.errors;
                    for (let field in errors) {
                        toastr.error(errors[field][0]);
                    }
                } else {
                    toastr.error('Something went wrong!');
                }
            }
        });
    });

    // --- AJAX Comment Update ---
    $('[id^=editCommentForm-]').on('submit', function(e) {
        e.preventDefault();
        let form = $(this);
        let commentId = form.data('id');

        $.ajax({
            url: form.attr('action'),
            type: 'POST',
            data: form.serialize(),
            success: function(res) {
                if (res.success) {
                    $('#comment-' + res.comment_id + ' .comment-text').text(res.content);
                    $('#editCommentModal-' + res.comment_id).modal('hide');
                    toastr.success('Comment updated successfully!');
                }
            },
            error: function(xhr) {
                if(xhr.status === 422) {
                    let errors = xhr.responseJSON.errors;
                    for (let field in errors) {
                        toastr.error(errors[field][0]);
                    }
                } else {
                    toastr.error('Something went wrong!');
                }
            }
        });
    });

    // --- DELETE POST ---
$('#deletePostBtn').on('click', function() {
    if (!confirm('Are you sure you want to delete this post?')) return;
    let postId = $(this).data('id');

    $.ajax({
        url: '/posts/' + postId,
        type: 'POST',
        data: {
            _method: 'DELETE',
            _token: '{{ csrf_token() }}'
        },
        success: function(res) {
            toastr.success('Post deleted successfully!');
            // Redirect to home or posts index
            window.location.href = '{{ route("posts.index") }}';
        },
        error: function() {
            toastr.error('Failed to delete post.');
        }
    });
});

// --- DELETE COMMENT ---
$('.delete-comment').on('click', function() {
    if (!confirm('Are you sure you want to delete this comment?')) return;
    let commentId = $(this).data('id');

    $.ajax({
        url: '/comments/' + commentId,
        type: 'POST',
        data: {
            _method: 'DELETE',
            _token: '{{ csrf_token() }}'
        },
        success: function(res) {
            toastr.success('Comment deleted successfully!');
            $('#comment-' + commentId).remove();
        },
        error: function() {
            toastr.error('Failed to delete comment.');
        }
    });
});


});
</script>
@endsection

