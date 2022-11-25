<?php

namespace Database\Seeders;

use Illuminate\Database\Seeder;
use App\Models\Product;
use App\Models\ProductStock;
use DB, Str;

class ProductWithStockSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        for($count = 1; $count <= 100; $count++)
        {
            DB::beginTransaction();
           try{
                $product = Product::create([
                    'name' => Str::random(15),
                    'price' => rand(10, 100),
                ]);

                $product->stock()->create([
                    'quantity' => rand(10, 20),
                ]);

                DB::commit();

           }
           catch(\Exception $e)
           {
                DB::rollback();
                \Log::info($e->getMessage());
           }
        }
    }
}
