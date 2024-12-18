<x-admin-layout title="Ubah Password | Sekawan">
    <main class="xl:ml-68.5 mt-4 my-auto md:flex md:justify-center mx-3">
        <div class="container mx-auto max-w-lg p-4 border-2 border-solid bg-white rounded-lg justify-center md:w-full" style="background-color: #eef1ff;">
            <div class="break-words mb-4 bg-gray-100 border-0 border-solid rounded-[12px] bg-clip-border">
                <div class="w-full mx-auto p-2">
                    <div class="flex w-full">
                        <div class="max-w-full pt-4 px-3 lg:w-1/2 lg:flex lg:flex-none lg:pt-0">
                            <div class="flex h-full">
                                <h3 class="font-bold text-2xl w-full">Ubah Password</h3>
                            </div>
                        </div>
                    </div>
                    <div class="container h-full w-full p-4 rounded-2xl bg-clip-border md:w-full">
                        <form action="{{ route('password.update') }}" method="POST">
                            @csrf
                            @method('PATCH')
                            <div>
                                <label for="old_password"
                                    class="block mb-1 mt-4 text-sm font-medium text-hitam md:text-lg">
                                    Password Lama
                                </label>
                                <input type="password" name="old_password" id="old_password"
                                    class=" bg-white border border-gray-300 text-gray-700 text-sm rounded-lg focus:ring-blue-500 focus:border-blue-500 block w-full p-2.5"
                                    value="">
                                @error('old_password')
                                    <div class="mt-1 text-sm text-red-600" id="old_password">
                                        {{ $message }}
                                    </div>
                                @enderror
                            </div>
                            <div>
                                <label for="password" class="block mb-1 mt-4 text-sm font-medium text-hitam md:text-lg">
                                    Password Baru
                                </label>
                                <input type="password" name="password" id="password"
                                    class="bg-white border border-gray-300 text-gray-700 text-sm rounded-lg focus:ring-blue-500 focus:border-blue-500 block w-full p-2.5"
                                    value="">
                                @error('password')
                                    <div class="mt-1 text-sm text-red-600" id="password">
                                        {{ $message }}
                                    </div>
                                @enderror
                            </div>
                            <div>
                                <label for="konfirmasi_password"
                                    class="block mb-1 mt-4 text-sm font-medium text-hitam md:text-lg">
                                    Konfirmasi Password
                                </label>
                                <input type="password" name="konfirmasi_password" id="konfirmasi_password"
                                    class="bg-white border border-gray-300 text-gray-700 text-sm rounded-lg focus:ring-blue-500 focus:border-blue-500 block w-full p-2.5"
                                    value="">
                                @error('konfirmasi_password')
                                    <div class="mt-1 text-sm text-red-600" id="konfirmasi_password">
                                        {{ $message }}
                                    </div>
                                @enderror
                            </div>
                            <button type="submit" class="btn-save px-42 w-full py-2 mt-8 rounded-[12px] border-gray-500 text-xl text-semibold text-center text-white cursor-pointer md:px-64">
                                <div>
                                    Simpan
                                </div>
                            </button>
                        </form>
                    </div>
                </div>
            </div>
        </div>
        <style>
            .btn-save {
                background-color: #aac4ff;
                transition: background-color 0.3s;
            }
            .btn-save:hover {
                background-color: #8ab8e0; 
            }
        </style>
    </main>
</x-admin-layout>
