<?php

// use App\Http\Controllers\ProfileController;
use Illuminate\Support\Facades\Route;
use App\Http\Controllers\{
    Web\PostController, Web\CommentController,
    Admin\AdminController,Admin\AdminPostController,Admin\AdminUserController,
    Web\SocialController
};

// Route::get('/', function () {
//     return view('welcome');
// });

// Route::get('/dashboard', function () {
//     return view('dashboard');
// })->middleware(['auth', 'verified'])->name('dashboard');

// Route::middleware('auth')->group(function () {
//     Route::get('/profile', [ProfileController::class, 'edit'])->name('profile.edit');
//     Route::patch('/profile', [ProfileController::class, 'update'])->name('profile.update');
//     Route::delete('/profile', [ProfileController::class, 'destroy'])->name('profile.destroy');
// });

require __DIR__.'/auth.php';



Route::get('/', [PostController::class, 'index'])->name('home');

Route::middleware(['auth', 'LogUserActivity'])->group(function() {
    Route::resource('posts', PostController::class); 
    Route::post('/posts/{post}/comments', [CommentController::class, 'store'])->name('comments.store');
    Route::resource('comments', CommentController::class)->only(['update', 'destroy']);

});

//social login routes
Route::get('/auth/google', [SocialController::class, 'redirect'])->name('google.login');
Route::get('/auth/google/callback', [SocialController::class, 'callback']);

Route::get('auth/facebook', [SocialController::class, 'redirectToFacebook'])->name('facebook.login');
Route::get('auth/facebook/callback', [SocialController::class, 'handleFacebookCallback']);

//Admin Routes
Route::middleware(['auth','is_admin'])->prefix('admin')->name('admin.')->group(function() {
    Route::get('/dashboard', [AdminController::class, 'index'])->name('dashboard');

    Route::get('/users', [AdminUserController::class, 'index'])->name('users.index');
    // Route::get('/users/{user}/edit', [AdminUserController::class, 'edit'])->name('users.edit');
    // Route::put('/users/{user}', [AdminUserController::class, 'update'])->name('users.update');
    Route::delete('/users/{user}', [AdminUserController::class, 'destroy'])->name('users.destroy');

    Route::get('/posts', [AdminPostController::class, 'index'])->name('posts.index');
    // Route::get('/posts/{post}/edit', [AdminPostController::class, 'edit'])->name('posts.edit');
    // Route::put('/posts/{post}', [AdminPostController::class, 'update'])->name('posts.update');
    Route::delete('/posts/{post}', [AdminPostController::class, 'destroy'])->name('posts.destroy');
});

