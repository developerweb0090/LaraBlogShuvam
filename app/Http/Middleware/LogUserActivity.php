<?php

namespace App\Http\Middleware;

use Closure;
use Illuminate\Http\Request;
use Symfony\Component\HttpFoundation\Response;
use Illuminate\Support\Facades\Log;
use App\Models\UserActivity;


class LogUserActivity
{
    /**
     * Handle an incoming request.
     *
     * @param  \Closure(\Illuminate\Http\Request): (\Symfony\Component\HttpFoundation\Response)  $next
     */
    public function handle($request, Closure $next)
    {
        if(auth()->check()) {
            UserActivity::create([
                'user_id' => auth()->user()->id,
                'email'   => auth()->user()->email,
                'path'    => $request->path(),
            ]);
            
        }
        return $next($request);
    }
}
