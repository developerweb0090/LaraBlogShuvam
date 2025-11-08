<?php

namespace App\Providers;
use Illuminate\Support\ServiceProvider;
use App\Models\Post;
use App\Models\Comment;
use App\Models\User;

class BlogServiceProvider extends ServiceProvider
{
    public function boot()
    {
        view()->composer('*', function ($view) {
            $view->with('stats', [
                'users' => User::count(),
                'posts' => Post::count(),
                'comments' => Comment::count(), 
            ]);
        });
    }
}

