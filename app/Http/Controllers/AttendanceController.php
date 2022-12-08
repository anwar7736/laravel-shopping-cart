<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Attendance;
use App\Models\User;
class AttendanceController extends Controller
{
    public function index()
    {
        $users = User::all();
        return view('attendance.index', compact('users'));
    }    
    
    public function store(Request $request)
    {
        $request->validate([
            'attend.*' => 'required'
        ]);

        $count = 0;
        $status = Attendance::whereDate('created_at', \Carbon\Carbon::now())->get();
        if(count($status) === 0 && count($request->attend) === User::count())
        {
            foreach($request->attend as $key=>$value)
            {
                Attendance::create([
                    'user_id' => $key,
                    'is_attend' => $value
                ]);
    
                $count++;
            }
        }

        else {
            return back()->with(['type' => false, 'msg'=> 'Today attendance already taken!']);
        }
       

        if(count($request->attend) === $count)
        {
            return back()->with(['type' => true, 'msg'=> 'Attendance has been taken successfully']);
        }

            return back()->with(['type' => false, 'msg'=> 'Something went wrong!']);
    }

    public function create()
    {
        $attendances = Attendance::select(['created_at'])->groupBy('created_at')->orderBy('created_at', 'desc')->get();
        return view('attendance.list', compact('attendances'));
    }

    public function show($date)
    {
        $attendace_data = Attendance::with('user')->where('created_at', $date)->get();
        return view('attendance.edit', compact('attendace_data'));
    }
    
    public function update(Request $request, $date)
    {
       if(!empty($request->attend))
       {
            foreach($request->attend as $key=>$value)
            {
                Attendance::where(['user_id'=>$key,'created_at'=>$date])->update([
                    'is_attend' => $value
                ]);

            }

            return back()->with(['type' => true, 'msg'=> 'Attendance has been updated successfully']);
       }
    }
}
