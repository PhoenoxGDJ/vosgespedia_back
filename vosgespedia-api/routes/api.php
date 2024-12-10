<?php
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Route;
use App\Http\Controllers\AnimalController;
use App\Http\Controllers\TraceController;
use App\Http\Controllers\CategorieController;
use App\Http\Controllers\GenreController;

Route::get('/animals', [AnimalController::class, 'listAnimal']);
Route::get('/animtrace', [AnimalController::class, 'getTraceFromId']);
Route::get('/traces', [TraceController::class, 'listTrace']);
Route::get('/traceanim', [TraceController::class, 'getAnimalFromId']);
Route::get('/cattr', [CategorieController::class, 'getTracesFromCat']);
Route::get('/categories', [CategorieController::class, 'listCategories']);
Route::get('/categories', [GenreController::class, 'listGenres']);

?>