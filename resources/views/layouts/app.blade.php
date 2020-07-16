<!DOCTYPE html>
<html lang="{{ app()->getLocale() }}">
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <!-- CSRF Token -->
    <meta name="csrf-token" content="{{ csrf_token() }}">

    <title>{{ config('app.name', 'Laravel') }}</title>

<<<<<<< HEAD
    <!-- Styles -->
    <link href="{{ asset('css/app.css') }}" rel="stylesheet">
    <!-- Customs Styles -->
    <link href="{{ asset('css/style.css') }}" rel="stylesheet">
    <link href="{{ asset('css/modal.css') }}" rel="stylesheet">
=======
    <!-- Customs Styles -->
    <link href="{{ asset('css/style.css') }}" rel="stylesheet">
>>>>>>> f4f9550ce00473f57194d4d8ee73c88b03ac9e98
</head>
<body>
    <div id="app">
        @yield('content')
    </div>

    <!-- Scripts -->
    <script src="{{ asset('js/app.js') }}"></script>
<<<<<<< HEAD
    <script src="{{ asset('js/modal.js') }}"></script>
=======
>>>>>>> f4f9550ce00473f57194d4d8ee73c88b03ac9e98
</body>
</html>
