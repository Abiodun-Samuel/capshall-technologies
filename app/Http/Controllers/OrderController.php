<?php

namespace App\Http\Controllers;

use App\Models\Cart;
use App\Models\Order;
use Illuminate\Http\Request;

class OrderController extends Controller
{
    public function order()
    {
        $carts = Cart::all();
        Order::create([
            'orderItems' => json_encode($carts),
        ]);
        Cart::whereNotNull('id')->delete();
        return back()->with('status', "Your order was created successfully");
    }
}
