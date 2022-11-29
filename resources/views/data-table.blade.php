@extends('layouts.app')
@section('title', 'Laravel Yajra DataTables')
@section('content')
<div class="container-fluid">
<div class="table-responsive">
    <div class="filter-section row">
        <div class="col-md-3">
            <label class="text-light" for="city">Filter By City</label>
            <select name="city" id="city" class="form-control">
                <option value="" disabled selected>Choose City</option>
                <option value="">All City</option>
                @foreach($all_city as $row)
                    <option value="{{$row->city}}">{{$row->city}}</option>
                @endforeach
            </select>
        </div>        
        <div class="col-md-3">
            <label class="text-light" for="gender">Filter By Gender</label>
            <select name="gender" id="gender" class="form-control">
                <option value="" disabled selected>Choose Gender</option>
                <option value="">All</option>
                <option value="Male">Male</option>
                <option value="Female">Female</option>
                <option value="Others">Others</option>
            </select>
        </div>
        <div class="col-md-2">
            <label class="text-light" for="from">From:</label>
            <input type="date" name="from" id="from" class="form-control">
        </div>        
        <div class="col-md-2">
            <label class="text-light" for="to">To:</label>
            <input type="date" name="to" id="to" class="form-control">
        </div>        
        <div class="col-md-1 mt-4">
            <button class="btn btn-dark form-control dateFilter">Filter</button>
        </div>        
        <div class="col-md-1 mt-4">
            <button class="btn btn-light form-control clearDate">Clear</button>
        </div>
    </div><br>
    <div class="row">
    <div class="col-md-2 mt-3">
            <a href="{{ route('excel.export') }}" class="btn btn-primary">Export to Excel</a>
        </div>           
        <div class="col-md-2 mt-3">
            <a href="javascript:void(0)" class="btn btn-light userImportBtn">Import User</a>
        </div>             
        <div class="col-md-2 mt-3 import-user-section d-none">
            <div class="progress mb-2">
                <div class="progress-bar bg-danger progress-bar-striped progress-bar-animated" role="progressbar" aria-valuenow="0" aria-valuemin="0" aria-valuemax="100" style="width:0%">0%</div>
            </div>
            <a href="{{ route('excel.template.export') }}" class="btn btn-dark  mb-2 userImportBtn">Download Template File</a>
            <form action="{{ route('users.import') }}" method="POST" enctype="multipart/form-data" id="userImportForm">
                @csrf
                <input class="form-control mb-2" type="file" id="user_list" name="user_list" >
                <button type="submit" class="btn btn-danger mb-2 submitBtn px-5" accept=".xlsx,.xls,.csv" >Submit</button>
            </form>
        </div>   
        <div class="col-md-8" align="right">
        <button type="button" class="btn btn-info addUserBtn" data-toggle="modal" data-target="#exampleModal" >Add User</button>
        </div>  
    </div><br>
        <table class="table table-bordered table-striped bg-light text-dark userTable">
            <thead>
                <tr>
                    <th>#Serial No</th>
                    <th>Name</th>
                    <th>Email</th>
                    <th>Gender</th>
                    <th>City</th>
                    <th>Registered At</th>
                    <th>Action</th>
                </tr>
            </thead>
            <tbody>
                
            </tbody>
    </table>
    </div>

    @include('layouts.add_modal');
    @include('layouts.edit_modal');

          
        
</div>
@endsection
