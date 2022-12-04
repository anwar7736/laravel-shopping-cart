<?php

use Illuminate\Support\Facades\Route;

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
    return view('welcome');
});


Route::group(['prefix'=> 'cart', 'as' => 'cart.'],function(){
    Route::resource('session', \App\Http\Controllers\Frontend\CartController::class);
    Route::resource('package', \App\Http\Controllers\Frontend\CartPackageController::class);
});

Route::resource('products', \App\Http\Controllers\Frontend\ProductController::class);

Route::group(['as' => 'checkout.', 'middleware'=>'auth'],function(){
    Route::post('session', [\App\Http\Controllers\Frontend\CheckoutController::class, 'checkout'])->name('session');
    Route::post('package', [\App\Http\Controllers\Frontend\CheckoutPackageController::class, 'checkout'])->name('package');
});

//Yajra Datatables with filter

#Export
Route::get('export-to-excel', [\App\Http\Controllers\DataTableController::class, 'ExportToExcel'])->name('excel.export');
Route::get('export-user-template', [\App\Http\Controllers\DataTableController::class, 'ExportUserTemplate'])->name('excel.template.export');
#Import
Route::post('import-user-list', [\App\Http\Controllers\DataTableController::class, 'UserImport'])->name('users.import');

Route::resource('user', \App\Http\Controllers\UserController::class);
Route::post('multiple-insert', [\App\Http\Controllers\UserController::class, 'multipleInsert'])->name('insert.multiple');

Route::post('multiple-delete', [\App\Http\Controllers\UserController::class, 'multipleDelete'])->name('delete.multiple');

Route::post('restore-data', [\App\Http\Controllers\UserController::class, 'multipleRestore'])->name('restore.multiple');

Route::post('user/update/{id}', [\App\Http\Controllers\UserController::class, 'update']);
Route::get('user/destroy/{id}', [\App\Http\Controllers\UserController::class, 'destroy']);

Route::get('file-upload', [\App\Http\Controllers\FileUploadController::class, 'index']);
Route::post('file/upload', [\App\Http\Controllers\FileUploadController::class, 'upload'])->name('upload.file');

Auth::routes();

Route::get('/home', [App\Http\Controllers\HomeController::class, 'index'])->name('home');





//Cache clear
Route::get('/clear-all', function(){
    \Artisan::call('cache:clear');
    \Artisan::call('route:clear');
    \Artisan::call('view:clear');
    \Artisan::call('config:clear');
    \Artisan::call('config:cache');
    session()->forget('lang');
    // dd("Application cache has been cleared!");
    return back();
    
})->name('clear.cache');
//Database backup
Route::get('/database-backup', function(){
    \Artisan::call('backup:clean');
    \Artisan::call('backup:run --only-files');
    // return response()->download(storage_path('app/Laravel/backup_'.date('Y-m-d')));
    return back();
    
})->name('backup.run');

Route::get('dom-pdf', function(){
    $pdf = \PDF::loadView('pdf', ['name' => 'Anwar']);
    return $pdf->download('myPDF.pdf');
});


//Facebook Login
Route::get('facebook/login', [\App\Http\Controllers\Auth\LoginController::class, 'facebook'])->name('login.facebook');
Route::get('facebook/callback', [\App\Http\Controllers\Auth\LoginController::class, 'facebookLogin']);

//Google Login
Route::get('google/login', [\App\Http\Controllers\Auth\LoginController::class, 'google'])->name('login.google');
Route::get('google/callback', [\App\Http\Controllers\Auth\LoginController::class, 'googleLogin']);

//Github Login
Route::get('github/login', [\App\Http\Controllers\Auth\LoginController::class, 'github'])->name('login.github');
Route::get('github/callback', [\App\Http\Controllers\Auth\LoginController::class, 'githubLogin']);

Route::get('upload-multiple', [\App\Http\Controllers\FileUploadController::class, 'viewFile']);
Route::post('upload-multiple', [\App\Http\Controllers\FileUploadController::class, 'uploadMultipleFile']);