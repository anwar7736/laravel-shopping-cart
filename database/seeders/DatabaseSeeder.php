<?php

namespace Database\Seeders;

use Illuminate\Database\Seeder;
use App\Models\{User, Country, Phone, Image, Post, Category, Like, Comment};
class DatabaseSeeder extends Seeder
{
    /**
     * Seed the application's database.
     *
     * @return void
     */
    public function run()
    {
        //  User::factory(10)->create();
        //  Country::factory(10)->create();
        //  Phone::factory(20)->create();
        //  Category::factory(20)->create();
        //  Post::factory(20)->create();
         Like::factory(50)->create();
         Comment::factory(50)->create();

        $this->call([
            // ProductWithStockSeeder::class,
        ]);
    }
}
