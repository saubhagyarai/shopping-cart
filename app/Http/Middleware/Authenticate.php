<?php

namespace App\Http\Middleware;

use Illuminate\Auth\Middleware\Authenticate as Middleware;
use Session;

class Authenticate extends Middleware
{
    /**
     * Get the path the user should be redirected to when they are not authenticated.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return string|null
     */
    protected function redirectTo($request)
    {
        if (!$request->expectsJson()) {
            // Get the url of checkout if it is redirected from checkout
            Session::put('oldUrl', $request->url());
            // dd(session()->get('oldUrl'));

            return route('user.signin');
        }
    }
}
