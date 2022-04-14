<?php

use App\Http\Controllers\CartController;
use App\Http\Controllers\HomeController;
use App\Http\Controllers\OrderController;
use Illuminate\Support\Facades\Route;


Route::get('/', [HomeController::class, 'index'])->name('home');
Route::get('/cart', [CartController::class, 'index'])->name('cart');
Route::post('/cart-add', [CartController::class, 'add'])->name('cart.add');
Route::post('/order', [OrderController::class, 'order'])->name('order.add');
