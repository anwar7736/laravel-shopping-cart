<?php

namespace App\Http\Middleware;

use Closure;
use Illuminate\Http\Request;

class IsAllowed
{
    /**
     * Handle an incoming request.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \Closure(\Illuminate\Http\Request): (\Illuminate\Http\Response|\Illuminate\Http\RedirectResponse)  $next
     * @return \Illuminate\Http\Response|\Illuminate\Http\RedirectResponse
     */
    public function handle(Request $request, Closure $next)
    {
        $exists = \App\Models\ExamResult::where('user_id', \Auth::id())->first();
        if($exists)
        {
            echo '<h1 class="text-center mt-4" style="color:red">You have already taken this MCQ test</h1>';
            abort(404);
        }
        else return $next($request);
    }
}
