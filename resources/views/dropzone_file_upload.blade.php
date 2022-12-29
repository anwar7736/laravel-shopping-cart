<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Dropzone File Upload</title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/dropzone/5.9.3/dropzone.min.css" integrity="sha512-jU/7UFiaW5UBGODEopEqnbIAHOI8fO6T99m7Tsmqs2gkdujByJfkCbbfPSN4Wlqlb9TGnsuC0YgUgWkRBK7B9A==" crossorigin="anonymous" referrerpolicy="no-referrer" />
    <link href="https://cdn.jsdelivr.net/npm/select2@4.1.0-rc.0/dist/css/select2.min.css" rel="stylesheet" />
</head>
<body>
    <div class="container">
        <div class="row">
            <div class="col-md-12">
                <form action="{{ route('dropzone.upload') }}" method="POST" enctype="multipart/form-data" class="dropzone">
                    @csrf
                    <h4 class="text-center">Dropzone File Upload in Laravel</h4>
                </form>
                @php 
                    $lastID = "";
                    $list = [
                            '1'=>'Bangladesh', 
                            '2'=>'India',
                            '3'=>'Pakistan',
                            '4'=>'USA',
                        ];
                @endphp
                <select name="" id="select-country" class="form-control col-md-3">
                    @foreach($list as $key=>$value)
                        <option value="{{$key}}">{{$value}}</option>
                        @php $lastID = $key; @endphp
                    @endforeach
                </select>           
                <select name="" id="select-state" class="form-control col-md-3">
                    <option value="bn">Bangladesh</option>
                    <option value="in">India</option>
                    <option value="pk">Pakistan</option>
                    <option value="usa">USA</option>
                    <option value="usa">Nepal</option>
                    <option value="usa">Bhutan</option>
                    <option value="usa">Saudia</option>
                    <option value="usa">Dubai</option>
                    <option value="usa">Malaysia</option>
                </select>                
                <select name="" id="select-city" class="form-control col-md-3">
                    <option value="bn">Bangladesh</option>
                    <option value="in">India</option>
                    <option value="pk">Pakistan</option>
                    <option value="usa">USA</option>
                    <option value="usa">Nepal</option>
                    <option value="usa">Bhutan</option>
                    <option value="usa">Saudia</option>
                    <option value="usa">Dubai</option>
                    <option value="usa">Malaysia</option>
                </select>
            </div>
        </div>
    </div>

    <script src="https://cdn.jsdelivr.net/npm/jquery@3.6.1/dist/jquery.slim.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/js/bootstrap.bundle.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/dropzone/5.9.3/dropzone.min.js" integrity="sha512-U2WE1ktpMTuRBPoCFDzomoIorbOyUv0sP8B+INA3EzNAhehbzED1rOJg6bCqPf/Tuposxb5ja/MAUnC8THSbLQ==" crossorigin="anonymous" referrerpolicy="no-referrer"></script>
    <script src="https://cdn.jsdelivr.net/npm/select2@4.1.0-rc.0/dist/js/select2.min.js"></script>
    <script>
        $(function(){
            $("#select-country").select2();
            $("#select-state").select2();
            $("#select-city").select2();
        });
    </script>
</body>

</html>