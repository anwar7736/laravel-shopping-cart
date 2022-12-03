const { default: axios } = require("axios");

$(function(){
    function addNewRow()
    {
        let row = `<tr>
            <td><input type="file" class="file" name="file[]" placeholder="Enter name" /></td>
            <td class="size"></td>
            <td><button class="btn btn-danger btn-sm cancel">Cancel</button></td>
            <td><button class="btn btn-success btn-sm upload">Upload</button></td>
            <td class="mb"></td>
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
        let file = e.target.files[0];
        $(this).closest("tr").find(".size").html((file.size/(1024*1024)).toFixed(2) + " MB");
    });

    $(document).on("click", ".upload", function(e){
        let file = e.target.files[0];
        let config = {
            "headers": {
                "Content-Type": "multipart/form-data",
            }, 
            "data": file,
        };
        
        const onUploadProgress = (event) => {
            const megaByte = (event.loaded / event.total).toFixed(2);
            const percentage = (100 * (event.loaded / event.total)).toFixed(2);
            $(this).closest("tr").find(".mb").html(megaByte + " MB")
            $(this).closest("tr").find(".percent").html(percentage + " %")
          };

        axios.post("upload-file", config, onUploadProgress)
        .then(res=>{
            console.log(res);
        })
        .catch(err=>{
            console.log(err);
        });
    });
});