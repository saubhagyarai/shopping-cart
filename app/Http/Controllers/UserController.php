<?php

namespace App\Http\Controllers;

use App\User;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Session;

class UserController extends Controller
{
    public function getSignup()
    {
        return view('user.signup');
    }

    public function postSignup(Request $request)
    {
        $this->validate($request, [
            'email' => 'email|required|unique:users',
            'password' => 'required|min:4'
        ]);

        $user = new User([
            'email' => $request->email,
            'password' => bcrypt($request->password)
        ]);

        $user->save();

        Auth::login($user);
        // If has oldurl set in session
        if (Session::has('oldUrl')) {
            $oldUrl = Session::get('oldUrl');
            // Forget the session
            Session::forget('oldUrl');
            // redirect ot the oldurl path
            return redirect()->to($oldUrl);
        }

        return redirect()->route('user.profile');
    }



    public function getSignin()
    {
        return view('user.signin');
    }

    public function postSignin(Request $request)
    {
        $this->validate($request, [
            'email' => 'email|required',
            'password' => 'required|min:4'
        ]);

        if (Auth::attempt(['email' => $request->email, 'password' => $request->password])) {
            // If has oldurl set in session
            if (Session::has('oldUrl')) {
                $oldUrl = Session::get('oldUrl');
                // Forget the session
                Session::forget('oldUrl');
                // redirect ot the oldurl path
                return redirect()->to($oldUrl);
            }
            return redirect()->route('user.profile');
        }

        return redirect()->back();
    }


    public function getProfile()
    {
        //fetch currently login user and fetch the orders of that user
        $orders = Auth::user()->orders;
        // dd($order);
        $orders->transform(function ($order, $key) {
            $order->cart = unserialize($order->cart);
            return $order;
        });

        return view('user.profile')->with('orders', $orders);
    }

    public function getLogout()
    {
        Auth::logout();
        return redirect()->route('user.signin');
    }
}
