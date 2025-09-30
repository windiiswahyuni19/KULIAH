import 'dart:io';

void main() {
  // Meminta input dari pengguna
  stdout.write("Masukkan sebuah angka: ");
  int? angka = int.tryParse(stdin.readLineSync()!);

  // Validasi input
  if (angka == null) {
    print("Input tidak valid! Harus berupa angka.");
    return;
  }

  // Mengecek apakah angka genap atau ganjil
  if (angka % 2 == 0) {
    print("Angka $angka adalah Genap.");
  } else {
    print("Angka $angka adalah Ganjil.");
  }
}
