$(document).ready(function(){
    $(document).on('submit', 'form#add_to_cart_package_form', function(e){
        e.preventDefault();
         let product = $(this).serialize();
         let url = $(this).attr('action');
         let method = $(this).attr('method');
         $.ajax({
            url: url,
            method: method,
            data:product,
            success: function(res){
                if(res.success)
                {
                    toastr.success(res.msg);
                    $(document).find('sup#total_cart_item2').text(res.total);
                }
                else toastr.error(res.msg);
            }

         });
    });

    $(document).on('submit', 'form#remove_cart_item_form2', function(e){
        e.preventDefault();
         let data = $(this).serialize();
         let url = $(this).attr('action');
         let method = $(this).attr('method');
         if(confirm('Are you sure?'))
         {
            $.ajax({
                url: url,
                method: method,
                data:data,
                success: function(res){
                    if(res.success)
                    {   
                        toastr.success(res.msg);
                        if(res.total < 1)
                        {
                            $('button.checkOutBtn2').addClass('d-none');
                        }
                        $(document).find('sup#total_cart_item2').text(res.total);
                        table_reload2();
                    }
                    else toastr.error(res.msg);
                }
    
             });
         }
    }); 
    
    $(document).on('blur', 'input.quantity2', function(){
        let id = $(this).data('id');
        let qty = $(this).val();
        let item = $(this).data('item');
        updateCartQuantity2(id, qty, item);
   });

   $(document).on('change', 'input.quantity2', function(){
        let id = $(this).data('id');
        let qty = $(this).val();
        let item = $(this).data('item');
        updateCartQuantity2(id, qty, item);
    });

    function updateCartQuantity2(id = '', quantity = '', item = '') 
    {
         if(id !== '' && quantity !== '' && item !== '')
         {
            $.ajax({
                url: "package/"+id+"/edit",
                method: "GET",
                data:{quantity, item},
                success: function(res){
                    if(res.success)
                    {   
                        table_reload2();
                        toastr.success(res.msg);
                        
                    }
                    else toastr.error(res.msg);
                }
    
             });
         }
    }

    function table_reload2()
    {
        $('.cart-summary2').load(location.href+' .cart-summary2');
        $('.table').load(location.href+' .table');
    }
    
    

    
});