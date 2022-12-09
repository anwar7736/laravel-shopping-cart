@extends('layouts.master')
@section('title', __('Online MCQ Test'))
@section('content')
    <div class="container card col-md-8">
        <div class="card-header">
        <h4 class="text-danger text-center">Online MCQ Test System Using Laravel</h4>
        </div>
        <div class="card-body">
        <strong class="">N.B:</strong><span class="text-danger text-center"> Please answer all questions</span><br><br>
            <form action="{{ route('mcq.test') }}" method="POST">
             @csrf
                @foreach($questions as $question)
                <div>
                    <strong>Question 
                        @if($loop->index+1 < 10)
                        0{{$loop->index+1}}:
                        @else
                        {{$loop->index+1}}:
                        @endif
                    </strong>
                    <span>{{$question->question}}</span><br>
                    @foreach($question->options as $option)
                    <label><input type="radio" class="question_option" name="answer[{{$question->id}}]" value="{{$option->id}}"> {{$option->option}}</label><br>
                    @endforeach
                </div> <hr>     
                @endforeach
                <div align="center">
                    <button type="submit" class="btn btn-success submitAnsBtn" disabled>Submit Answer</button>
                </div>
            </form>
        </div>
    </div>
@endsection
@push('js')
<script>
    $(function(){
       $(".question_option").change(function(){
        let totalQuestion = "<?php echo \App\Models\Question::count();?>";
         if($("input:radio:checked").length == totalQuestion)
         {
            $(".submitAnsBtn").attr("disabled",false);
         }
       })
    })
</script>
@endpush