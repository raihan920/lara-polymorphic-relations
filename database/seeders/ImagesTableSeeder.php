<?php

namespace Database\Seeders;

use App\Models\Image;
use App\Models\Post;
use App\Models\User;
use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;

class ImagesTableSeeder extends Seeder
{
    /**
     * Run the database seeds.
     */
    public function run(): void
    {
        Image::create([
            'url'=>'https://picsum.photos/200/300',
            'imageable_id'=>Post::find(19)->id,
            'imageable_type'=>Post::class
        ]);
        Image::create([
            'url'=>'https://picsum.photos/200/300',
            'imageable_id'=>Post::find(20)->id,
            'imageable_type'=>Post::class
        ]);
        Image::create([
            'url'=>'https://picsum.photos/200',
            'imageable_id'=>User::find(10)->id,
            'imageable_type'=>User::class
        ]);
    }
}
