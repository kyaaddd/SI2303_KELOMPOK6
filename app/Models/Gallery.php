<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Gallery extends Model
{
    // app/Models/Gallery.php
    protected $fillable = ['title', 'slug', 'image_path'];

    public function getRouteKeyName()
    {
        return 'slug';
    }

}
