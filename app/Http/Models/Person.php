<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class Mis_users extends Model
{
    protected $fileable = [
        'payrollID',
        'firstName',
        'lastName',
        'email',
        'active'
    ];

    protected $hidden = [
        'password', 'remember_token',
    ];
}
