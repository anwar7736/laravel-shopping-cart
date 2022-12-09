@extends('layouts.master')
@section('title', __('MCQ Result of '.Auth::user()->name))
@section('content')
    <div class="container card col-md-8">
        <div class="card-header">
        <h4 class="text-danger text-center">Online MCQ Test System Using Laravel</h4>
        </div>
        <div class="card-body">
        <h5 class="text-muted text-center"><strong class="">{{Auth::user()->name}}</strong></h5>       
        <h3 class="text-danger text-center"> Your Final Score: <strong class="text-success">{{$score}}/{{$total}}</strong></h3><br><br>
                @foreach($results as $result)
                <div>
                    <strong>Question 
                        @if($loop->index+1 < 10)
                        0{{$loop->index+1}}:
                        @else
                        {{$loop->index+1}}:
                        @endif
                    </strong>
                    <span>{{$result->question->question}}</span><br>
                    @foreach($result->question->options as $option)
                    <label><input type="radio" class="question_option" disabled> 
                        @if($option->is_correct)
                            <span style="color:green">{{$option->option}}</span>                            
                        @elseif($result->question_option_id == $option->id)
                            <span style="color:red !important">{{$option->option}}</span>
                        @else
                        <span class="">{{$option->option}}</span>
                        @endif
                    </label><br>
                    @endforeach
                </div> <hr>     
                @endforeach
        </div>
    </div>
@endsection
