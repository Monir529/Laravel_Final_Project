<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class product extends Model
{
     protected $table='products';
    protected $fillable=['P_name','S_name','Area','price',];
}
