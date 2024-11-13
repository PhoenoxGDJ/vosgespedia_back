<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\Factories\HasFactory;

class Animal extends Model
{
    use HasFactory;
    protected $fillable = ['anim_name','anim_poids','anim_taille','anim_habitat','anim_alim','anim_rarity'];
}
