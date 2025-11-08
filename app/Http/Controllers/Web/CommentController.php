<?php

namespace App\Http\Controllers\Web;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Models\Post;
use App\Models\Comment;

class CommentController extends Controller
{
    public function store(Request $request, Post $post)
    {
        $request->validate(['content' => 'required']);

        $post->comments()->create([
            'user_id' => auth()->id(),
            'content' => $request->content,
        ]);

        return back()->with('success', 'Comment added');
    }

    public function update(Request $request, Comment $comment)
    {
        $this->authorize('update', $comment);

        $request->validate(['content' => 'required']);
        $comment->update(['content' => $request->content]);

        if ($request->ajax()) {
            return response()->json([
                'success' => true,
                'content' => $comment->content,
                'comment_id' => $comment->id,
            ]);
        }

        return back()->with('success', 'Comment updated');
    }

    public function destroy(Comment $comment)
    {
        $this->authorize('delete', $comment);
    
        $comment->delete();
    
        if(request()->ajax()){
            return response()->json(['success' => true]);
        }
    
        return back()->with('success', 'Comment deleted successfully');
    }
}


