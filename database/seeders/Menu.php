<?php

namespace Database\Seeders;

use Illuminate\Support\Str;
use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\DB;
use Illuminate\Database\Console\Seeds\WithoutModelEvents;

class Menu extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        // populate menus table with fake data 
        for ($i = 0; $i < 12; $i++) {
            DB::table('menus')->insert([
                'category' => Str::random(5),
                'price' => 200,
                'image' => '1.jpg',
                'title' => Str::random(5),
                'description' => Str::random(5) . ',' . Str::random(5) . '' . Str::random(5) . Str::random(5) . ',' . Str::random(5) . '' . Str::random(5),
            ]);
        }
    }
}
