<aside
    class="max-w-62.5 ease-nav-brand z-40 fixed inset-y-0 my-0 ml-0 md:block hidden w-full -translate-x-full flex-wrap items-center justify-between overflow-y-auto rounded-0 border-r-2 bg-white p-0 antialiased shadow-none transition-transform duration-200 xl:left-0 xl:translate-x-0 xl:bg-transparent">
    <div class="h-19.5">
        <i class="absolute top-0 right-0 hidden p-4 opacity-50 cursor-pointer fas fa-times text-slate-400 xl:hidden"
            sidenav-close></i>
        <a class="block px-8 py-4 m-0 text-sm whitespace-nowrap text-[#4154f1] hover:bg-gray-200" href="/dashboard">
            <img src="{{ asset('img/logo_sekawan.png') }}"
            class="inline logo-sekawan transition-all duration-200 ease-nav-brand"
            alt="logo-sekawan" />
        </a>
    </div>
    <div class="items-center hidden w-auto max-h-screen overflow-auto h-sidenav grow basis-full md:block">
        <ul class="flex flex-col pl-0 mb-0">
            <li class="mt-0.5 w-full">
                <a class="py-2.7 hover:shadow-soft-xl text-gray-900 text-sm ease-nav-brand my-0 mx-4 flex items-center whitespace-nowrap rounded-lg hover:bg-gray-200 px-4 hover:font-semibold hover:text-[#4154f1] transition-colors" href="/dashboard"> <!-- Ganti warna biru di sini -->
                    <div
                        class="bg-gradient-to-tl from-[#4154f1] to-[#4154f1] shadow-soft-2xl mr-2 flex h-8 w-8 items-center justify-center rounded-lg bg-white bg-center stroke-0 text-center xl:p-2.5"> <!-- Ganti warna biru di sini -->
                        <i class="fa fa-home text-gray-100"></i>
                    </div>
                    <span class="ml-1 duration-300 opacity-100 pointer-events-none ease-soft">Dashboard</span>
                </a>
            </li>
            <li class="mt-0.5 w-full">
                <a class="py-2.7 hover:shadow-soft-xl text-gray-900 text-sm ease-nav-brand my-0 mx-4 flex items-center whitespace-nowrap rounded-lg hover:bg-gray-200 px-4 hover:font-semibold hover:text-[#4154f1] transition-colors" href="/kendaraan"> <!-- Ganti warna biru di sini -->
                    <div
                        class="bg-gradient-to-tl from-[#4154f1] to-[#4154f1] shadow-soft-2xl mr-2 flex h-8 w-8 items-center justify-center rounded-lg bg-white bg-center stroke-0 text-center xl:p-2.5"> <!-- Ganti warna biru di sini -->
                        <i class="fa fa-car text-gray-100"></i>
                    </div>
                    <span class="ml-1 duration-300 opacity-100 pointer-events-none ease-soft">Kendaraan</span>
                </a>
            </li>
            <li class="mt-0.5 w-full">
                <a class="py-2.7 hover:shadow-soft-xl text-gray-900 text-sm ease-nav-brand my-0 mx-4 flex items-center whitespace-nowrap rounded-lg hover:bg-gray-200 px-4 hover:font-semibold hover:text-[#4154f1] transition-colors" href="/logactivity"> <!-- Ganti warna biru di sini -->
                    <div
                        class="bg-gradient-to-tl from-[#4154f1] to-[#4154f1] shadow-soft-2xl mr-2 flex h-8 w-8 items-center justify-center rounded-lg bg-white bg-center stroke-0 text-center xl:p-2.5"> <!-- Ganti warna biru di sini -->
                        <i class="fa fa-book text-gray-100"></i>
                    </div>
                    <span class="ml-1 duration-300 opacity-100 pointer-events-none ease-soft">Log Aktivitas</span>
                </a>
            </li>
            <li class="mt-0.5 w-full">
                <a class="py-2.7 hover:shadow-soft-xl text-gray-900 text-sm ease-nav-brand my-0 mx-4 flex items-center whitespace-nowrap rounded-lg hover:bg-gray-200 px-4 hover:font-semibold hover:text-[#4154f1] transition-colors" href="/profile"> <!-- Ganti warna biru di sini -->
                    <div
                        class="bg-gradient-to-tl from-[#4154f1] to-[#4154f1] shadow-soft-2xl mr-2 flex h-8 w-8 items-center justify-center rounded-lg bg-white bg-center stroke-0 text-center xl:p-2.5"> <!-- Ganti warna biru di sini -->
                        <i class="fa fa-user text-gray-100"></i>
                    </div>
                    <span class="ml-1 duration-300 opacity-100 pointer-events-none ease-soft">Profil</span>
                </a>
            </li>
        </ul>
    </div>
</aside>

<main class="ease-soft-in-out xl:ml-68.5 relative h-full max-h-screen transition-all duration-200">
    <div class="h-0.5 mt-0 bg-transparent bg-gradient-to-r from-transparent via-black/40 to-transparent"></div>
    <nav
        class="relative flex flex-wrap items-center justify-between px-0 py-2 transition-all shadow-none duration-250 lg:flex-nowrap lg:justify-start">
        <div class="flex items-center justify-between w-full px-4 py-1 mx-auto flex-wrap-inherit">
            
            <div class="flex items-center mt-2 grow sm:mt-0 sm:mr-6 md:mr-0 lg:flex lg:basis-auto">
                <div class="flex items-center md:ml-auto md:pr-4">
                </div>
                <ul class="flex flex-row justify-end pl-0 mb-0 list-none md-max:w-full">
                    <li class="flex items-center pl-4">
                        <form action="/logout" method="post">
                            @csrf
                            <button
                                class="block py-2 mx-4 font-semibold transition-all ease-nav-brand text-md text-gray-700 hover:text-[#4154f1]"><i class="fa fa-sign-out"></i>
                                <span class="hidden sm:inline">Keluar</span>
                            </button>
                        </form>
                    </li>
                </ul>
            </div>
        </div>
    </nav>
</main>

<div class="fixed bg-white bottom-0 left-0 z-50 w-full h-16 bg-base_00 border-t border-base_80 xl:hidden mt-5">
    <div class="grid h-full max-w-lg grid-cols-4 mx-auto font-sm">
        <a href="/dashboard" class="inline-flex flex-col items-center justify-center px-5 hover:bg-[#4154f1] group"> 
            <i class="fa-solid fa-layer-group w-6 h-6 mb-1 text-[#4154f1] group-hover:text-gray-100"></i> 
            <span class="text-sm text-[#4154f1] group-hover:text-gray-100">Dashboard</span> 
        </a>
        <a href="/kendaraan" class="inline-flex flex-col items-center justify-center px-5 hover:bg-[#4154f1] group"> 
            <i class="fa-solid fa-bars-progress w-6 h-6 mb-1 text-[#4154f1] group-hover:text-gray-100"></i> 
            <span class="text-sm text-[#4154f1] group-hover:text-gray-100">Kendaraan</span> 
        </a>
        <a href="/logactivity" class="inline-flex flex-col items-center justify-center px-5 hover:bg-[#4154f1] group"> 
            <i class="fa-solid fa-file-pen w-6 h-6 mb-1 text-[#4154f1] group-hover:text-gray-100"></i> 
            <span class="text-sm text-[#4154f1] group-hover:text-gray-100">Log</span>
        </a>
        <a href="/profile" class="inline-flex flex-col items-center justify-center px-5 hover:bg-[#4154f1] group"> 
            <i class="fa-solid fa-user w-6 h-6 mb-1 text-[#4154f1] group-hover:text-gray-100"></i> 
            <span class="text-sm text-[#4154f1] group-hover:text-gray-100">Profil</span> 
        </a>
    </div>
</div>

<style>
    * {
        font-family: 'Poppins', sans-serif; 
    }
    .logo-sekawan {
       max-height: 50px;
   }
</style>
