<?php

use App\Http\Controllers\admin\adminloginController;
use App\Http\Controllers\admin\CatagoryController;
use App\Http\Controllers\admin\HomeController;
use App\Http\Controllers\admin\TempImagesController;
use Illuminate\Http\Request;
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
Route::group(['prefix' => 'admin'],function(){
    Route::group(['middleware'=>'admin.guest'],function(){
        Route::get('/login', [adminloginController::class, 'index'])->name('admin.login');
        Route::post('/authenticate', [adminloginController::class, 'authenticate'])->name('admin.authenticate');
    });

    Route::group(['middleware' => 'admin.auth'], function () {
        Route::get('/dashboard', [HomeController::class, 'index'])->name('admin.dashboard');
        Route::get('/logout', [HomeController::class, 'logout'])->name('admin.logout');

        //catagory route
        Route::get('/catagories', [CatagoryController::class, 'index'])->name('catagories.index');
        Route::get('/catagories/create', [CatagoryController::class, 'create'])->name('catagories.create');
        Route::post('/catagories', [CatagoryController::class, 'store'])->name('catagories.store');

        //temp-images

        Route::post('/upload-temp-image', [TempImagesController::class, 'create'])->name('temp-images.create');


        Route::get('getSlug',function(Request $request){
            if(!empty($request->title)){
                $slug = Str::slug($request->title);
            }

            return response()->json([
                'status'=>true,
                'slug'=> $slug
            ]);
        })->name('getSlug');
    });

   


});