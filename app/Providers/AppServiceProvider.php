<?php

namespace App\Providers;

use Illuminate\Support\ServiceProvider;
use Illuminate\Database\Eloquent\Relations\Relation;

class AppServiceProvider extends ServiceProvider
{
    /**
     * Register any application services.
     *
     * @return void
     */
    public function register()
    {
        //
    }

    /**
     * Bootstrap any application services.
     *
     * @return void
     */
    public function boot()
    {
        Relation::enforceMorphMap([
        'users' => 'App\Models\User',
        'products' => 'App\Models\Product',
        'categories' => 'App\Models\Category',
        'posts' => 'App\Models\Post',
        'likes' => 'App\Models\Like',
        'comments' => 'App\Models\Comment',
        ]);
    }
}
