<?php

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

// Route::get('/', function () {
//     return view('welcome');
// });

//Route for file upload-Download system..this is not for shopping cart project..
Route::get('viewfile', 'DownloadController@index')->name('viewfile');
Route::get('upload', 'DownloadController@showUploadForm')->name('upload');
Route::post('store', 'DownloadController@store');
Route::get('download/{id}','DownloadController@download');
//------------------------------------------------------------------------------

//Shopping cart projects Routes
Route::get('/','FrontController@index')->name('home');
Route::get('shirts', 'FrontController@shirts')->name('shirts');
Route::get('shirt', 'FrontController@shirt')->name('shirt');
Auth::routes();
Route::get('/logout','Auth\LoginController@logout');

Route::get('/home', 'HomeController@index');
Route::resource('/cart', 'CartController');
Route::get('/cart/add-item/{id}', 'CartController@addItem')->name('cart.addItem');

//admin route group
Route::group(['prefix'=>'admin', 'middleware'=>['auth','admin']], function(){
	
	Route::post('toggledeliver/{orderId}', 'OrderController@toggleDeliver')->name('toggle.deliver');

	Route::get('/', function(){
		return view('admin.index');
	})->name('admin.index');

	Route::resource('product', 'ProductsController');
	Route::resource('category', 'CategoriesController');

	Route::get('orders/{type?}', 'OrderController@orders');
});

//checkout route group
Route::group(['middleware'=>'auth'], function(){
Route::get('shipping-info', 'CheckoutController@shipping')->name('checkout.shipping');

});
// Route::get('checkout', 'CheckoutController@step1');
Route::resource('address', 'AddressController');
Route::get('payment', 'CheckoutController@payment')->name('checkout.payment');
Route::post('store-payment', 'CheckoutController@storePayment')->name('payment.store');







