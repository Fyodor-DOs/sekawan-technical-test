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
        .toggle-password {
            cursor: pointer;
            position: absolute;
            right: 10px;
            top: 50%;
            transform: translateY(-50%);
        }
        .login-button {
            background-color: #aac4ff; 
            color: white;
            font-medium: bold;
            border-radius: 0.5rem;
            padding: 0.625rem 1.25rem; 
            text-align: center;
            transition: background-color 0.3s ease; 
            width: 100%;
        }
        .login-button:hover {
            background-color: #8e8ecc; 
        }
    </style>
    <title>Login</title>
</head>
<body>
    <x-app-layout title="Login">
        <section class="bg-[#eef1ff] h-screen">
            <div class="flex flex-col items-center justify-center px-6 py-8 mx-auto md:min-h-screen lg:py-0">
                <a href="/login" class="flex items-center">
                    <img class="w-200 h-200" src="{{ url('img/logo_sekawan.png') }}" alt="logo sekawan">
                </a>
                <div class="w-full bg-white rounded-lg shadow md:mt-0 sm:max-w-md xl:p-0">
                    <div class="p-6 space-y-4 md:space-y-6 sm:p-8">
                        <h1 class="text-2xl text-center font-bold leading-tight tracking-tight md:text-2xl login-title">
                            Login
                        </h1>
                        <form class="space-y-4 md:space-y-6" action="{{ route('login') }}" method="POST">
                            @csrf
                            <div>
                                <label for="email" class="block mb-2 text-sm font-medium text-gray-900">
                                    Email
                                </label>
                                <input type="email" name="email" id="email"
                                    class="bg-gray-50 border border-gray-300 text-gray-900 sm:text-sm rounded-lg block w-full p-2.5"
                                    placeholder="Masukkan email anda" required="">
                            </div>
                            <div>
                                <label for="password" class="block mb-2 text-sm font-medium text-gray-900">Password</label>
                                <div class="relative">
                                    <input type="password" name="password" id="password" placeholder="••••••••"
                                        class="bg-gray-50 border border-gray-300 text-gray-900 sm:text-sm rounded-lg focus:ring-blue-600 focus:border-blue-600 block w-full p-2.5"
                                        required="">
                                    <span class="toggle-password" onclick="togglePasswordVisibility()">
                                        <svg xmlns="http://www.w3.org/2000/svg" class="h-5 w-5" fill="none" viewBox="0 0 24 24" stroke="currentColor" id="eye-icon">
                                            <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M3 12c0 4.418 4.5 9 9 9s9-4.582 9-9-4.5-9-9-9-9 4.582-9 9z" />
                                            <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M15 12c0 1.657-1.343 3-3 3s-3-1.343-3-3 1.343-3 3-3 3 1.343 3 3z" />
                                        </svg>
                                    </span>
                                </div>
                            </div>
                            <button type="submit" class="login-button">
                                Login
                            </button>
                            <p class="text-sm text-left font-light text-gray-700">
                                Belum punya akun? <a href="/register" class="font-medium link-color hover:underline">
                                    Buat akun</a>
                            </p>
                        </form>
                    </div>
                </div>
            </div>
        </section>
    </x-app-layout>

    <script>
        function togglePasswordVisibility() {
            const passwordInput = document.getElementById('password');
            const eyeIcon = document.getElementById('eye-icon');
            if (passwordInput.type === 'password') {
                passwordInput.type = 'text';
                eyeIcon.setAttribute('stroke', 'blue'); 
            } else {
                passwordInput.type = 'password';
                eyeIcon.setAttribute('stroke', 'currentColor'); 
            }
        }
    </script>
</body>
</html>
