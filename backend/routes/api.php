<?php

use App\Http\Controllers\Api\V1\DogController;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Route;

/*
|--------------------------------------------------------------------------
| API Routes
|--------------------------------------------------------------------------
|
| Here is where you can register API routes for your application. These
| routes are loaded by the RouteServiceProvider and all of them will
| be assigned to the "api" middleware group. Make something great!
|
*/

Route::middleware('auth:sanctum')->get('/user', function (Request $request) {
    return $request->user();
});

Route::get('dogs/all', [DogController::class, 'getAll']);
Route::post('dogs/store', [DogController::class, 'store']);
Route::delete('dogs/{dog}', [DogController::class, 'destroy']);