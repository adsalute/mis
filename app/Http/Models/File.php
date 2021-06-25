<?php

namespace App\Models ;

use Illuminate\Database\Eloquent\Model;


class File extends Model
{
    //
    protected $fillable = [
        'fromPerson',
        'toPerson',
        'topic',
        'msg',
        'fileName',
        'filePath'

    ];

     public function setFilenamesAttribute($value)

    {
        $this->attributes['fileName'] = json_encode($value);

    } 

}
