$(function(){
    let userTable = $("table.userTable").DataTable({
        processing: true,
        serverSide: true,
        ajax: {
            url: "/data-tables",
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