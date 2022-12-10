<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Board;
use App\Models\ExamType;
use App\Models\Result;
use App\Models\Student;

class ResultController extends Controller
{
    public function index()
    {
        $types = ExamType::all();
        $boards = Board::all();

        return view('result.form', compact('types', 'boards'));
    }

    public function getResult(Request $request)
    {
        $student = Student::where(['roll'=>$request->roll, 'reg'=>$request->reg])->first();
        $results = Result::with('board', 'exam_type', 'student')->where([
            'year' => $request->year,
            'board_id' => $request->board,
            'exam_type_id' => $request->exam_type,
            'student_id' => $student->id,
        ])->get();
        $status = "PASSED";
        $totalPoint = 0;
        foreach($results as $result)
        {
            if($result->marks < 33)
            {
                $status = "FAILED";
                break;
            }
            if($result->marks >=80)
            {
                $totalPoint +=5;
            }            
            if($result->marks <=79 && $result->marks >=70) 
            {
                $totalPoint +=4;
            }            
            if($result->marks <=69 && $result->marks >=60) 
            {
                $totalPoint +=3.5;
            }
        }
        return view('result.result', compact('results', 'status', 'totalPoint'));
            // return response()->json(['status'=>'success', 'url' => route('result', ['roll'=>bcrypt($request->roll),'reg'=>bcrypt($request->reg)]),'data'=>$result]);

        


    }

    public function resultDetails(Request $request)
    {
        return view('result.result');
    }
}
