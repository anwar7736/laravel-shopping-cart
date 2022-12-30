@extends('example::layouts.master')

@section('content')
    <h1>Hello World</h1>

    <p>
        This view is loaded from module: {!! config('example.name') !!}
    </p>
    <div class="container card">
        @forelse($examples as $example)
            <h2>{{$example->name}}</h2>
            <small>{{$example->created_at->format('d F, Y')}}</small> |
            <small>{{$example->created_at->diffForHumans()}}</small>
        @empty
        <center><h4 style="color:red">No Data Found!</h4></center>
        @endforelse
    </div>
@endsection
