<?php

namespace App\Http\Controllers\admin;

use App\Http\Controllers\Controller;
use App\Models\catagory;
use App\Models\SubCategory;
use Illuminate\Http\Request;
use App\Models\Tempimage;
use Illuminate\Support\Facades\Validator;
use Illuminate\Support\Facades\File;
class SubCatagoryController extends Controller

{

    public function index(Request $request)
    {
        $subCatagories = SubCategory::select('sub_categories.*', 'catagories.name as catagoryName')
        ->latest('sub_categories.id') 
        -> leftJoin('catagories', 'catagories.id', 'sub_categories.catagory_id');
        //search*/
        if (!empty($request->get('keyword'))) {
            $subCatagories = $subCatagories->where('sub_categories.name', 'like', '%' . $request->get('keyword') . '%');
            $subCatagories = $subCatagories->orwhere('catagories.name', 'like', '%' . $request->get('keyword') . '%');
        }
        //ds list catagory
        $subCatagories = $subCatagories->paginate(10);
        return view('admin.sub_catagory.list', compact('subCatagories'));
    }

    public function create(){
        $caragories = catagory::orderBy('name','ASC') -> get();
        $data['category'] =$caragories;
        return view('admin.sub_catagory.create',$data);
    }

    public function store(Request $request){
        $validator = Validator::make($request->all(), [
            "name" => 'required',
            "slug" => 'required|unique:sub_categories',
            'category' => 'required',
            'status'=> 'required'
        ]);

        if ($validator->passes()) {
            $subCategory = new SubCategory();
            $subCategory->name = $request->name;
            $subCategory->slug = $request->slug;
            $subCategory->status = $request->status;
            $subCategory->catagory_id = $request->category;
            $subCategory->save();


            $request->session()->flash('success', 'Catagory added successfull');

            return response()->json([
                'status' => true,
                'message' => 'Catagory add successfull'
            ]);
        } else {
            return response([
                'status' => false,
                'errors' => $validator->errors()
            ]);
        }

    }


    public function edit($id, Request $request)
    {
        $subCategory =SubCategory::find($id);
        if(empty($subCategory)){
            $request-> session()->flash('error','Record not found');
            return redirect()-> route('sub_catagory.index');
        }
        $caragories = catagory::orderBy('name', 'ASC')->get();
        $data['category'] = $caragories;
        $data['subCatagory'] =$subCategory ;
        return view('admin.sub_catagory.edit', $data);
    }

    public function update($id, Request $request)
    {
        $subCategory = SubCategory::find($id);
        if (empty($subCategory)) {
            $request->session()->flash('error', 'Record not found');
            return response([
                'status' => false,
                'notFound' => true
            ]);
        }
        $validator = Validator::make($request->all(), [
            "name" => 'required',
            //"slug" => 'required|unique:sub_categories',
             "slug" => 'required|unique:sub_categories,slug,' . $subCategory->id . ',id',
            'category' => 'required',
            'status' => 'required'
        ]);


        if ($validator->passes()) {
            $subCategory->name = $request->name;
            $subCategory->slug = $request->slug;
            $subCategory->status = $request->status;
            $subCategory->catagory_id = $request->category;
            $subCategory->save();


            $request->session()->flash('success', 'Catagory update successfull');

            return response()->json([
                'status' => true,
                'message' => 'Catagory add successfull'
            ]);
        } else {
            return response([
                'status' => false,
                'errors' => $validator->errors()
            ]);
        }
    }
    public function destroy($id, Request $request)
    {
        $subCategory = SubCategory::find($id);

        if (empty($subCategory)) {
            $request->session()->flash('error', 'Record not found');
            return response([
                'status' => false,
                'notFound' => true
            ]);
        }
        $subCategory->delete();

        $request->session()->flash('success', 'Catagory deleted successfull');

        return response()->json([
            'status' => true,
            'message' => 'subCatagory  deleted successfull'
        ]);
    }

}
