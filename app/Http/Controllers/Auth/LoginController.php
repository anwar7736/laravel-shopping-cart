<?php

namespace App\Http\Controllers\Auth;

use App\Http\Controllers\Controller;
use App\Providers\RouteServiceProvider;
use Illuminate\Foundation\Auth\AuthenticatesUsers;
use Laravel\Socialite\Facades\Socialite;
use App\Models\User;
use Auth;
class LoginController extends Controller
{
    /*
    |--------------------------------------------------------------------------
    | Login Controller
    |--------------------------------------------------------------------------
    |
    | This controller handles authenticating users for the application and
    | redirecting them to your home screen. The controller uses a trait
    | to conveniently provide its functionality to your applications.
    |
    */

    use AuthenticatesUsers;

    /**
     * Where to redirect users after login.
     *
     * @var string
     */
    protected $redirectTo = RouteServiceProvider::HOME;

    /**
     * Create a new controller instance.
     *
     * @return void
     */
    public function __construct()
    {
        $this->middleware('guest')->except('logout');
    }

    //Login with facebook
    public function facebook()
    {
        return Socialite::driver('facebook')->redirect();
    }    
    
    public function facebookLogin()
    {
        $user = Socialite::driver('facebook')->user();
        $this->updateOrCreate($user);
    }
    
    //Login with google
    public function google()
    {
        return Socialite::driver('google')->redirect();
    }

    public function googleLogin()
    {
        $user = Socialite::driver('google')->user();
        $this->updateOrCreate($user);
    }

    //Login with github
    public function github()
    {
        return Socialite::driver('github')->redirect();
    }

    public function githubLogin()
    {
        $user = Socialite::driver('github')->user();
        $this->AuthLogin($user);
    }

    public function AuthLogin($data)
    {
        $user = User::updateOrCreate(
            ['email' => $data->email],
            ['name' => $data->name, 'image' => $data->avatar]
        );

        Auth::login($user);

        return redirect()->route('home');
    }
}
