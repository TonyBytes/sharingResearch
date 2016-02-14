<?php

namespace App;

use Illuminate\Database\Eloquent\Model;
class linkpreview extends Model
{

    protected $table = "linkpreview";
    public $timestamps = false;
    
    public function getComments(){
        return $this->hasMany('App\comments','linkId');
    }


}
