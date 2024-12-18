<x-admin-layout title="Dashboard">

    <main class="ease-soft-in-out xl:ml-68.5 relative h-full max-h-screen rounded-xl transition-all duration-200 my-3 mx-3" style="background-color: #eef1ff;"> <!-- Tambahkan style ini -->
        <hr class="h-0.5 mt-0 bg-transparent bg-gradient-to-r from-transparent via-black/40 to-transparent" />
        <nav>
            @auth
                <h6 class="font-bold text-2xl mt-6 ml-8 capitalize text-gray-700">Selamat Datang! <?php $result = auth()->user()->name; ?>
                    {{ strtok($result, ' ') }}</h6>
            @endauth
        </nav>
        <div class="container mt-12 p-8 bg-white border border-gray-200 rounded-lg shadow hover:bg-gray-100" style="background-color: #eef1ff;"> <!-- Tambahkan style ini -->
        </div>
    </main>
</x-admin-layout>
