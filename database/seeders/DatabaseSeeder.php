<?php

namespace Database\Seeders;

use Illuminate\Database\Seeder;
use DB;
class DatabaseSeeder extends Seeder
{
    /**
     * Seed the application's database.
     *
     * @return void
     */
    public function run()
    {
        // \App\Models\User::factory(10)->create();
        $this->call([PruductSeeder::class,]);
    }
}
class PruductSeeder extends Seeder
{
    /**
     * Seed the application's database.
     *
     */
    public function run()
    {
        for ($i=0; $i <10 ; $i++) { 
           DB::table('products')->insert([
            'product_name'=> 'San Pham '.$i,
            'product_price'=> 'gia San Pham '.$i,
            'product_brand_id'=> $i,
            'product_category_id'=> $i,
            'product_description'=> 'products_description San Pham '.$i,
            'product_image'=> 'San Pham '.$i,
            'product_date'=> date('Y-m-d')
           ]);
        }
    }
}