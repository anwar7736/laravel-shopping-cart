@extends('layouts.app')
@section('title', 'File Upload')
@section('content')
    <div class="container card">
        <div class="message mt-2">
            
        </div>  
        <form action="{{ route('upload.file') }}" method="POST" enctype="multipart/form-data" id="uploadForm">
            @csrf
            <input type="file" class="file" name="file[]" multiple accept="image">
            <button type="submit" class="btn btn-success">Upload</button>
        </form>      
        <div class="preview-image mt-2 row">
           
        </div>
        <div class="progress">
            <div class="progress-bar bg-danger progress-bar-striped progress-bar-animated" role="progressbar" aria-valuenow="0" aria-valuemin="0" aria-valuemax="100" style="width:0%">0%</div>
        </div>
    </div>
@endsection
@push('js')
<script>
    $(function(){
        $(".file").change(function(e){
        let file = e.target.files;
        if(file.length === 0)
        {
            return;
        }
        let images = "";
        for(let count = 0; count < file.length; count++)
        {
            let tempURL = URL.createObjectURL(file[count]);
            images +=`<div class='col-md-1 m-2'>
                <img src="${tempURL}" alt="" height="100" width="100" id="preview_image">
            </div>`;
        }
        $(".preview-image").html(images);
    });
//    $(document).on("submit", "#uploadForm", function(e){
//         e.preventDefault();
//         const url = $(this).attr('action');
//         const method = $(this).attr('method');
//         const data = new FormData(this);
//         $.ajax({
//             url,
//             method,
//             data,
//             cache:false,
//             contentType: false,
//             processData:false,
//             success: function(res)
//             {
//                 if(res.success)
//                 {
//                     toastr.success(res.msg);
//                     $(".preview-image").html('');
//                     $(".file").val('');
//                     $('.message').html('')
//                 }
//                 else if(res.errors)
//                 {
//                     let errors = `<ul class='alert alert-danger'>`;
//                     for(let error = 0; error < res.errors.length; error++)
//                     {
//                         errors += `<li>${res.errors[error]}</li>`;
//                     }

//                     errors += "</ul>";

//                     $('.message').html(errors)
//                 }
//             }
//         });
//    });

  //File upload with progress bar
$("#uploadForm").ajaxForm({
    beforeSend: function()
    {
        $('.message').html('');
        $('.progress-bar').text('0%');
        $('.progress-bar').css('width', '0%');
    },
    uploadProgress: function(event, position, total, percentComplete)
    {
        $('.progress-bar').text(percentComplete+'%');
        $('.progress-bar').css('width', percentComplete+'%');
    },
    success: function(res)
    {
        if(res.success)
        {
            toastr.success(res.msg);
            $(".preview-image").html('');
            $(".file").val('');
            $('.message').html('')
            $('.progress-bar').text('Upload completed');
            $('.progress-bar').css('width', '100%');
        }
        else if(res.errors)
        {
            $('.progress-bar').text('0%');
            $('.progress-bar').css('width', '0%');
            let errors = `<ul class='alert alert-danger'>`;
            for(let error = 0; error < res.errors.length; error++)
            {
                errors += `<li>${res.errors[error]}</li>`;
            }

            errors += "</ul>";

            $('.message').html(errors)
        }
    }
});
    })
</script>
@endpush