@extends('layouts.master')
@section('title', 'Upload Multiple File')
@section('content')
<div class="container">
<div class="table-responsive">              
        <table class="table table-bordered table-striped bg-light text-dark upload-multiple-file-table">
            <thead>
                <tr>
                    <th>File <button class="btn btn-primary btn-sm addMoreRow">Add More</button></th>
                    <th>Size</th>
                    <th>Cancel</th>
                    <th>Upload</th>
                    <th>Uploaded(MB)</th>
                    <th>Uploaded(%)</th>
                    <th>Status</th>
                </tr>
                
            </thead>

                <tbody>

                </tbody>
           
    </table>
    </div>

          
        
</div>
@endsection
