<?php

namespace Database\Factories;

use Illuminate\Database\Eloquent\Factories\Factory;

class ImageFactory extends Factory
{
    /**
     * Define the model's default state.
     *
     * @return array
     */
    public function definition()
    {
        $imageable = $this->imageable();

        return [
            'image_url' => 'https://source.unsplash.com/random/200x200?sig='.rand(1,50),
            'imageable_id' => rand(1,20),
            'imageable_type' => $imageable,
        ];
    }

    public function imageable()
    {
        return $this->faker->randomElement([
            \App\Models\User::class,
            \App\Models\Product::class,
        ]);
    }
}
