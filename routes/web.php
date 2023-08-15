<?php

use App\Models\Image;
use App\Models\Post;
use App\Models\User;
use Illuminate\Support\Facades\Route;

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider and all of them will
| be assigned to the "web" middleware group. Make something great!
|
*/

Route::get('/', function () {
    return view('welcome');
});

Route::get('users', function () {
    $users = User::get();
    foreach($users as $user){
        echo $user->name."<br>";
    }
});

//one to one polymorphic relation
Route::get('morph-one', function () {
    //find image from post
    $post = Post::find(3);
    $image = $post->image;
    dump($image);

    //find parent from image
    $image = Image::find(25);
    $imageable = $image->imageable;
    dump($imageable);
});

//one to many polymorphic relation
Route::get('morph-many', function () {
    //find image from post
    $post = Post::find(2);
    foreach($post->comments as $comment){
        echo $comment->body."<br>";
    }
});
