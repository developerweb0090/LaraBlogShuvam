<?php

namespace App\Http\Controllers\Web;
use Auth;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;

use Laravel\Socialite\Facades\Socialite;
use App\Models\User;
use Exception;


class SocialController extends Controller
{
    public function redirect() {
        return Socialite::driver('google')->redirect();
    }

    public function callback()
    {
        
        $googleUser = Socialite::driver('google')->user();
        // Find or create user
        $user = User::updateOrCreate(
            ['email' => $googleUser->getEmail()],
            [
                'name' => $googleUser->getName(),
                'google_id' => $googleUser->getId(),
                'password' => bcrypt(str()->random(12)), // random password
            ]
        );
        Auth::login($user);
        return redirect()->route('home');
    }

    // Redirect to Facebook
    public function redirectToFacebook()
    {
        return Socialite::driver('facebook')->redirect();
    }

    // Handle callback from Facebook
    public function handleFacebookCallback()
    {
        try {
            $facebookUser = Socialite::driver('facebook')->user();

            // Find or create user
            $user = User::updateOrCreate(
                ['email' => $facebookUser->getEmail()],
                [
                    'name' => $facebookUser->getName(),
                    'facebook_id' => $facebookUser->getId(),
                    'password' => bcrypt(str()->random(12)),
                ]
            );

            Auth::login($user);

            return redirect()->route('home');
        } catch (Exception $e) {
            return redirect('/login')->withErrors('Facebook login failed: '.$e->getMessage());
        }
    }
}
