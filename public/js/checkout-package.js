$(document).ready(function(){
    $(document).on('submit', 'form#checkoutPackage', function(e){
        $('button.checkOutBtn2').attr('disabled', true);
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
                    $('button.checkOutBtn2').addClass('d-none');
                    $(document).find('sup#total_cart_item2').text(res.total);
                    table_reload();
                }
                else {
                    $('button.checkOutBtn2').attr('disabled', false);
                    toastr.error(res.msg);
                }
            }

        });
        });

        function table_reload()
        {
            $('.cart-summary2').load(location.href+' .cart-summary2');
            $('.table').load(location.href+' .table');
        }
    });
