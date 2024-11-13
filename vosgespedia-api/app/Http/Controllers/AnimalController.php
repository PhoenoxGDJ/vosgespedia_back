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
}
