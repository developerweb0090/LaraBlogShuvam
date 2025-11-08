<div class="mt-4">
    <h3 class="font-semibold mb-2">Comments ({{ $post->comments->count() }})</h3>
    @foreach($post->comments as $comment)
        <div class="border-t py-2">
            <p>{{ $comment->content }}</p>
            <small>By {{ $comment->user->name }}</small>
            @if(auth()->id() === $comment->user_id || auth()->user()->isAdmin())
                <form method="POST" action="{{ route('comments.destroy', $comment) }}" class="inline">@csrf @method('DELETE')
                    <button class="text-red-500">Delete</button>
                </form>
            @endif
        </div>
    @endforeach

    <form method="POST" action="{{ route('comments.store', $post) }}" class="mt-3">
        @csrf
        <textarea name="content" class="border p-2 w-full" placeholder="Add a comment..." required></textarea>
        <button class="bg-blue-500 text-white px-3 py-1 mt-2 rounded">Comment</button>
    </form>
</div>
