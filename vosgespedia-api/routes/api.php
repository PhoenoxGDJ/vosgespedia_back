<?php
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Route;
use App\Http\Controllers\AnimalController;
use App\Http\Controllers\TraceController;

Route::get('/animals', [AnimalController::class, 'listAnimal']);
Route::get('/animtrace', [AnimalController::class, 'getTraceFromId']);
Route::get('/traces', [TraceController::class, 'listTrace']);
Route::get('/traceanim', [TraceController::class, 'getAnimalFromId']);

?>