import 'dart:io';

void main() {
  // Input data karyawan
  stdout.write("Masukkan nama karyawan: ");
  String nama = stdin.readLineSync()!;

  stdout.write("Masukkan jumlah jam kerja dalam seminggu: ");
  int jamKerja = int.parse(stdin.readLineSync()!);

  stdout.write("Masukkan upah per jam: ");
  double upahPerJam = double.parse(stdin.readLineSync()!);

  stdout.write("Apakah karyawan tetap? (true/false): ");
  bool statusTetap = stdin.readLineSync()!.toLowerCase() == 'true';

  // Hitung gaji kotor
  double gajiKotor = jamKerja * upahPerJam;

  // Hitung pajak
  double pajak = statusTetap ? gajiKotor * 0.10 : gajiKotor * 0.05;

  // Hitung gaji bersih
  double gajiBersih = gajiKotor - pajak;

  // Tampilkan hasil
  print("\n===== Rincian Gaji Karyawan =====");
  print("Nama Karyawan  : $nama");
  print("Gaji Kotor     : Rp ${gajiKotor.toStringAsFixed(2)}");
  print("Pajak          : Rp ${pajak.toStringAsFixed(2)}");
  print("Gaji Bersih    : Rp ${gajiBersih.toStringAsFixed(2)}");
}
