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
