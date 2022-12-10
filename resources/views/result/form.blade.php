@extends('layouts.master')
@section('title', 'Exam Result Form')
@section('content')
<div class="container w-75">
    <div class="row card result_form">
        <h4 class="card-header text-center text-danger">Student Result Form</h4>
        <div class="col-md-4 card-body">
            <form action="{{ route('form.result') }}" method="POST" id="result_form">
             @csrf
                <strong>Examination:</strong>
                <select name="exam_type" id="exam_type" class="form-control">
                    @foreach($types as $type)
                    <option value="{{$type->id}}">{{$type->name}}</option>
                    @endforeach
                </select>              
                <strong>Year:</strong>
                <select name="year" id="year" class="form-control">
                    <option value="" selected>Select One</option>
                    <option value="2012">2012</option>
                </select>                
                <strong>Board:</strong>
                <select name="board" id="board" class="form-control">
                    <option value="" selected>Select One</option>
                    @foreach($boards as $board)
                    <option value="{{$board->id}}">{{$board->name}}</option>
                    @endforeach
                </select>
                <strong for="">Roll:</strong>
                <input type="text" name="roll" id="roll" maxlength="6" class="form-control" onkeypress="return event.charCode>=48 && event.charCode<=57">                
                <strong for="">Reg: No</strong>
                <input type="text" name="reg" id="reg" maxlength="6" class="form-control" onkeypress="return event.charCode >=48 && event.charCode <=57">
                <strong for=""><span id="num1">{{rand(1,9)}}</span> + <span id="num2">{{rand(1,9)}}</span></strong>
                <input type="text" name="sum" maxlength="4" id="sum" class="form-control" onkeypress="return event.charCode>=48 && event.charCode<=57"><br>
                <input type="reset" class="btn btn-danger">
                <input type="submit" value="Submit" id="submitBtn" class="btn btn-success">
            </form>
        </div>
    </div>    
</div>
@endsection

@push('js')
    <!-- <script>
        $(function(){
           $("#result_form").submit(function(e){
                e.preventDefault();

                let num1 = $("#num1").text();
                let num2 = $("#num2").text();
                let sum = parseInt(num1) + parseInt(num2);
                let input_sum = $("#sum").val();

                if($("#year").val() == '')
                {
                    alert('Please select year!');
                }                
                else if($("#board").val() == '')
                {
                    alert('Please select board!');
                }
                else if($("#roll").val() == '')
                {
                    alert('Please enter roll!');
                }                
                else if($("#reg").val() == '')
                {
                    alert('Please enter reg!');
                }                
                else if($("#sum").val() == '')
                {
                    alert('Please enter summation value!');
                }                
                else if(sum != input_sum)
                {
                    alert('Please enter correct summation value!');
                }
                else {
                    let url = $(this).attr('action');
                    let method = $(this).attr('method');
                    let data = $(this).serialize();
                    $.ajax({
                        url,
                        method,
                        data,
                        beforeSend:function()
                        {
                            $("#submitBtn").attr("disabled", true);
                        },
                        success:function(res)
                        {
                          $("#submitBtn").attr("disabled", false);
                           if(res.status == 'success' && res.data.length > 0)
                           {
                                // window.location.href=res.url'?data='+res.data;
                           }



                        },

                    });
                }
           });
        });
    </script> -->
@endpush