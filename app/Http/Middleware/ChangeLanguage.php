<?php

namespace App\Http\Middleware;

use Closure;
use Illuminate\Http\Request;

class ChangeLanguage
{

    public function handle(Request $request, Closure $next)
    {
        if($request->query('lang'))
        {
            session()->put('lang', $request->query('lang')); 
        }

        app()->setLocale(session('lang'));

        return $next($request);
    }
}
