@extends('layouts.master')
@section('title', 'Add Multiple User')
@section('content')
<div class="container">
<div class="table-responsive">              
    <form action="{{ route('insert.multiple') }}" method="POST" id="addMultiUserForm">
        @csrf    
        <table class="table table-bordered table-striped bg-light text-dark add-multiple-user-table">
            <thead>
                <tr>
                    <th>Name</th>
                    <th>Email</th>
                    <th>Password</th>
                    <th>Gender</th>
                    <th>City</th>
                    <th>Action</th>
                </tr>
                
            </thead>

                <tbody>

                </tbody>
                <div align="right">
                    <button type="submit" class="btn btn-primary submitBtn">Submit</button>
                </div>
           
    </table>
</form>
    </div>

          
        
</div>
@endsection
