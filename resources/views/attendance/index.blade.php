@extends('layouts.master')
@section('title', __('Attendance'))
@section('content')
<div class="container-fluid">
    @if ($errors->any())
        <div class="alert alert-danger">
            <ul>
                @foreach ($errors->all() as $error)
                    <li>{{ $error }}</li>
                @endforeach
            </ul>
        </div>
    @endif
    <div class="table-responsive">
        <table class="table table-bordered table-striped bg-light text-dark">
            <thead>
                <tr>
                    <th>Sl</th>
                    <th>ID</th>
                    <th>Name</th>
                    <th>Attendance</th>
                </tr>
            </thead>
            <tbody>
                <form action="{{ route('attendance.store') }}" method="POST">
                @csrf
                @foreach($users as $user)
                    <tr>
                        <td>{{$loop->index +1}}</td>
                        <td>{{$user->id}}</td>
                        <td>{{$user->name}}</td>
                        <td>
                        @php 
                            $count = \App\Models\Attendance::whereDate('created_at', \Carbon\Carbon::now())->count();
                        @endphp
                            <label><input type="radio" name="attend[{{$user->id}}]" id="" value="1" {{ $count > 0 ? 'disabled' : ''}}>P</label>
                            <label><input type="radio" name="attend[{{$user->id}}]" id="" value="0" {{ $count > 0 ? 'disabled' : ''}}>A</label>
                        </td>
                    </tr>
                @endforeach
                <tr class="text-center">
                    <td colspan="4">
                    <button class="btn btn-dark" type="submit" {{ $count > 0 ? 'disabled' : ''}}>Submit</button>
                    </td>
                </tr>
                </form>
            </tbody>
        </table>
    </div>
</div>
@endsection