import 'dart:io';
import 'kalkulator.dart';

void main() {
  var kal = kalkulator();
  bool lanjut = true;

  while (lanjut) {
    try {
      print('---------- KALKULATOR ----------');
      stdout.write("Masukkan bilangan pertama: ");
      double bil1 = double.parse(stdin.readLineSync()!);

      stdout.write("Masukkan bilangan kedua: ");
      double bil2 = double.parse(stdin.readLineSync()!);

      print("Pilih operasi:");
      print("[1] Tambah");
      print("[2] Kurang");
      print("[3] Kali");
      print("[4] Bagi");
      stdout.write("Masukkan pilihan (1-4): ");
      int pilihan = int.parse(stdin.readLineSync()!);

      double hasil;
      switch (pilihan) {
        case 1:
          hasil = kal.penjumlahan(bil1, bil2);
          print("Hasil: $hasil");
          break;
        case 2:
          hasil = kal.pengurangan(bil1, bil2);
          print("Hasil: $hasil");
          break;
        case 3:
          hasil = kal.perkalian(bil1,bil2);
          print("Hasil: $hasil");
          break;
        case 4:
          hasil = kal.pembagian(bil1, bil2);
          print("Hasil: $hasil");
          break;
        default:
          print("Pilihan tidak valid!");
      }
    } catch (e) {
      print("Input tidak valid: $e");
    }

    stdout.write("Apakah ingin menghitung lagi? (Y/T): ");
    String? jawab = stdin.readLineSync();
    if (jawab == null || jawab.toUpperCase() != 'Y') {
      lanjut = false;
    }

  }

  print("Terima Kasih");
}
