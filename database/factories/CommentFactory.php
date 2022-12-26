<?php

namespace Database\Factories;

use Illuminate\Database\Eloquent\Factories\Factory;
use App\Models\{User, Post};

class CommentFactory extends Factory
{
    /**
     * Define the model's default state.
     *
     * @return array
     */
    public function definition()
    {
        return [
            'user_id' => User::all()->random()->id,
            'commentable_type' => Post::class,
            'commentable_id' => Post::all()->random()->id,
            'comment' => $this->faker->paragraph(),
        ];
    }
}
