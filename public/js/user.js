$(function(){

    //Insert functionality
    $(".addUserBtn").click(function(){
        $("#addUserModal").modal('show');
        $("#addUserForm")[0].reset();
        $("span.nameError").text('');
        $("span.emailError").text('');
        $("span.passwordError").text('');
    
    }) 
    
    $(".closeAddUser").click(function(){
        $("#addUserModal").modal('hide');
    })

    $("#addUserForm").submit(function(e){
        e.preventDefault();
        const data = $(this).serialize();
        const url = $(this).attr('action');
        const method = $(this).attr('method');
        $.ajax({
            url,
            method,
            data,
            beforeSend: function()
            {
                $(".saveBtn").attr('disabled', true);
                $(".saveBtn").text('Saving...');

            },
            success: function(res)
            {
                $(".saveBtn").attr('disabled', false);
                $(".saveBtn").text('Save');
                if(res.success)
                {
                    $(".userTable").DataTable().ajax.reload();
                    toastr.success(res.msg);
                    $("#addUserForm")[0].reset();
                    $("span.nameError").text('');
                    $("span.emailError").text('');
                    $("span.passwordError").text('');
                }

                else if(res.errors)
                {
                    if(res.errors.name)
                    {
                        $("span.nameError").text(res.errors.name[0]);
                    }
                    else
                    {
                        $("span.nameError").text('');
                    }
                    if(res.errors.email)
                    {
                        $("span.emailError").text(res.errors.email[0]);
                    }
                    else
                    {
                        $("span.emailError").text('');
                    }
                    if(res.errors.password)
                    {
                        $("span.passwordError").text(res.errors.password[0]);
                    }
                    else
                    {
                        $("span.passwordError").text('');
                    }
                }
                else if(!res.success) {
                    toastr.error(res.msg);
                }
            },
        });

        //Update functionality
        });
        $(document).on("click", ".edit", function(){
            const id = $(this).data('id');
            $("span.nameError2").text('');
            $("span.emailError2").text('');
            $("span.passwordError2").text('');
            $.ajax({
                url: "user/"+id+"/edit",
                method: "GET",
                success: function(res)
                {
                    $("#hiddenID").val(res.user.id);
                    $("#name2").val(res.user.name);
                    $("#email2").val(res.user.email);
                   
                    if(res.user.gender === "Male")
                    {
                        $(document).find("input.gender2")[0].checked = true;
                    }
                    else if(res.user.gender === "Female")
                    {
                        $(document).find("input.gender2")[1].checked = true;
                    } 
                    else if(res.user.gender === "Others")
                    {
                        $(document).find("input.gender2")[2].checked = true;
                    }
                    $("#city2").val(res.user.city);

                
                    $("#updateUserModal").modal('show');
                }
            });
        }) 
        
        $(".closeupdateUser").click(function(){
            $("#updateUserModal").modal('hide');
        })

        $("#updateUserForm").submit(function(e){
            e.preventDefault();
            const id = $("#hiddenID").val();
            const data = $(this).serialize();
            const method = $(this).attr('method');
            $.ajax({
                url: "user/update/"+id,
                method,
                data,
                beforeSend: function()
                {
                    $(".updateBtn").attr('disabled', true);
                    $(".updateBtn").text('Updating...');

                },
                success: function(res)
                {
                    $(".updateBtn").attr('disabled', false);
                    $(".updateBtn").text('Update');
                    if(res.success)
                    {
                        $("span.nameError2").text('');
                        $("span.emailError2").text('');
                        $("span.passwordError2").text('');
                        $(".userTable").DataTable().ajax.reload();
                        $("#updateUserModal").modal('hide');
                        toastr.success(res.msg);
                    }

                    else if(res.errors)
                    {
                        if(res.errors.name2)
                        {
                            $("span.nameError2").text(res.errors.name2[0]);
                        }
                        else
                        {
                            $("span.nameError2").text('');
                        }
                        if(res.errors.email2)
                        {
                            $("span.emailError2").text(res.errors.email2[0]);
                        }
                        else
                        {
                            $("span.emailError2").text('');
                        }
                    }
                    else if(!res.success) {
                        toastr.error(res.msg);
                    }
                },
            });
        });

        //Delete functionality
        $(document).on("click", ".delete", function(){
            
            const id = $(this).data('id');
            Swal.fire({
                title: 'Are you sure?',
                text: "You won't be able to revert this!",
                icon: 'warning',
                showCancelButton: true,
                confirmButtonColor: '#3085d6',
                cancelButtonColor: '#d33',
                confirmButtonText: 'Yes, delete it!'
              }).then((result) => {
                if (result.isConfirmed) {
                    $.ajax({
                        url: "user/destroy/"+id,
                        method: "GET",
                        success: function(res)
                        {
                            toastr.success(res.msg);
                            $(".userTable").DataTable().ajax.reload();
                        }
                });
                }
              })
            
                
            
        });

        $(document).on("change", "#all", function(){
            if($(this).prop("checked"))
            {
                $(".user:checkbox").prop("checked", true);
            }
            else $(".user:checkbox").prop("checked", false);
        });
        
        $(document).on("change", ".user", function(){
            if($(".user:checked").length === $(".user:checkbox").length)
            {
                $("#all:checkbox").prop("checked", true);
            }

            else $("#all:checkbox").prop("checked", false);
        });

        $(document).on("click", ".deleteMultiple", function(){
            Swal.fire({
                title: 'Are you sure?',
                text: "You won't be able to revert this!",
                icon: 'warning',
                showCancelButton: true,
                confirmButtonColor: '#3085d6',
                cancelButtonColor: '#d33',
                confirmButtonText: 'Yes, delete it!'
              }).then((result) => {
                if (result.isConfirmed) {
                    let id = [];
                    $(".user:checkbox:checked").each(function(){
                        id.push($(this).val());
                    });

                    if(id.length === 0)
                    {
                        toastr.error('Please select atleast one checkbox!');
                    }
                    else {
                        $.ajax({
                            url: "/multiple-delete",
                            method: "POST",
                            data : {id: id},
                            success: function(res)
                            {
                                toastr.success(res.msg);
                                $("#all:checkbox").prop("checked", false);
                                $(".userTable").DataTable().ajax.reload();
                            }
                    });
                    }
                }
              })
        });

        function addFirstRow()
        {
            let row = `<tr>
                <td><input type="text" name="name[]" /></td>
                <td><input type="email" name="email[]" /></td>
                <td><input type="password" name="password[]" /></td>
                <td>
                    <select name="gender[]" class="form-control">
                        <option value="Male">Male</optoin>
                        <option value="Female">Female</optoin>
                        <option value="Others">Others</optoin>
                    </select>
                </td>
                <td>
                    <select name="city[]" class="form-control">
                        <option value="Dhaka">Dhaka</optoin>
                        <option value="Khulna">Khulna</optoin>
                        <option value="Rajshahi">Rajshahi</optoin>
                        <option value="Rangpur">Rangpur</optoin>
                    </select>
                </td>
                <td>
                    <button type="button" class="btn btn-success addMore">Add</button>
                </td>
            </tr>`;
            $(".add-multiple-user-table tbody").html(row);
            
        } 
        function appendRow()
        {
            let row = `<tr>
                <td><input type="text" name="name[]" /></td>
                <td><input type="email" name="email[]" /></td>
                <td><input type="password" name="password[]" /></td>
                <td>
                    <select name="gender[]" class="form-control">
                        <option value="Male">Male</optoin>
                        <option value="Female">Female</optoin>
                        <option value="Others">Others</optoin>
                    </select>
                </td>
                <td>
                    <select name="city[]" class="form-control">
                        <option value="Dhaka" selected>Dhaka</optoin>
                        <option value="Khulna">Khulna</optoin>
                        <option value="Rajshahi">Rajshahi</optoin>
                        <option value="Rangpur">Rangpur</optoin>
                    </select>
                </td>
                <td>
                    <button type="button" class="btn btn-danger remove">X</button>
                </td>
            </tr>`;
            $(".add-multiple-user-table tbody").append(row);
            
        }

        addFirstRow();

        $(document).on("click", ".addMore", function(){
            appendRow();
        }) ;
        
        $(document).on("click", ".remove", function(){
            $(this).closest("tr").remove();
        });

        $(document).on("submit", "#addMultiUserForm", function(e){
            e.preventDefault();
            let url  = $(this).attr("action");
            let method  = $(this).attr("method");
            let data  = $(this).serialize();
            
            $.ajax({
                url,
                method,
                data,
                dataType: "JSON",
                beforeSend: function()
                {
                    $(".submitBtn").attr("disabled", true);
                },
                success : function(res)
                {
                    $(".submitBtn").attr("disabled", false);
                    if(res.success)
                    {
                       
                        addFirstRow();
                        toastr.success(res.msg);
                        
                    }
                    else if(res.errors)
                    {
                       let len = res.errors.length;
                       for(let count = 0; count < len; count++)
                       {
                            toastr.error(res.errors[count]);
                       }
                        
                    }
                }

            });
        });
        
        
});