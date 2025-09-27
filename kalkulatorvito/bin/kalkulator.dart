class kalkulator{
  double penjumlahan(double bil1, double bil2) => bil1 + bil2;
  double pengurangan(double bil1, double bil2) => bil1 - bil2;
  double perkalian(double bil1, double bil2) => bil1 * bil2;
  double pembagian(double bil1, double bil2){
    if (bil2 == 0) {
      throw Exception('Bilangan Kedua Harus Nol!!!');
    }
    return bil1 / bil2;
  }
}



