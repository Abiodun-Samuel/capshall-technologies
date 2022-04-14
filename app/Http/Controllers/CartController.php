<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

class CartController extends Controller
{
    public function index()
    {
        return view('cart');
    }

    public function add(Request $request)
    {
        // dd($request->all());
        return back()->with('status', "Menu has been added to your cart successfully");
    }
}
