@extends('layouts.master')
@section('title', 'Exam Result')
@section('content')
    <div class="container">
    <div class="row card exam_result">
        <h4 class="card-header text-center text-danger type">{{strtoupper($results[0]->exam_type->name)}} Result {{strtoupper($results[0]->year)}}</h4>
        <div class="col-md-8 card-body">
            <table class="table table-bordered table-striped">
                <tbody id="table1">
                <tr>
                    <td>Roll No</td>
                    <td>{{strtoupper($results[0]->student->roll)}}</td>
                    <td>Name</td>
                    <td>{{$results[0]->student->name}}</td>
                </tr>                   
                <tr>
                    <td>Board</td>
                    <td>{{strtoupper($results[0]->board->name)}}</td>
                    <td>Father's Name</td>
                    <td>{{strtoupper($results[0]->student->f_name)}}</td>
                </tr>                
                <tr>
                    <td>Group</td>
                    <td>{{strtoupper($results[0]->student->group)}}</td>
                    <td>Mother's Name</td>
                    <td>{{strtoupper($results[0]->student->m_name)}}</td>
                </tr>
                <tr>
                    <td>Type</td>
                    <td>{{strtoupper($results[0]->student->type)}}</td>
                    <td>Date of Birth</td>
                    <td>{{strtoupper($results[0]->student->dob)}}</td>
                </tr>
                <tr>
                    <td>Result</td>
                    <td>{{strtoupper($status)}}</td>
                    <td>Institute</td>
                    <td>{{strtoupper($results[0]->student->institute->name)}}</td>
                </tr>
                <tr>
                    <td>GPA</td>
                    <td>{{number_format($totalPoint/9, 2)}}</td>
                    <td></td>
                    <td></td>
                </tr>
                </tbody>
            </table>
            <h5 class="text-center"><strong>Grade Sheet</strong></h5>
            <table class="table table-bordered table-striped">
                <thead>
                    <tr>
                        <th>Code</th>
                        <th>Subject</th>
                        <th>Grade</th>
                    </tr>
                </thead>
                <tbody id="table2">
                    @foreach($results as $result)
                    <tr>
                        <td>{{$result->subject->code}}</td>
                        <td>{{$result->subject->name}}</td>
                        <td>
                            @if($result->marks >=80)
                                A+
                            @elseif($result->marks >=70 && $result->marks <=79)
                                A
                            @elseif($result->marks >=60 && $result->marks <=69)
                                A-
                            @endif
                        </td>
                    </tr>
                    @endforeach
                </tbody>
            </table>
        </div>
    </div>
    </div>
@endsection