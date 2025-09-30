import 'dart:io';

void main() {
  // Menampilkan menu
  print("=== Kalkulator Sederhana ===");
  print("1. Penjumlahan");
  print("2. Pengurangan");
  print("3. Perkalian");
  print("4. Pembagian");

  stdout.write("Pilih operasi (1-4): ");
  int? pilihan = int.tryParse(stdin.readLineSync()!);

  // Validasi pilihan menu
  if (pilihan == null || pilihan < 1 || pilihan > 4) {
    print("Pilihan tidak valid! Silakan pilih angka 1-4.");
    return;
  }

  // Meminta input dua angka
  stdout.write("Masukkan angka pertama: ");
  double? angka1 = double.tryParse(stdin.readLineSync()!);

  stdout.write("Masukkan angka kedua: ");
  double? angka2 = double.tryParse(stdin.readLineSync()!);

  if (angka1 == null || angka2 == null) {
    print("Input angka tidak valid!");
    return;
  }

  // Variabel untuk hasil
  double hasil;

  // Melakukan operasi sesuai pilihan
  switch (pilihan) {
    case 1:
      hasil = angka1 + angka2;
      print("Hasil penjumlahan = $hasil");
      break;
    case 2:
      hasil = angka1 - angka2;
      print("Hasil pengurangan = $hasil");
      break;
    case 3:
      hasil = angka1 * angka2;
      print("Hasil perkalian = $hasil");
      break;
    case 4:
      if (angka2 == 0) {
        print("Error: Tidak bisa membagi dengan nol!");
      } else {
        hasil = angka1 / angka2;
        print("Hasil pembagian = $hasil");
      }
      break;
  }
}
