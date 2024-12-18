# Aplikasi Pemesanan Kendaraan

## Username & Password
- Admin:
  - Username: kevin@gmail.com
  - Password: 12345678
- Verifier:
  - Username: donpollo@gmail.com
  - Password: 87654321

## Versi Teknologi
- **PHP**: 8.1.10
- **MySQL**: 8.0.30
- **Framework**: 10.15.0

## Panduan Instalasi
1. Clone repository: `git clone [https://github.com/Fyodor-DOs/sekawan-technical-test]`
2. Import database "vehicle_reservation.sql" ke direktori local mysql.
3. Install dependencies: `composer install` dan `npm install`
4. Copy `.env.example` ke `.env` dan sesuaikan pengaturan database.
5. Jalankan perintah:
   ```bash
   php artisan migrate
   npm run dev
   php artisan serve
## Panduan Penggunaan Aplikasi
1. User dapat mendaftar dan kemudian masuk menggunakan akun yang telah dibuat.
2. User baru akan diberikan peran sebagai "Admin".
3. Grafik penggunaan kendaraan dapat diakses melalui menu "Dashboard".
4. User dengan peran "Admin" memiliki kemampuan untuk melakukan operasi CRUD pada kendaraan, mengekspor data kendaraan, dan menambahkan data peminjaman kendaraan (dengan memilih kendaraan yang berstatus "tersedia", driver, dan "Verifier").
5. User yang memiliki peran "Verifier" dapat melihat kendaraan yang telah diajukan oleh "Admin".
6. User dengan peran "Verifier" dapat mengubah status kendaraan atau memberikan persetujuan.
7. User yang berhasil masuk dapat melihat riwayat aktivitas di menu "Log Aktivitas".
8. User dapat memperbarui profil dan kata sandi mereka melalui menu "Profil".