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
    return redirect()->route('products.index');
});

Route::group(['prefix'=> 'cart', 'as' => 'cart.'],function(){
    Route::resource('session', \App\Http\Controllers\Frontend\CartController::class);
    Route::resource('package', \App\Http\Controllers\Frontend\CartPackageController::class);
});

Route::resource('products', \App\Http\Controllers\Frontend\ProductController::class);

Route::group(['as' => 'checkout.', ],function(){
    Route::post('session', [\App\Http\Controllers\Frontend\CheckoutController::class, 'checkout'])->name('session');
    Route::post('package', [\App\Http\Controllers\Frontend\CheckoutPackageController::class, 'checkout'])->name('package');
});

//Yajra Datatables with filter
Route::get('data-tables', [\App\Http\Controllers\DataTableController::class, 'viewAll'])->name('data-table.show');

#Export
Route::get('export-to-excel', [\App\Http\Controllers\DataTableController::class, 'ExportToExcel'])->name('excel.export');
Route::get('export-user-template', [\App\Http\Controllers\DataTableController::class, 'ExportUserTemplate'])->name('excel.template.export');
#Import
Route::post('import-user-list', [\App\Http\Controllers\DataTableController::class, 'UserImport'])->name('users.import');