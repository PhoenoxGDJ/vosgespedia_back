<?php
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Route;
use App\Http\Controllers\AnimalController;
use App\Http\Controllers\TraceController;
use App\Http\Controllers\CategorieController;
use App\Http\Controllers\GenreController;
use Illuminate\Http\Middleware\HandleCors;

Route::get('/animals', [AnimalController::class, 'listAnimal'])->middleware(HandleCors::class);
Route::get('/animals/{arg}', [AnimalController::class, 'listAnimal'])->middleware(HandleCors::class);

Route::get('/animtrace', [AnimalController::class, 'getTraceFromId'])->middleware(HandleCors::class);

Route::get('/traces', [TraceController::class, 'listTrace'])->middleware(HandleCors::class);
Route::get('/traces/{arg}', [TraceController::class, 'listTrace'])->middleware(HandleCors::class);

Route::get('/traceanim', [TraceController::class, 'getAnimalFromId'])->middleware(HandleCors::class);

Route::get('/cattr/{arg}', [CategorieController::class, 'getTracesFromCat'])->middleware(HandleCors::class);
Route::get('/categories', [CategorieController::class, 'listCategories'])->middleware(HandleCors::class);
Route::get('/categories/{arg}', [CategorieController::class, 'listCategories'])->middleware(HandleCors::class);

Route::get('/genres', [GenreController::class, 'listGenres'])->middleware(HandleCors::class);
Route::get('/genres/{arg}', [GenreController::class, 'listGenres'])->middleware(HandleCors::class);

?>