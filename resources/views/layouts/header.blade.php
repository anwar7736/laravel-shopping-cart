<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <style>
        p.total_cart{
            background:black;
            font-size:20px;
            padding:15px;
            color:white;
        }
        #total_cart_item{
            font-size:15px;
            margin-left:1px;
        }
    </style>
</head>
<body>
    <div class="text-center mt-3 cart-total-header">
        <p class="total_cart">
        <a href="{{ route('user.index') }}" class="text-light ml-5" >User List</a>
        <a href="{{ route('products.index') }}" class="text-light ml-5" >Product List</a>
        Cart<a href="{{ route('cart.session.index') }}"><sup id="total_cart_item" class="badge bg-danger">{{total_cart_items() ?? '0'}}</sup></a>
        Cart2<a href="{{ route('cart.package.index') }}"><sup id="total_cart_item2" class="badge bg-danger">{{total_cart_items2() ?? '0'}}</sup></a>
        <select  id="change-lang">
            <option value="">Choose language</option>
            <option value="en" {{session()->get('lang') === 'en' ? 'selected' : ''}}>English</option>
            <option value="bn" {{session()->get('lang') === 'bn' ? 'selected' : ''}}>Bangla</option>
            
        </select>
        <div id="google_translate_element"></div>
        <a href="{{ route('backup.run') }}" class="text-light ml-5" >Database Backup</a>
        <a href="{{ route('clear.cache') }}" class="text-light ml-5" >Cache Clear</a>
        
        
    </p>
    </div>

</body>
</html>