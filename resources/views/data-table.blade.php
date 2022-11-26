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
            <a href="{{ route('excel.template.export') }}" class="btn btn-dark  mb-2 userImportBtn">Download Template File</a>
            <form action="{{ route('users.import') }}" method="POST" enctype="multipart/form-data" id="userImportForm">
                @csrf
                <input class="form-control mb-2" type="file" id="user_list" name="user_list" >
                <button type="submit" class="btn btn-danger mb-2 submitBtn px-5" accept=".xlsx,.xls,.csv" >Submit</button>
            </form>
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

            function toggleImportSection()
            {
              if($("div.import-user-section").hasClass('d-none'))
               {
                    $("div.import-user-section").removeClass('d-none');
               }

               else $("div.import-user-section").addClass('d-none');
            }
            $(".userImportBtn").click(function(){
                toggleImportSection();
            });

            $("form#userImportForm").submit(function(e){
                e.preventDefault();
                let url = $(this).attr('action');
                let method = $(this).attr('method');
                $.ajax({
                    url,
                    method,
                    data: new FormData(this),
                    cache: false,
                    contentType: false,
                    processData: false,
                    beforeSend: function()
                    {
                        $(".submitBtn").attr('disabled', true);
                        $(".submitBtn").html('Please Wait....');
                    },
                    success: function(res)
                    {
                        if(res.success)
                        {
                            toastr.success(res.msg);
                            toggleImportSection();
                            refresh_table();
                            $(".submitBtn").attr('disabled', false);
                            $(".submitBtn").html('Submit');
                        }
                        else {
                            $(".submitBtn").attr('disabled', false);
                            $(".submitBtn").html('Submit');
                            toastr.error(res.msg);
                            
                        }
                      
                    },
                    error: function(res)
                    {
                        toastr.error(res.msg);
                        $(".submitBtn").attr('disabled', false);
                        $(".submitBtn").html('Submit');
                    }

                });
            });
        });
    </script>
@endpush