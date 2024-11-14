<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Animal;

class AnimalController extends Controller
{
    public function listAnimal(Request $request) {
        $response = null;
        if (isset($name)) {
            $response = Animal::where('anim_name','LIKE','%'.$name.'%');
        }
        else {
            $response = Animal::all();
        }
        return response()->json($response);
    }

    public function getTraceFromId(Request $request) {
        if (isset($id)) {
            $response = Animal::where('anim_id','=',$id)
            ->leftJoin('anim_traces', function ($join) {
                $join->on('animals.id', '=', 'anim_traces.atr_anim_id');
            })
            ->leftJoin('traces', function ($join) {
                $join->on('anim_traces.atr_trid', '=', 'traces.trid');
            })->get();
            return response()->json($response);
        }
    }
}
