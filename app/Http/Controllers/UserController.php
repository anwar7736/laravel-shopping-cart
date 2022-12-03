<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\User;
use Validator, DB, DataTables;

class UserController extends Controller
{
    public function index(Request $request)
    {
        $all_city = User::select('city')->groupBy('city')->get();
        if($request->ajax())
        {
            DB::statement(DB::raw('set @rownum=0'));
            $users = User::select([
                DB::raw('@rownum  := @rownum  + 1 AS rownum'),
                'id',
                'name',
                'email',
                'gender',
                'city',
                'created_at',
                'updated_at']);

            if(!empty($request->city))
            {
                $users->where('city', $request->city);
            }
            if(!empty($request->gender))
            {
                $users->where('gender', $request->gender);
            }
            if(!empty($request->from && $request->to))
            {
                $users->whereDate('created_at', '>=', $request->from)
                      ->whereDate('created_at', '<=', $request->to);
            } 
            
            if(!empty($request->status))
            {
                if($request->status === 'all')
                {
                     $users->withTrashed();
                }
                else if($request->status === 'current')
                {
                     $users->get();
                }
                else if($request->status === 'deleted')
                {
                     $users->onlyTrashed();
                }
            }
           

            return DataTables::of($users)
            ->addColumn('action', function($user){
                $button = "";
                 $button .= "<button class='btn btn-sm btn-success edit' data-id='{$user->id}'>Edit</button>";
                 $button .="&nbsp;&nbsp;";
                 $button .= "<button class='btn btn-sm btn-danger delete d-none' data-id='{$user->id}'>Delete</button>";
                 $button .="&nbsp;&nbsp;";
                 $button .= "<input type='checkbox' value='{$user->id}' class='user'>";

                return $button;
            })
                    ->editColumn('created_at', function($user){
                        return $user->created_at->format('Y-m-d');
                    })
                    ->rawColumns(['action'])
                    ->make(true);
        }

        return view('user', compact('all_city'));
    }


    public function create()
    {
        return view('add-multlple-user');
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
    
    public function multipleInsert(Request $request)
    {
        $validated = Validator::make($request->all(),[
            'name.*' => ['required', 'min:3'],
            'email.*' => ['required', 'unique:users,email'],
            'password.*' => ['required', 'min:8'],
            'gender.*' => '',
            'city.*' => '',
        ]);

        if($validated->fails())
        {
            return response()->json(['errors'=>$validated->errors()->all()]);
        }

       try{
            for($count = 0; $count < count($request->name); $count++)
            {
                User::create([
                    'name' => $request->name[$count],
                    'email' => $request->email[$count],
                    'password' => $request->password[$count],
                    'gender' => $request->gender[$count],
                    'city' => $request->city[$count]
                ]);
            }

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
        $user = User::withTrashed()->whereId($id)->select([
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
        User::withTrashed()->whereId($id)->update([
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

    public function multipleDelete(Request $request)
    {
        if($request->isPermanent)
        {
            User::withTrashed()->whereIn('id', $request->id)->forceDelete();
        }
        else {
            User::withTrashed()->whereIn('id', $request->id)->delete();
        }
       

        return response()->json(['success'=>true, 'msg' => 'User has been deleted'], 200);

    }
    
    public function multipleRestore(Request $request)
    {

        User::withTrashed()->whereIn('id', $request->id)->restore();
        
        return response()->json(['success'=>true, 'msg' => 'User has been restored'], 200);

    }
}
