<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\User;
use App\Models\Question;
use App\Models\QuestionOption;
use App\Models\ExamResult;
use Auth;

class ExamController extends Controller
{
    public function index()
    {
        $questions = Question::with('options')->get();
        return view('exam.index', compact('questions'));
    }

    public function store(Request $request)
    {
        $user = \Auth::user();
        $results = [];
        foreach($request->answer as $key=>$answer)
        {
            $results [] = [
                'question_id' => $key,
                'question_option_id' => $answer,
            ];
        } 

        if(!empty($results))
        {
            $user->answers()->createMany($results);

            return redirect()->route('exam_result', [\Auth::id()]);
        }
    }

    public function result($id)
    {
        if(Auth::id() != $id)
        {   
            return "<h2 style='color:red; text-align:center'>Sorry! you can't see another result</h2>";
        }

        $results = ExamResult::with('question')->where('user_id', $id)->get();
        $score = 0;
        foreach($results as $result)
        {
            $correct = QuestionOption::where(['question_id'=>$result->question->id, 'is_correct'=>1])->first();
            ($correct->id === $result->question_option_id) ?  $score++ : '';
        }

        $total = Question::count();
        return view('exam.result', compact('results', 'score', 'total'));
    }
}
