<?php

use Modules\Example\Entities\Example;

Route::prefix('example')->group(function() {
    Route::get('/', 'ExampleController@index');
    Route::get('/name', function(){
        $data['examples'] = Example::all();
       return view('example::index', $data);
    });
});
