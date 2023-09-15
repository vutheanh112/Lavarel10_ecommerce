<?php

namespace App\Http\Controllers\admin;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;

class SubCatagoryController extends Controller
{
    public function create(){
        return view('admin.sub_catagory.create');
    }
}
