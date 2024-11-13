<?php
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Route;
use App\Http\Controllers\AnimalController;

Route::get('/animals/{name}', [AnimalController::class, 'listAnimal']);
Route::get('/animals', [AnimalController::class, 'listAnimal']);

?>