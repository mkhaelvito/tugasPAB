import 'dart:ffi';
import 'dart:io';

void main(){
  while(true){
    stdout.write('Masukkan Bilangan 1 : ');
    double bil1 = double.parse(stdin.readLineSync()!);

    stdout.write('Masukkan Bilangan 2 : ');
    double bil2 = double.parse(stdin.readLineSync()!);

    print('==== Tugas Kalkulator ====');
    print('1. Penjumlahan ');
    print('2. Pengurangan');
    print('3. Perkalian ');
    print('4. Pembagian');

    stdout.write('Pilih Operasi yang ingin dijalankan: ');
    String? pilih = stdin.readLineSync();

    double jwb;

    if(pilih == '1'){
      jwb = bil1 + bil2;
      print('Hasil Penjumlahan dari $bil1 + $bil2 = $jwb');
    }else if(pilih == '2'){
      jwb = bil1 - bil2;
      print('Hasil Pengurangan dari $bil1 - $bil2 = $jwb');
    }else if(pilih == '3'){
      jwb = bil1 * bil2;
      print('Hasil dari Perkalian dari $bil1 * $bil2 = $jwb');
    }else if(pilih == '4'){
      jwb = bil1 / bil2;
      if(bil2 == 0){
        print('Angka tidak boleh ada nol');
      }else{
        print('Hasil Pembagian dari $bil1 / $bil2 = $jwb ');
      }


    }else{
      print('Pilih yang bener dong');
    }

    stdout.write('Apakah Anda Ingin Memakai Kalkulator Lagi?(Y/T)');
    String? ulang = stdin.readLineSync();
    if(ulang == 't' || ulang == 'T'){
      print('Terima Kasih dan Sampai Jumpa Kembali');
    }
  }


}