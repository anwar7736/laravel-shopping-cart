<?php
namespace App\Facades;

class Test {
    public static function appName()
    {
        return env('APP_NAME');
    }
    
    public static function appURL()
    {
        return env('APP_URL');
    }

    public static function currentTime()
    {
        return  date('d F, Y');
    }
}