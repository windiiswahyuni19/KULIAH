import 'dart:io';

void main() {
  stdout.write("Masukkan umur Anda: ");
  int? umur = int.tryParse(stdin.readLineSync()!);

  if (umur == null || umur < 0) {
    print("Input tidak valid!");
  } else if (umur <= 12) {
    print("Kategori: Anak-anak");
  } else if (umur <= 17) {
    print("Kategori: Remaja");
  } else if (umur <= 59) {
    print("Kategori: Dewasa");
  } else {
    print("Kategori: Lansia");
  }
}
