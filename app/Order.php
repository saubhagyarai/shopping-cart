<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Order extends Model
{
    // order belongs to user
    public function user()
    {
        return $this->belongsTo('App\User');
    }
}
