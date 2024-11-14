<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Categorie;

class CategorieController extends Controller
{
    public function getTracesFromCat(Request $request) {
        if (isset($request->id)) {
            Categorie::where('categories.caid','=',$request->id)
            ->leftJoin('trace_categories', function ($join) {
                $join->on('categories.caid', '=', 'trace_categories.trca_caid');
            })
            ->leftJoin('traces', function ($join) {
                $join->on('categories.caid', '=', 'trace_categories.trca_caid');
            })
        }
    }
}
