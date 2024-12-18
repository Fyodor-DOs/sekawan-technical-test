<?php

use App\Http\Controllers\Auth\AuthController;
use App\Http\Controllers\DashboardController;
use App\Http\Controllers\LogActivityController;
use App\Http\Controllers\PasswordController;
use App\Http\Controllers\ProfileController;
use App\Http\Controllers\TransactionController;
use App\Http\Controllers\VehicleController;
use Illuminate\Support\Facades\Route;
use Spatie\Permission\Models\Role;

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider and all of them will
| be assigned to the "web" middleware group. Make something great!
|
*/

Route::get('/', [AuthController::class, 'showFormLogin']);
Route::get('/login', [AuthController::class, 'showFormLogin'])->name('login')->middleware('guest');
Route::post('/login', [AuthController::class, 'authenticate']);
Route::post('/logout', [AuthController::class, 'logout']);

Route::controller(App\Http\Controllers\Auth\AuthController::class)->group(function () {
    Route::get('/register', 'showFormRegister')->middleware('guest');
    Route::post('/register/account', 'register');
});

Route::group(['middleware' => ['auth']], function () {
    Route::get('/dashboard', [DashboardController::class, 'index']);

    Route::get('/profile', [ProfileController::class, 'edit'])->name('user.profile');
    Route::put('/users/{user}', [ProfileController::class, 'update'])->name('users.update');
    Route::get('/profile/password', [PasswordController::class, 'edit']);
    Route::patch('/profile/password', [PasswordController::class, 'update'])->name('password.update');

});
