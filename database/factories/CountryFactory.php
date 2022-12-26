<?php

namespace Database\Factories;

use Illuminate\Database\Eloquent\Factories\Factory;

class CountryFactory extends Factory
{

    public function definition()
    {
        return [
            'code' => rand(1111,9999),
            'name' => $this->faker->country(),
        ];
    }
}
