import 'dart:io';

class Mahasiswa {
  String npm;
  String nama;
  String jurusan;
  int angkatan;

  Mahasiswa(this.npm, this.nama, this.jurusan, this.angkatan);

  void tampilkanDetail() {
    print("=== Detail Mahasiswa ===");
    print("NPM      : $npm");
    print("Nama     : $nama");
    print("Jurusan  : $jurusan");
    print("Angkatan : $angkatan");
  }
}

void main() {
  List<Mahasiswa> daftarMahasiswa = [];

  print("=== Entri Data Mahasiswa (Minimal 10) ===");
  for (int i = 0; i < 10; i++) {
    stdout.write("Masukkan NPM Mahasiswa ke-${i + 1}: ");
    String npm = stdin.readLineSync()!;

    stdout.write("Masukkan Nama Mahasiswa ke-${i + 1}: ");
    String nama = stdin.readLineSync()!;

    stdout.write("Masukkan Jurusan Mahasiswa ke-${i + 1}: ");
    String jurusan = stdin.readLineSync()!;

    stdout.write("Masukkan Angkatan Mahasiswa ke-${i + 1}: ");
    int angkatan = int.parse(stdin.readLineSync()!);

    daftarMahasiswa.add(Mahasiswa(npm, nama, jurusan, angkatan));
    print("");
  }

  // Cari data mahasiswa
  stdout.write("Masukkan NPM yang ingin dicari: ");
  String cariNpm = stdin.readLineSync()!;

  Mahasiswa? hasilCari = daftarMahasiswa.firstWhere(
    (mhs) => mhs.npm == cariNpm,
    orElse: () => Mahasiswa("", "", "", 0),
  );

  if (hasilCari.npm != "") {
    hasilCari.tampilkanDetail();
  } else {
    print("Data mahasiswa dengan NPM $cariNpm tidak ditemukan.");
  }
}