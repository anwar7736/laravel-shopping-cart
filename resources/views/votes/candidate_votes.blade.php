@extends('layouts.master')
@section('title', 'Candidate Votes')
@section('content')
<div class="container">
    <div class="table-responsive">
        <table class="table table-bordered table-hover bg-light">
            <thead>
                <tr>
                    <th>#Sl</th>
                    <th>Candidate</th>
                    <th>Email</th>
                    <th>Total Votes</th>
                </tr>
            </thead>
            <tbody>
                @foreach($candidates as $candidate)
                <tr>
                    <td>{{$loop->index + 1}}</td>
                    <td>{{$candidate->candidate->name}}</td>
                    <td>{{$candidate->candidate->email}}</td>
                    <td title="view vote details"><a class="text-danger" href="{{ route('vote.details', [$candidate->id]) }}"><strong>{{$candidate->votes_count}} </strong></a></td>
                </tr>
                @endforeach
            </tbody>
        </table>
    </div>
</div>

@endsection