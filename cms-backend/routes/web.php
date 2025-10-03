<?php

use Illuminate\Support\Facades\Route;
use App\Http\Controllers\AuthController;
if ($_SERVER['REQUEST_METHOD'] == 'OPTIONS') {
    header('Access-Control-Allow-Origin: http://localhost:3000');
    header('Access-Control-Allow-Methods: GET, POST, PUT, DELETE, OPTIONS');
    header('Access-Control-Allow-Headers: Content-Type, Authorization');
    exit(0);
}

header('Access-Control-Allow-Origin: http://localhost:3000');
header('Access-Control-Allow-Methods: GET, POST, PUT, DELETE, OPTIONS');
header('Access-Control-Allow-Headers: Content-Type, Authorization');

Route::get('/', function () {
    return view('welcome');
});

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
