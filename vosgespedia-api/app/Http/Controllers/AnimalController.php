<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Animal;

class AnimalController extends Controller
{
    public function listAnimal(Request $request) {
        $response = null;
        if (isset($request->name)) {
            $response = Animal::where('anim_name','LIKE','%'.$request->name.'%');
        }
        elseif (isset($request->id)) {
            $response = Animal::where('anim_id','=',$request->id);
        }
        else {
            $response = Animal::all();
        }
        return response()->json($response);
    }

    public function getTraceFromId(Request $request) {
        $response = null;
        if (isset($request->id)) {
            $response = Animal::where('anim_id','=',$request->id)
            ->leftJoin('anim_traces', function ($join) {
                $join->on('animals.anim_id', '=', 'anim_traces.atr_aid');
            })
            ->leftJoin('traces', function ($join) {
                $join->on('anim_traces.atr_trid', '=', 'traces.trid');
            })->get();
        }
        return response()->json($response);
    }
}
