<x-admin-layout title="Profil">
    <main class="xl:ml-68.5 mt-4 my-auto md:flex md:justify-center mx-3" > 
        <div class="container mx-auto max-w-lg p-4 border-2 border-solid bg-white rounded-lg justify-center md:w-full" style="background-color: #eef1ff;">
            <div class="break-words mb-4 bg-white border-0 border-solid rounded-[12px] bg-clip-border" style="background-color: #eef1ff;">
                <div class="w-full mx-auto p-2">
                    <div class="flex w-full">
                        <div class="max-w-full px-4 lg:w-1/2 lg:flex lg:flex-none lg:pt-0">
                            <div class="flex h-full">
                                <h3 class="font-bold text-2xl w-full">Profil</h3>
                            </div>
                        </div>
                    </div>
                    <div class="container h-full w-full p-4 rounded-2xl bg-clip-border md:w-full">
                        <form action="{{ route('users.update', $user->id) }}" method="POST">
                            @csrf
                            @method('PUT')
                            @foreach ($profil as $p)
                                <div>
                                    <label for="name"
                                        class="block mb-1 mt-4 text-sm font-medium text-hitam md:text-lg">
                                        Nama Lengkap
                                    </label>
                                    <input type="text" name="name" id="name"
                                        class="bg-white border border-gray-300 text-gray-700 text-sm rounded-lg focus:ring-blue-500 focus:border-blue-500 block w-full p-2.5"
                                        value="{{ $p->name }}">
                                    @error('name')
                                        <div class="mt-1 text-sm text-red-600" id="name">
                                            {{ $message }}
                                        </div>
                                    @enderror
                                </div>
                                <div>
                                    <label for="role"
                                        class="block mb-1 mt-4 text-sm font-medium text-hitam md:text-lg">
                                        Role
                                    </label>
                                    <select name="role" id="role"
                                        class="bg-base_00 border border-base_80 text-hitam text-sm rounded-[12px] focus:ring-blue-500 focus:border-blue-500 block w-full p-2.5">
                                        @foreach ($roles as $role)
                                            <option value="{{ $role->name }}"
                                                {{ $user->hasRole($role->name) ? 'selected' : '' }}>
                                                {{ $role->name }}
                                            </option>
                                        @endforeach
                                    </select>
                                </div>
                                <button type="submit" class="btn-save px-42 w-full py-2 mt-8 rounded-[12px] border-gray-500 text-xl text-semibold text-center text-white cursor-pointer md:px-64">
                                    <div>
                                        Simpan
                                    </div>
                                </button>
                                
                            @endforeach
                        </form>
                        <div class="flex mx-auto">
                            <a href="/profile/password"
                                class="px-auto mx-auto w-full py-2 mt-8 bg-orange-500 rounded-[12px] border-gray-500 text-xl text-semibold text-center text-white cursor-pointer hover:opacity-90 md:px-52">
                                Edit Password
                            </a>
                        </div>
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
