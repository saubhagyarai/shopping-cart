<?php

namespace App\Http\Controllers;

use App\Product;
use App\Cart;
use App\Order;
use Illuminate\Http\Request;
use Auth;
use Session;
use Stripe\Charge;
use Stripe\Stripe;

class ProductController extends Controller
{
    public function getIndex()
    {
        $products = Product::all();
        // return view('shop.index', ['products' => $products]);
        return view('shop.index')->with('products', $products);
    }

    public function getAddToCart(Request $request, $id)
    {
        // Find the product 
        $product = Product::find($id);
        // if already has old session then get else null
        $oldCart = Session::has('cart') ? Session::get('cart') : null;
        // create new cart
        $cart = new Cart($oldCart);
        // call the add function   
        $cart->add($product, $product->id);
        // dd($cart);
        // create a session cart and assign value from $cart
        $request->session()->put('cart', $cart);
        // die dump session
        // dd($request->session()->get('cart'));
        // return to index page
        return redirect()->route('product.index');
    }

    public function getReduceByOne($id)
    {
        // if already has old session then get else null

        $oldCart = Session::has('cart') ? Session::get('cart') : null;
        // create new cart
        $cart = new Cart($oldCart);
        // call the reducebyone function   
        $cart->reduceByOne($id);
        // dd($cart);
        // Session::put('cart', $cart);
        if (count($cart->items) > 0) {
            Session::put('cart', $cart);
        } else {
            Session::forget('cart');
        }
        return redirect()->route('product.shoppingCart');
    }


    public function getRemoveItem($id)
    {
        // if already has old session then get else null

        $oldCart = Session::has('cart') ? Session::get('cart') : null;
        // create new cart
        $cart = new Cart($oldCart);

        $cart->removeItem($id);

        if (count($cart->items) > 0) {
            Session::put('cart', $cart);
        } else {
            Session::forget('cart');
        }

        return redirect()->route('product.shoppingCart');
    }
    public function getCart()
    {
        // id doesnot have cart
        if (!Session::has('cart')) {
            // return null
            // return view('shop.shopping-cart', ['products' => null]);
            return view('shop.shopping-cart');
        }
        // assign old cart
        $oldCart = Session::get('cart');
        // 
        $cart = new Cart($oldCart);
        return view('shop.shopping-cart', ['products' => $cart->items, 'totalPrice' => $cart->totalPrice]);
        // dd($cart);
    }

    public function getCheckout()
    {
        // if doesnot have cart
        if (!Session::has('cart')) {
            // return null
            // return view('shop.shopping-cart', ['products' => null]);
            return view('shop.shopping-cart');
        }

        $oldCart = Session::get('cart');
        $cart = new Cart($oldCart);
        $total = $cart->totalPrice;
        return view('shop.checkout')->with('total', $total);
    }

    public function postCheckout(Request $request)
    {
        // if doesnot have cart
        if (!Session::has('cart')) {
            // return null
            // return view('shop.shopping-cart', ['products' => null]);
            return redirect()->route('shop.shopping-cart');
        }

        $oldCart = Session::get('cart');
        $cart = new Cart($oldCart);

        Stripe::setApiKey('sk_test_ODd8MeyqFeFjqmK3vE9VJ7Yi00bGjNCqjJ');

        try {
            $charge = Charge::Create(array(
                "amount" => $cart->totalPrice * 100,
                "currency" => "usd",
                // "source" => $request->input('stripeToken'),
                "source" => "tok_mastercard",

                "description" => " Test Charge for test@example.com"
            ));
            $order = new Order();
            // convert the whole object in string and unserialize later if needed
            $order->cart = serialize($cart);
            $order->address = $request->address;
            $order->name = $request->name;

            $order->payment_id = $charge->id;

            Auth::user()->orders()->save($order);
        } catch (\Exception $e) {
            return redirect()->route('checkout')->with('error', $e->getMessage());
        }

        Session::forget('cart');
        return redirect()->route('product.index')->with('success', 'Successfully purchased.');
    }
}
