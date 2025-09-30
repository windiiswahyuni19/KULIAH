import 'dart:io';

void main() {
  stdout.write("Masukkan angka pertama: ");
  int a = int.parse(stdin.readLineSync()!);

  stdout.write("Masukkan angka kedua: ");
  int b = int.parse(stdin.readLineSync()!);

  int hasil = a + b;
  print("Hasil penjumlahan = $hasil");
}
