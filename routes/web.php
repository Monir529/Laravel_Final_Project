<?php

use Illuminate\Support\Facades\Route;
use App\User;
use App\Notifications\usernotification;
/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| contains the "web" middleware group. Now create something great!
|
*/


Route::get('/', function () {
$user = user::find(1);
	User::find(1)->notify(new usernotification);
	
    return view('welcome');
});

//Route::get('/product','productcontroller@fetch');

Auth::routes();
Route::get('/home', 'HomeController@index')->name('home');



Route::get('/user/{id}','UserController@profile')->name('user.profile');

Route::get('/edit/user/','UserController@edit')->name('user.edit');
Route::post('/edit/user/','UserController@update');
Route::get('/search','HomeController@search');
Route::get('order/{id}','ordercontroller@order');
Route::get('/transection','ordercontroller@transection');

Route::get('/pdfview','ItemController@pdfview')->name('PDF_report');
Route::get('/pdf','ItemController@transection')->name('PDF');