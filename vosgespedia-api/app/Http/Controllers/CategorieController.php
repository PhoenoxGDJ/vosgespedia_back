<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Categorie;
use App\Models\Trace;

class CategorieController extends Controller
{
    public function getTracesFromCat(Request $request, string $arg = null)
    {
        if ($arg == null) {
            echo 'must have an argument, use it like {base_url}/categories/id or {base_url}/categories/name';
        } else {
            if (is_numeric($arg)) {
                /* $response = Categorie::where('categories.caid', '=', $arg)->limit(1)
                    ->leftJoin('trace_categories', 'categories.caid', '=', 'trace_categories.trca_caid')
                    ->leftJoin('traces', 'categories.caid', '=', 'trace_categories.trca_caid')->get(); */
                $response = Categorie::where('categories.caid','=', $arg)
                ->leftJoin('trace_categories', 'categories.caid', '=', 'trace_categories.trca_caid')
                ->leftJoin('traces', 'trca_trid', '=', 'traces.trid')
                ->get();
            } else {
                $response = Categorie::where('categories.categorie_name', 'like', '%' . $arg . '%')
                    ->leftJoin('trace_categories', 'categories.caid', '=', 'trace_categories.trca_caid')
                    ->leftJoin('traces', 'traces.trid', '=', 'trace_categories.trca_trid')
                    ->get();
            }
        }
        return response()->json($response);
    }

    public function listCategories(Request $request, string $arg = null)
    {
        $response = null;
        if ($arg == null) {
            $response = Categorie::all();
        } else {
            if (is_numeric($arg)) {
                $response = Categorie::where('caid', '=', $arg)->get();
            } else {
                $response = Categorie::where('categorie_name', 'like', '%' . $arg . '%')->get();
            }
        }

        return response()->json($response);
    }
}
