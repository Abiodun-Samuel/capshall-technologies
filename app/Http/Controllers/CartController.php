<?php

namespace App\Http\Controllers;

use App\Models\Cart;
use Illuminate\Http\Request;

use function PHPUnit\Framework\isEmpty;

class CartController extends Controller
{
    public function index()
    {
        $carts = Cart::all();
        return view('cart', compact('carts'));
    }

    public function add(Request $request)
    {
        $cartItems = Cart::create([
            'menu_id' => $request->id,
            'menu_title' => $request->title,
            'menu_price' => $request->price,
            'menu_image' => $request->image,
        ]);

        return back()->with('status', "$request->title Menu has been added to your cart successfully");
    }
}
