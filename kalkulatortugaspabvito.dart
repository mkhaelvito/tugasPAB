import 'dart:ffi';
import 'dart:io';

void main(){
  while(true){
    stdout.write('Masukan Bilangan pertama : ');
    double bil1 = double.parse(stdin.readLineSync()!);
    
    stdout.write('Masukan Bilangan Kedua : ');
    double bil2 = double.parse((stdin.readLineSync()!));
    
    print('***** Tugas kalkulator *****');
    print('1. Penjumlahan');
    print('2. Pengurangan');
    print('3. Perkalian');
    print('4. Pembagian');
    
    stdout.write('Pilih Operasi Bilagan Yang Ingin Kamu Jalankan :');
    String? pilih = stdin.readLineSync();
    
    double hsl;
    
    if(pilih == '1'){
      hsl = bil1 + bil2;
      print('Hasil Penjumlahan dari $bil1 + $bil2 = $hsl');
    }else if(pilih == '2'){
      hsl = bil1 - bil2;
      print('Hasil Pengurangan dari $bil1 - $bil2 = $hsl');
    }else if(pilih == '3'){
      hsl = bil1 * bil2;
      print('Hasil Perkalian dari $bil1 * $bil2 = $hsl');
    }else if(pilih == '4'){
      hsl = bil1 / bil2;
      if(bil2 == 0){
        print('Bilangan Kedua Tidak Boleh 0');
      }
      print('Hasil Pembagian dari $bil1 / $bil2 = $hsl');
    }
  
  }else{
    print('Pilihan Yang Anda Pilih Tidak Valid');
  }
  
  stdout.write('Apakah Anda Ingin Mengulang Program? (Y/t)');
  String? ulang = stdin.readLineSync();
  if(ulang == 't' || ulang == 'T'){
    print('Terimakasih')
  }
}