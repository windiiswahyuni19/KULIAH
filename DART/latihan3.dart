import 'dart:io';

void main() {
  //menghitung luas dan keliling
  double panjang;
  double lebar;

  stdout.write("masukkan panjang:");
  panjang= double.parse(stdin.readLineSync()!);

  stdout.write("masukkan lebar:");
  lebar= double.parse(stdin.readLineSync()!);

  double luas = panjang * lebar;
  double keliling = 2 * (panjang + lebar);

  print (luas);
  print (keliling);
}
