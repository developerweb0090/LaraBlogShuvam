@extends('layouts.app')

@section('content')
<h1 class="text-2xl font-bold mb-4">Edit Post</h1>

<form method="POST" action="{{ route('posts.update', $post) }}">
    @csrf @method('PUT')
    <input name="title" class="border p-2 w-full mb-3" value="{{ $post->title }}">
    <textarea name="content" class="border p-2 w-full mb-3" rows="5">{{ $post->content }}</textarea>
    <button class="bg-green-500 text-white px-4 py-2 rounded">Update</button>
</form>
@endsection
