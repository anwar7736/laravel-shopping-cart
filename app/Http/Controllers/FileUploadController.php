<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Validator;
use Image;
class FileUploadController extends Controller
{
    public function index()
    {
        return view('file-upload');
    }
    public function upload(Request $request)
    {      
        $validator = Validator::make($request->all(),[
            'file.0' => 'required',
        ],
        [
            'file.0.required' => 'Please choose atleast one image',
        ]
    
    );

        if($validator->fails())
        {
            return response()->json(['errors' => $validator->errors()->all()]);
        }
        
        else if($validator->passes())
        {
            
            foreach($request->file as $file)
            {
                $new_name =  rand().'.'.$file->extension();
                $image = Image::make($file)->resize(1024, 768);
                $image->save(public_path('images/'.$new_name));
            }

            return response()->json(['success' => true, 'msg'=> 'All file has been uploaded']);
        }
    }

    public function viewFile()
    {
        return view('multiple-file-upload');
    }

    public function uploadMultipleFile(Request $request)
    {
        
        foreach($request->myFile as $file)
        {
           $file->store('public/uploads');
        }
    }
}
