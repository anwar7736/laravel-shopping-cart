@extends('layouts.master')
@section('title', 'Upload Multiple File')
@section('content')
<div class="container">
<div class="table-responsive">              
        <table class="table table-bordered table-striped bg-light upload-multiple-file-table">
            <thead>
                <tr>
                    <th>File <button class="btn btn-primary btn-sm addMoreRow">Add More</button></th>
                    <th>File Size</th>
                    <th>Cancel</th>
                    <th>Upload</th>
                    <th>Uploaded(MB)</th>
                    <th>Remaining(MB)</th>
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
