<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Trace;

class TraceController extends Controller
{
    public function listTrace(Request $request) {
        $response = null;
        if (isset($request->name)) {
            $response = Trace::where('trace_name','LIKE','%'.$request->name.'%');
        }
        elseif (isset($request->id)) {
            $response = Trace::where('trid','=',$request->id);
        }
        else {
            $response = Trace::all();
        }
        return response()->json($response);
    }

    public function getAnimalFromId(Request $request) {
        $response = null;
        if (isset($request->id)) {
            $response = Trace::where('trid','=',$request->id)
            ->leftJoin('anim_traces', function ($join) {
                $join->on('traces.trid', '=', 'anim_traces.atr_trid');
            })
            ->leftJoin('animals', function ($join) {
                $join->on('anim_traces.atr_aid', '=', 'animals.anim_id');
            })->get();
        }
        return response()->json($response);
    }
}
