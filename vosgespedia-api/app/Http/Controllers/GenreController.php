<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Genre;

class GenreController extends Controller
{
    public function listGenres(Request $request, string $arg = null)
    {
        $response = null;
        if ($arg == null) {
            $response = Genre::all();
        } else {
            if (is_numeric($arg)) {
                $response = Genre::where('gid', '=', $arg)->get();
            } else {
                $response = Genre::where('genre_name', 'like', '%' . $arg . '%')->get();
            }
        }

        return response()->json($response);
    }
}
