<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@300;400;500;600;700&display=swap" rel="stylesheet">
    <style>
        * {
            font-family: 'Poppins', sans-serif; 
        }
        .login-title {
            color: #8e8ecc;
        }
        .link-color {
            color: #8e8ecc;
        }
        .create-account-button {
            background-color: #aac4ff; 
            color: white;
            font-medium: bold;
            border-radius: 0.5rem; 
            padding: 0.625rem 1.25rem; 
            text-align: center;
            transition: background-color 0.3s ease; 
            width: 100%; 
        }
        .create-account-button:hover {
            background-color: #8e8ecc; /
        }
    </style>
    <title>Login</title>
</head>
<body>
<x-app-layout title="Buat Akun">
    <section class="bg-[#eef1ff] h-screen">
        <div class="flex flex-col items-center justify-center px-6 py-8 mx-auto md:h-screen lg:py-0">
            <a href="/register" class="flex items-center">
                <img class="w-200 h-200" src="{{ url('img/logo_sekawan.png') }}" alt="logo sekawan">
            </a>
            <div class="w-full bg-white rounded-lg shadow md:mt-0 sm:max-w-md xl:p-0">
                <div class="p-6 space-y-4 md:space-y-6 sm:p-8">
                    <h1 class="text-2xl text-center font-bold leading-tight tracking-tight md:text-2xl login-title">
                        Buat Akun Baru
                    </h1>
                    <form class="space-y-4 md:space-y-6" action="/register/account" method="POST">
                        @csrf
                        <div>
                            <label for="name" class="block mb-2 text-sm font-medium text-gray-900">Nama Lengkap</label>
                            <input type="text" name="name" id="name"
                                class="bg-gray-50 border border-gray-300 text-gray-900 sm:text-sm rounded-lg focus:ring-blue-600 focus:border-blue-600 block w-full p-2.5"
                                placeholder="Masukkan nama lengkap anda" required="">
                        </div>
                        <div>
                            <label for="email" class="block mb-2 text-sm font-medium text-gray-900">Email</label>
                            <input type="email" name="email" id="email"
                                class="bg-gray-50 border border-gray-300 text-gray-900 sm:text-sm rounded-lg focus:ring-blue-600 focus:border-blue-600 block w-full p-2.5"
                                placeholder="Masukkan email anda" required="">
                        </div>
                        <div>
                            <label for="password" class="block mb-2 text-sm font-medium text-gray-900">Password</label>
                            <input type="password" name="password" id="password" placeholder="••••••••"
                                class="bg-gray-50 border border-gray-300 text-gray-900 sm:text-sm rounded-lg focus:ring-blue-600 focus:border-blue-600 block w-full p-2.5"
                                required="">
                        </div>
                        <div>
                            <label for="confirm-password" class="block mb-2 text-sm font-medium text-gray-900">Konfirmasi password</label>
                            <input type="password" name="confirm-password" id="confirm-password" placeholder="••••••••"
                                class="bg-gray-50 border border-gray-300 text-gray-900 sm:text-sm rounded-lg focus:ring-blue-600 focus:border-blue-600 block w-full p-2.5"
                                required="">
                        </div>
                        <button type="submit" class="create-account-button">
                            Buat Akun
                        </button>
                        <p class="text-sm text-left font-light text-gray-700">
                            Sudah punya akun? <a href="/login" class="font-medium link-color hover:underline">Login</a>
                        </p>
                    </form>
                </div>
            </div>
        </div>
    </section>
</x-app-layout>
</body>
</html>
