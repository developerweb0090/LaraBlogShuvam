@extends('layouts.app')
@section('content')
<h2>All Posts</h2>
@auth 
<h3> Hi {{ auth()->user()->name }} </h3>

<button class="btn btn-primary mb-2" data-bs-toggle="modal" data-bs-target="#createPostModal">
  Create Post 
</button> 
@endauth

  <div class="table-responsive">
    <table class="table table-bordered" id="postsContainer">
        <thead>
            <tr>
                <th>Title</th>
                <th>Content</th>
                <th>Author</th>
                <th>Created At</th>
                <th>Action</th>
            </tr>
        </thead>
        <tbody id="postsTableBody">
            @foreach($posts as $post)
            <tr id="post-{{ $post->id }}">
                <td>{{ $post->title }}</td>
                <td>{{ Str::limit($post->content, 100) }}</td>
                <td>{{ $post->user->name }}</td>
                <td>{{ $post->created_at->toFormattedDateString() }}</td>
                <td>
                    <a href="{{ route('posts.show', $post) }}" class="btn btn-sm btn-info">View</a>
                    {{-- @can('update', $post)
                        <button class="btn btn-sm btn-warning" data-bs-toggle="modal" data-bs-target="#editPostModal-{{ $post->id }}">
                            Edit
                        </button>
                        <button class="btn btn-sm btn-danger delete-post" data-id="{{ $post->id }}">Delete</button>
                    @endcan --}}
                </td>
            </tr>
            @endforeach
        </tbody>
    </table>
</div>


<div class="mt-3">
  {{ $posts->links('pagination::bootstrap-5') }}
</div>

<!-- Create Post Modal -->
<div class="modal fade" id="createPostModal" tabindex="-1" aria-labelledby="createPostModalLabel" aria-hidden="true">
  <div class="modal-dialog">
    <form id="createPostForm">
      @csrf
      <div class="modal-content">
        <div class="modal-header">
          <h5 class="modal-title" id="createPostModalLabel">Create New Post</h5>
          <button type="button" class="btn-close" data-bs-dismiss="modal"></button>
        </div>
        <div class="modal-body">
          <div class="mb-3">
            <label for="title" class="form-label">Title</label>
            <input type="text" name="title" class="form-control" required>
          </div>
          <div class="mb-3">
            <label for="content" class="form-label">Content</label>
            <textarea name="content" class="form-control" rows="4" required></textarea>
          </div>
        </div>
        <div class="modal-footer">
          <button type="submit" class="btn btn-primary">Create Post</button>
          <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Cancel</button>
        </div>
      </div>
    </form>
  </div>
</div>

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
  
      // --- AJAX Create Post ---
      $('#createPostForm').on('submit', function(e) {
        e.preventDefault();
        let form = $(this);

        $.ajax({
            url: '{{ route("posts.store") }}',
            type: 'POST',
            data: form.serialize(),
            success: function(res) {
                if(res.success) {
                    // Prepend new row to table
                    let post = res.post;
                    let newRow = `
                        <tr id="post-${post.id}">
                            <td>${post.title}</td>
                            <td>${post.content.substring(0,100)}</td>
                            <td>${post.user.name}</td>
                            <td>Just now</td>
                            <td>
                                <a href="/posts/${post.id}" class="btn btn-sm btn-info">View</a>
                            </td>
                        </tr>
                    `;
                    $('#postsTableBody').prepend(newRow);

                    // Close modal & reset form
                    $('#createPostModal').modal('hide');
                    form[0].reset();

                    toastr.success('Post created successfully!');
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
  });
  </script>
  
@endsection
