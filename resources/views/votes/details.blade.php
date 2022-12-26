@extends('layouts.master')
@section('title', 'Vote Details')
@section('content')
<div class="container">
    <div class="table-responsive">
        <table class="table table-bordered table-hover bg-light">
            <h4 class="text-light">Candidate : {{($details[0]->candidate->candidate->name)}}</h4>
            <h4 class="text-light">Total Votes : {{($details->count())}}</h4>
            <thead>
                <tr>
                    <th>#Sl</th>
                    <th>User</th>
                    <th>Email</th>
                </tr>
            </thead>
            <tbody>
                @foreach($details as $detail)
                <tr>
                    <td>{{$loop->index + 1}}</td>
                    <td>{{$detail->user->name}}</td>
                    <td>{{$detail->user->email}}</td>


                </tr>
                @endforeach
            </tbody>
        </table>
    </div>
</div>

@endsection