<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\User;
use Validator;

class UserController extends Controller
{

    public function index()
    {
        
    }


    public function create()
    {
        
    }


    public function store(Request $request)
    {
        $validated = Validator::make($request->all(),[
            'name' => ['required', 'min:3'],
            'email' => ['required', 'unique:users'],
            'password' => ['required', 'min:8', 'same:password_confirmation'],
            'gender' => '',
            'city' => '',
        ]);

        if($validated->fails())
        {
            return response()->json(['errors'=>$validated->errors()]);
        }

       try{
        User::create($validated->validated());

        return response()->json(['success'=>true, 'msg' => 'User has been created']);
       }
       catch(\Exception $e)
       {
            \Log::info($e->getMessage());
            return response()->json(['success'=>false, 'msg' => $e->getMessage()]);
       }
    }


    public function show($id)
    {
        
    }


    public function edit($id)
    {
        $user = User::whereId($id)->select([
                'id','name', 'email',
                'gender', 'city'
        ])->first();

        return response()->json(['user'=> $user]);
    }


    public function update(Request $request, $id)
    {
        $validated = Validator::make($request->all(),[
            'name2' => ['required', 'min:3'],
            'email2' => ['required', 'unique:users,email,'.$id],
            'gender2' => '',
            'city2' => '',
        ]);

        if($validated->fails())
        {
            return response()->json(['errors'=>$validated->errors()]);
        }

       try{
        User::whereId($id)->update([
            'name' => $request->name2,
            'email' => $request->email2,
            'gender' => $request->gender2,
            'city' => $request->city2,

        ]);

        return response()->json(['success'=>true, 'msg' => 'User has been updated']);
       }
       catch(\Exception $e)
       {
            \Log::info($e->getMessage());
            return response()->json(['success'=>false, 'msg' => $e->getMessage()]);
       }
    }


    public function destroy($id)
    {
        User::destroy($id);

        return response()->json(['success'=>true, 'msg' => 'User has been deleted'], 200);

    }
}
