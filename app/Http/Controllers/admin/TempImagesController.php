<?php

namespace App\Http\Controllers\admin;

use App\Http\Controllers\Controller;
use App\Models\Tempimage;
use Illuminate\Http\Request;

class TempImagesController extends Controller
{
    public function create(Request $request){
        $image = $request->image;

        if(!empty($image)){
            $ext = $image->getClientOriginalExtension();
            $newName=time().'.'.$ext;

            $tempImage= new Tempimage();
            $tempImage -> name = $newName;
            $tempImage ->save();

            $image->move(public_path().'/temp',$newName);

            return response()->json([
                'status'=>true,
                'image_id'=>$tempImage->id,
                'messages' => 'image uploaded successfully'
            ]);
        }
    }
}
