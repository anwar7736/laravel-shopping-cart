@extends('layouts.master')
@section('title', __('Attendance List'))
@section('content')
<div class="container-fluid">
    <div class="table-responsive">
        <table class="table table-bordered table-striped bg-light text-dark">
            <thead>
                <tr>
                    <th>Sl</th>
                    <th>Date</th>
                    <th>Action</th>
                </tr>
            </thead>
            <tbody>
                @foreach($attendances as $attendance)
                    <tr>
                        <td>{{$loop->index +1}}</td>
                        <td>{{$attendance->created_at->format('d-m-Y')}}</td>
                        <td>
                            <a href="{{ route('attendance.show', [$attendance->created_at]) }}" class="btn btn-info">View</a>
                        </td>
                    </tr>
                @endforeach
            </tbody>
        </table>
    </div>
</div>
@endsection