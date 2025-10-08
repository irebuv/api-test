<?php

use App\Http\Controllers\AuthController;
use Illuminate\Support\Facades\Route;

Route::post('/register', [AuthController::class, 'register']);
Route::post('/login', [AuthController::class, 'login']);
Route::post('/logout', [AuthController::class, 'logout'])->middleware('auth:api');
Route::get('/me', [AuthController::class, 'me'])->middleware('auth:api');

Route::get('/test', function () {
    return response()->json([
        'message' => 'API работает в Laravel 12!',
        'status' => 'success',
        'timestamp' => now()
    ]);
});

Route::get('/posts', function () {
    $users = \Illuminate\Support\Facades\DB::table('users')->get();
    return response()->json($users);
});
