@extends('layouts.master')
@section('title', __('Edit Attendance'))
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
                    <th>Date</th>
                    <th>ID</th>
                    <th>Name</th>
                    <th>Attendance</th>
                </tr>
            </thead>
            <tbody>
                <form action="{{ route('attendance.update', [$attendace_data[0]->created_at]) }}" method="POST">
                @csrf
                @method('PUT')
                @foreach($attendace_data as $data)
                    <tr>
                        <td>{{$loop->index +1}}</td>
                        <td>{{$data->created_at->format('d-m-Y')}}</td>
                        <td>{{$data->user->id}}</td>
                        <td>{{$data->user->name}}</td>
                        <td>
                            <label><input type="radio" name="attend[{{$data->user->id}}]" id="" value="1" {{$data->is_attend === 1 ? 'checked' : ''}}>P</label>
                            <label><input type="radio" name="attend[{{$data->user->id}}]" id="" value="0" {{$data->is_attend === 0 ? 'checked' : ''}}>A</label>
                        </td>
                    </tr>
                @endforeach
                <tr class="text-center">
                    <td colspan="5">
                    <button class="btn btn-success" type="submit">Update</button>
                    </td>
                </tr>
                </form>
            </tbody>
        </table>
    </div>
</div>
@endsection