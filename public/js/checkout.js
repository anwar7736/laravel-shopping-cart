$(document).ready(function(){
    $(document).on('submit', 'form#checkout', function(e){
        $('button.checkOutBtn').attr('disabled', true);
        e.preventDefault();
         let data = $(this).serialize();
         let url = $(this).attr('action');
         let method = $(this).attr('method');
         $.ajax({
            url: url,
            method: method,
            data:data,
            success: function(res){
                if(res.success)
                {
                    toastr.success(res.msg);
                    $('button.checkOutBtn').addClass('d-none');
                    $(document).find('sup#total_cart_item').text(res.total);
                    table_reload();
                }
                else {
                    $('button.checkOutBtn').attr('disabled', false);
                    toastr.error(res.msg);
                }
            }

        });
        });

        function table_reload()
        {
            $('.cart-summary').load(location.href+' .cart-summary');
            $('.table').load(location.href+' .table');
        }
    });
