import 'dart:io';
void main(){
  int ? number;

  stdout.write ("Masukkan number (1-12) :");
  number = int.parse(stdin.readLineSync()!);

  switch (number){
    case 1:
      print("Bulan Januari");
      break;
    case 2:
      print("Bulan Februari");
      break;
    case 3:
      print("Bulan Maret");
      break;
    case 4:
      print("Bulan April");
      break;
    case 5:
      print("Bulan mei");
      break;
    case 6:
      print("Bulan Juni");
      break;
    case 7:
      print("Bulan Juli");
      break;
    case 8:
      print("Bulan Agustus");
      break;
    case 9:
      print("Bulan september");
      break;
    case 10:
      print("Bulan oktober");
      break;
    case 11:
      print("Bulan november");
      break;
    case 12:
      print("Bulan desember");
      break;
    default :
      print("invalid");
  }
  
}