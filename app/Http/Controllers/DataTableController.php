<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Exports\UsersExport;
use App\Exports\UserTemplateExport;
use App\Imports\UsersImport;
use App\Models\User;
use DataTables, DB, Excel;

class DataTableController extends Controller
{
    public function viewAll(Request $request)
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
           

            return DataTables::of($users)
            ->addColumn('action', function($user){
                $button = "";
                 $button .= "<a class='btn btn-sm btn-success' href='#'>Edit</a>";
                 $button .="&nbsp;&nbsp;";
                 $button .= "<a class='btn btn-sm btn-danger' href='#'>Delete</a>";

                return $button;
            })
                    ->editColumn('created_at', function($user){
                        return $user->created_at->format('Y-m-d');
                    })
                    ->rawColumns(['action'])
                    ->make(true);
        }

        return view('data-table', compact('all_city'));
    }

    public function ExportToExcel()
    {
        return Excel::download(new UsersExport, 'user_list.xlsx');
    }
    public function ExcelToExcelTemplate()
    {
        return Excel::download(new UsersExport, 'user_list.xlsx');
    }

    public function ExportUserTemplate()
    {
        return Excel::download(new UserTemplateExport, 'user_import_template.xlsx');
    } 
    
    public function UserImport(Request $request)
    {
        if($request->ajax())
        {
           try{
            $file = $request->file('user_list');
            if(empty($file))
            {
                return response()->json(['success' => false, 'msg'=> 'Please choose your excel/csv file']);
            }
            Excel::import(new UsersImport,  $file);
        
            return response()->json(['success' => true, 'msg'=> 'User list has imported']);
           }
           catch(\Exception $e)
           {
                \Log::info("Error: ".$e->getMessage());
                return response()->json(['success' => false, 'msg'=> $e->getMessage()]);
           }
        }
    }
}
