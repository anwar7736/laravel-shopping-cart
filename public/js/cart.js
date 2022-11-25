$(document).ready(function(){
    $(document).on('submit', '#add_to_cart_form', function(e){
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
                    $(document).find('sup#total_cart_item').text(res.total);
                }
                else toastr.error(res.msg);
            }

         });
    });

    $(document).on('submit', 'form#remove_cart_item_form', function(e){
        e.preventDefault();
         let id = $(this).serialize();
         let url = $(this).attr('action');
         let method = $(this).attr('method');
         if(confirm('Are you sure?'))
         {
            $.ajax({
                url: url,
                method: method,
                data:id,
                success: function(res){
                    if(res.success)
                    {   
                        toastr.success(res.msg);
                        if(res.total < 1)
                        {
                            $('button.checkOutBtn').addClass('d-none');
                        }
                        $(document).find('sup#total_cart_item').text(res.total);
                        table_reload();
                    }
                    else toastr.error(res.msg);
                }
    
             });
         }
    }); 
    
    $(document).on('blur', 'input.quantity', function(){
        let id = $(this).data('id');
        let qty = $(this).val();
        updateCartQuantity(id, qty);
   });

   $(document).on('change', 'input.quantity', function(){
        let id = $(this).data('id');
        let qty = $(this).val();
        updateCartQuantity(id, qty);
    });

    function updateCartQuantity(id = '', quantity = '') 
    {
         if(id !== '' && quantity !== '')
         {
            $.ajax({
                url: "session/"+id+"/edit",
                method: "GET",
                data:{quantity},
                success: function(res){
                    if(res.success)
                    {   
                        table_reload();
                        toastr.success(res.msg);
                        
                    }
                    else toastr.error(res.msg);
                }
    
             });
         }
    }

    function table_reload()
    {
        $('.cart-summary').load(location.href+' .cart-summary');
        $('.table').load(location.href+' .table');
    }
    
    

    
});