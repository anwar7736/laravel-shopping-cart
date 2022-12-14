<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="csrf-token" content="{{ csrf_token() }}">
    <title>@yield('title', 'Laravel-Shopping-Cart')</title>
    <link rel="stylesheet" href="{{ asset('css/bootstrap.min.css') }}"/>
    <link rel="stylesheet" href="{{ asset('css/toastr.min.css') }}"/>
    <link rel="stylesheet" href="{{ asset('css/jquery.dataTables.min.css') }}"/>
    <link rel="stylesheet" href="{{ asset('css/sweetalert2.min.css') }}"/>
    <style>
        .goog-te-banner-frame{
            display:none;
        }
    </style>
    @stack('css')
</head>
<body class="bg-success">
    @include('layouts.header')
    @yield('content')
    @include('layouts.footer')
    <script type="text/javascript" src="//translate.google.com/translate_a/element.js?cb=googleTranslateElementInit"></script> 
    <script src="{{ asset('js/bootstrap.min.js') }}"></script>
    <script src="{{ asset('js/jquery.min.js') }}"></script>
    <script src="{{ asset('js/toastr.min.js') }}"></script>
    <script src="{{ asset('js/jquery.dataTables.min.js') }}"></script>
    <script src="{{ asset('js/cart.js') }}"></script>
    <script src="{{ asset('js/cart-package.js') }}"></script>
    <script src="{{ asset('js/checkout.js') }}"></script>
    <script src="{{ asset('js/checkout-package.js') }}"></script>
    <script src="{{ asset('js/custom.js') }}"></script>
    <script src="{{ asset('js/user.js') }}"></script>
    <script src="{{ asset('js/sweetalert2.min.js') }}"></script>
    <script src="{{ asset('js/jquery.form.js') }}"></script>
    <script src="{{ asset('js/axios.min.js') }}"></script>
    <script>
        let type = "{{ Session::get('type') }}";
        let message = "{{ Session::get('msg') }}";
        switch(type)
        {
            case true : 
            toastr.success(message) 
            break;
            case false : 
            toastr.error(message)
            break;
        }
        $.ajaxSetup({
        headers: {
            'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content'),
        }

      
            });  
            function googleTranslateElementInit() {
        new google.translate.TranslateElement({pageLanguage: 'en'}, 'google_translate_element');
        }

    </script>
    @stack('js')

</body>
</html>