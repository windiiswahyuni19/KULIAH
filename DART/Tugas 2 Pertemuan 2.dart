import 'dart:io';

void main() {
  // Meminta input skor dari pengguna
  stdout.write("Masukkan skor Anda (0 - 100): ");
  int? skor = int.tryParse(stdin.readLineSync()!);

  // Validasi input
  if (skor == null || skor < 0 || skor > 100) {
    print("Error: Skor tidak valid! Masukkan angka antara 0 sampai 100.");
    return;
  }

  // Menentukan grade menggunakan if-else
  String grade;
  if (skor >= 85) {
    grade = "A";
  } else if (skor >= 70) {
    grade = "B";
  } else if (skor >= 60) {
    grade = "C";
  } else if (skor >= 50) {
    grade = "D";
  } else {
    grade = "E";
  }

  // Menampilkan hasil
  print("Skor Anda: $skor");
  print("Grad
