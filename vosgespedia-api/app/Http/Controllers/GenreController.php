<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Genre;

class GenreController extends Controller
{
    public function listGenres(Request $request) {
        $response = null;
        if (isset($request->name)) {
            $response = Genre::where('genre_name','like','%' . $request->name . '%')->get();
        }
        elseif (isset($request->id)) {
            $response = Genre::where('gid','=',$request->id)->get();
        }
        else {
            $response = Genre::all();
        }
        return response()->json($response);
    }
}
