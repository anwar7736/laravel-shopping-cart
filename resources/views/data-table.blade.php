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
</div>
@endsection
@push('js')
    <script>
        $(function(){
            let userTable = $(".userTable").DataTable({
                processing: true,
                serverSide: true,
                ajax: {
                    url: "{{ route('data-table.show') }}",
                    data: function(d) {
                        d.from = $('#from').val();
                        d.to = $('#to').val();
                        d.city = $('#city').val();
                        d.gender = $('#gender').val();
                    }
                },
                columns: [
                    {data: 'rownum', name: 'rownum', searchable: false},
                    {data: 'name', name: 'name'},
                    {data: 'email', name: 'email'},
                    {data: 'gender', name: 'gender'},
                    {data: 'city', name: 'city'},
                    {data: 'created_at', name: 'created_at'},
                    {data: 'action', name: 'action', orderable: false, searchable: false},

                ]
            });

            $("#gender").change(function(){
                refresh_table();
            }); 
            $("#city").change(function(){
                refresh_table();
            });            
            $(".dateFilter").click(function(){
                let from = $("#from").val();
                let to = $("#to").val();
                if(from === "" || to === "")
                {
                    toastr.error('Both date are required!');
                }
                else if(from > to)
                {
                    toastr.error('Invalid date!');
                }
                else refresh_table();;
            });
            $(".clearDate").click(function(){
                let from = $("#from").val('');
                let to = $("#to").val('');
                 refresh_table();
                
            });            

            function refresh_table()
            {
                userTable.ajax.reload()
            }
        });
    </script>
@endpush