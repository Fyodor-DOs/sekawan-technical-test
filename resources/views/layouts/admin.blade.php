<!DOCTYPE html>
<html lang="{{ str_replace('_', '-', app()->getLocale()) }}" class="scroll-smooth">

<head>
    @vite('resources/css/app.css')
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@300;400;600;700&display=swap" rel="stylesheet"> 

    <link rel="stylesheet" href="{{ asset('assets-admin/css/perfect-scrollbar.css') }}">
    
    <link rel="stylesheet" href="{{ asset('assets-admin/css/nucleo-icons.css') }}">
    <link rel="stylesheet" href="{{ asset('assets-admin/css/nucleo-svg.css') }}">

    <link rel="stylesheet" href="{{ asset('assets-admin/css/soft-ui-dashboard-tailwind.css?v=1.0.4') }}">

    <link rel="stylesheet" type="text/css" href="{{ asset('') }}asset/fontawesome-icons/css/all.min.css">
    <script src="{{ asset('asset/fontawesome-icons/js/all.min.js') }}"></script>

    <link rel="apple-touch-icon" sizes="180x180" href="{{ url('img/favicon/apple-icon-precomposed.png') }}">
    <link rel="icon" type="image/png" sizes="32x32" href="{{ url('img/favicon/favicon-32x32.png') }}">
    <link rel="icon" type="image/png" sizes="16x16" href="{{ url('img/favicon/favicon-16x16.png') }}">
    <link rel="manifest" href="{{ url('img/favicon//manifest.json') }}">

    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.4/jquery.min.js"></script>

    <title>{{ $title }}</title>
</head>

<body style="font-family: 'Poppins', sans-serif;"> 

    <x-header />

    <div class="min-h-screen">
        <main>
            {{ $slot }}
        </main>
    </div>

    @vite('resources/js/app.js')
</body>

</html>
