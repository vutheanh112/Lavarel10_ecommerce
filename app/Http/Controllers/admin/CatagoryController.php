<?php

namespace App\Http\Controllers\admin;

use App\Http\Controllers\Controller;
use App\Models\catagory;
use App\Models\Tempimage;
use Illuminate\Support\Facades\Validator;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\File;
use Image;

use function Laravel\Prompts\error;

class CatagoryController extends Controller
{
    public function index(Request $request){
    $catagories = catagory::latest();
    //search*/
    if(!empty($request ->get('keyword'))){
        $catagories=$catagories->where('name','like','%'. $request->get('keyword').'%');
    }
        //ds list catagory
     $catagories = $catagories->paginate(10);
     $data['catagories'] = $catagories;
     return view('admin.catagory.list',compact('catagories'));
    }

    public function create()
    {

      return view('admin.catagory.create');

    }

    public function store(Request $request)
    {
     $validator = Validator::make($request->all(),[
        "name" => 'required',
        "slug" => 'required|unique:catagories',
     ]);

     if($validator-> passes()){
        $category = new catagory();
        $category->name=$request->name;
        $category->slug = $request->slug;
        $category->status = $request->status;
        $category->save();

            //save Images
            if (!empty($request->image_id)) {
                $tempImage = Tempimage::find($request->image_id);
                $extArray = explode('.', $tempImage->name);
                $ext = last($extArray);

                $newImagesName = $category->id . '.' . $ext;
                $sPath = public_path().'/temp/' . $tempImage->name;
                $dPath = public_path(). '/uploads/category/'.$newImagesName;
                File::copy($sPath,$dPath);
                $category->images = $newImagesName;
                $category->save();
            }
       
            $request->session()->flash('success', 'Catagory added successfull');

            return response()->json([
                'status' => true,
                'message' => 'Catagory add successfull'
            ]);

     }else{
        return response()->json([
            'status' => false,
            'errors' => $validator->errors()
        ]);
     }
    }

    public function edit($categoryId, Request $request)
    {
        $category = catagory::find($categoryId);
        if(empty($category)){
            return redirect()->route('catagories.index');
        }
        
        return view('admin.catagory.edit',compact('category'));
    }

    public function update($categoryId, Request $request)
    {
        $category = catagory::find($categoryId);

        if (empty($category)) {
            return response()-> json([
                'status'=>false,
                'notFound'=>true,
                'message'=>'Category not found'
            ]);
        }

        $validator = Validator::make($request->all(), [
            "name" => 'required',
            "slug" => 'required|unique:catagories,slug,'. $category->id.',id',
        ]);

        if ($validator->passes()) {

            $category->name = $request->name;
            $category->slug = $request->slug;
            $category->status = $request->status;
            $category->save();

            $oldImages = $category->image;

            //save Images
            if (!empty($request->image_id)) {
                $tempImage = Tempimage::find($request->image_id);
                $extArray = explode('.', $tempImage->name);
                $ext = last($extArray);

                $newImagesName = $category->id.'-'.time() . '.' . $ext;
                $sPath = public_path() . '/temp/' . $tempImage->name;
                $dPath = public_path() . '/uploads/category/' . $newImagesName;
                File::copy($sPath, $dPath);
                $category->images = $newImagesName;
                $category->save();

                //delete old images here
                file::delete(public_path().'/uploads/catagory/'.$oldImages);

            }

            $request->session()->flash('success', 'Catagory updated successfull');

            return response()->json([
                'status' => true,
                'message' => 'Catagory add successfull'
            ]);
        } else {
            return response()->json([
                'status' => false,
                'errors' => $validator->errors()
            ]);
        }

    }
    public function destroy($categoryId, Request $request){
        $category = catagory::find($categoryId);
        if(empty($category)){
            $request->session()->flash('error', 'Catagory  not found');
            return response()->json([
                'status' => true,
                'message' => 'Catagory  not found'
            ]);
            //return redirect()->route('catagories.index');
        }
        //delete old images here
        file::delete(public_path() . '/uploads/catagory/' . $category->image);

        $category->delete();

        $request->session()->flash('success', 'Catagory deleted successfull');

        return response()->json([
            'status' => true,
            'message' => 'Catagory  deleted successfull' 
        ]);
       
    }
    
}
