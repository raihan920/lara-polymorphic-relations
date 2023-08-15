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

//one of many
Route::get('oldest-image', function(){
    $user = User::find(4);
    $oldestImage = $user->oldestImage;
    if($oldestImage){
        echo "Oldest image of user id: {$oldestImage->id} => ".$oldestImage->url."<br>";
    }

    $post = Post::find(2);
    $oI = $post->oldestImage;
    if($oI){
        echo "Oldest image of post id: {$oI->id} => ". $oI->url."<br>";
    }
});

//most liked
Route::get('most-liked', function(){
    $user = User::find(2);
    $mostLiked = $user->bestImage;
    if($mostLiked){
        echo $mostLiked->url."<br>";
    }
});
