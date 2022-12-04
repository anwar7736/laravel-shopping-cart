
$(function(){
    function addNewRow()
    {
        let row = `<tr>
            <td><input type="file" class="file form-control" name="file[]" multiple/></td>
            <td class="size" width="10%"></td>
            <td><button class="btn btn-danger btn-sm cancel">Cancel</button></td>
            <td><button class="btn btn-success btn-sm upload">Upload</button></td>
            <td class="mb"></td>
            <td class="remain"></td>
            <td class="percent"></td>
            <td class="status"></td>
        </tr>`;
        $(".upload-multiple-file-table tbody").append(row);
        
    } 
    

    addNewRow();

    $(document).on("click", ".addMoreRow", function(){
        addNewRow();
    }) ;
    
    $(document).on("click", ".cancel", function(){
        $(this).closest("tr").remove();
    });    
    
    $(document).on("change", ".file", function(e){
        let files = e.target.files;
        let len = files.length;
        let fileSize  = 0;
        for(let count = 0; count < len; count++)
        {
            fileSize += files[count].size;
        }
        $(this).closest("tr").find(".size").html(Number(fileSize / (1024 * 1024)).toFixed(2) + " MB");
    });

    $(document).on("click", ".upload", function(e){
        let files = $(this).closest("tr").find('.file').prop("files");
        let len = files.length;
        let formData = new FormData();
        let size = 0;
        for(let count = 0; count < len; count++)
        {
            formData.append("myFile[]", files[count]);
            size += files[count].size;
        }
        if(len === 0)
        {
            toastr.error('Please choose your file!');
        }
        else {
        e.preventDefault();
        $(this).closest("tr").find(".status").html('Uploading....');
        $(this).attr("disabled", true);
        let mb = $(this).closest("tr").find(".mb");
        let remain = $(this).closest("tr").find(".remain");
        let percent = $(this).closest("tr").find(".percent");
        let config = {
            "headers": {"Content-Type": "multipart/form-data"}, 
            onUploadProgress: function(event) {
                const megaByte = (event.loaded / (1024 * 1024)).toFixed(2);
                const percentage = (100 * (event.loaded / event.total)).toFixed(2);
                mb.html(megaByte + " MB");
                remain.html(((size / (1024 * 1024)).toFixed(2) - megaByte).toFixed(2) + " MB");
                percent.html(percentage + " %");
              }
        };

        let url = "upload-multiple";

        axios.post(url,formData,config)
        .then(res=>{
            if(res.status == 200)
            {
                $(this).attr("disabled", false);
                $(this).closest("tr").find(".status").html(`<span class="badge bg-success">Completed</span>`);
            }
            else {
                $(this).closest("tr").find(".status").html(`<span class="badge bg-danger">Failed</span>`);
                $(this).attr("disabled", false);
            }
        })
        .catch(err=>{
            $(this).attr("disabled", false);
            $(this).closest("tr").find(".status").html(`<span class="badge bg-danger">Failed</span>`);
            console.log(err);
        });
        }
    });
});