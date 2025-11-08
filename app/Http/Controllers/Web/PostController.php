<?php

namespace App\Http\Controllers\Web;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Cache;
use App\Models\Post;


class PostController extends Controller
{
    public function index()
    {
        $posts = Cache::remember('posts', 10, fn() =>
            Post::with('user')->latest()->paginate(5)
        );
        return view('posts.index', compact('posts'));
    }

    public function create() { return view('posts.create'); }

    public function store(Request $request)
    {
        $request->validate([
            'title' => 'required|max:100',
            'content' => 'required'
        ]);

        $post = $request->user()->posts()->create($request->only('title','content'));
        $post->load('user');

        if ($request->ajax()) {
            return response()->json([
                'success' => true,
                'post' => $post
            ]);
        }

        return redirect()->route('posts.index')->with('success', 'Post created successfully');
    }


    public function show(Post $post)
    {
        $post->load('user', 'comments.user');
        return view('posts.show', compact('post'));
    }

    public function update(Request $request, Post $post)
    {
        $this->authorize('update', $post);

        $request->validate([
            'title' => 'required',
            'content' => 'required',
        ]);

        $post->update($request->only('title', 'content'));

        // Handle AJAX
        if ($request->ajax()) {
            return response()->json([
                'success' => true,
                'title' => $post->title,
                'content' => $post->content,
            ]);
        }

        return redirect()->route('posts.show', $post)->with('success', 'Post updated successfully');
    }

    public function destroy(Post $post)
    {
        $this->authorize('delete', $post);

        $post->delete();

        if(request()->ajax()){
            return response()->json(['success' => true]);
        }

        return redirect()->route('posts.index')->with('success','Post deleted successfully');
    }
}
