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

    public function getAnimalsFromGenre(Request $request, string $arg = null)
    {
        if ($arg == null) {
            echo 'must have an argument, use it like {base_url}/genres/id or {base_url}/genres/name';
        } else {
            if (is_numeric($arg)) {
                /* $response = Categorie::where('categories.caid', '=', $arg)->limit(1)
                    ->leftJoin('trace_categories', 'categories.caid', '=', 'trace_categories.trca_caid')
                    ->leftJoin('traces', 'categories.caid', '=', 'trace_categories.trca_caid')->get(); */
                $response = Genre::where('genres.gid','=', $arg)
                ->leftJoin('anim_genres', 'genres.gid', '=', 'anim_genres.ag_gid')
                ->leftJoin('animals', 'ag_aid', '=', 'animals.anim_id')
                ->get();
            } else {
                $response = Genre::where('genres.genre_name', 'like', '%' . $arg . '%')
                    ->leftJoin('anim_genres', 'genres.gid', '=', 'anim_genres.ag_gid')
                    ->leftJoin('animals', 'ag_aid', '=', 'animals.anim_id')
                    ->get();
            }
        }
        return response()->json($response);
    }
}
