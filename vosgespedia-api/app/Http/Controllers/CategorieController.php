<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Categorie;
use App\Models\Trace;

class CategorieController extends Controller
{
    public function getTracesFromCat(Request $request) {
        if (isset($request->id)) {
            /* $response = Categorie::where('categories.caid','=',$request->id)->limit(1)
            ->leftJoin('trace_categories', 'categories.caid', '=', 'trace_categories.trca_caid')
            ->leftJoin('traces', 'categories.caid', '=', 'trace_categories.trca_caid')->get(); */
            $response = Trace::leftJoin('trace_categories', 'traces.trid', '=', 'trace_categories.trca_trid')
            ->leftJoin('categories', 'trca_caid', '=', 'categories.caid')->get();
        }
        elseif (isset($request->name)) {
            $response = Categorie::where('categories.categorie_name','like','%'.$request->id.'%')->limit(1)
            ->leftJoin('trace_categories', 'categories.caid', '=', 'trace_categories.trca_caid')
            ->leftJoin('traces','categories.caid', '=', 'trace_categories.trca_caid')->get();
        }
        return response()->json($response);
    }

    public function getCategories() {
        $response = Categorie::all();
        return response()->json($response);
    }
}
