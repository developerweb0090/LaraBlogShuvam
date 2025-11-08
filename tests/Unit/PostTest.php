<?php

namespace Tests\Unit;

use Tests\TestCase;
use App\Models\User;
use App\Models\Post;
use App\Models\Comment;
use Illuminate\Foundation\Testing\RefreshDatabase;

class PostTest extends TestCase
{
    use RefreshDatabase;

    /** @test */
    public function a_post_belongs_to_a_user()
    {
        $user = User::factory()->create();
        $post = Post::factory()->create(['user_id' => $user->id]);

        $this->assertInstanceOf(User::class, $post->user);
        $this->assertEquals($user->id, $post->user->id);
    }

    /** @test */
    public function a_post_can_have_many_comments()
    {
        $post = Post::factory()->create();
        Comment::factory()->count(3)->create(['post_id' => $post->id]);

        $this->assertCount(3, $post->comments);
        $this->assertInstanceOf(Comment::class, $post->comments->first());
    }

    /** @test */
    public function a_post_has_required_fields()
    {
        $post = Post::factory()->create([
            'title' => 'Sample Post',
            'content' => 'This is a test post.'
        ]);

        $this->assertNotNull($post->title);
        $this->assertNotNull($post->content);
        $this->assertNotNull($post->user_id);
    }

    /** @test */
    public function it_can_be_soft_deleted()
    {
        $post = Post::factory()->create();
        $post->delete();

        $this->assertSoftDeleted('posts', ['id' => $post->id]);
    }

    /** @test */
    public function it_returns_the_correct_author_name()
    {
        // Optional: if you have a custom accessor like getAuthorNameAttribute()
        $user = User::factory()->create(['name' => 'John Doe']);
        $post = Post::factory()->create(['user_id' => $user->id]);

        $this->assertEquals('John Doe', $post->user->name);
    }
}

