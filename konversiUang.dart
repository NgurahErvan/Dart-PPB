void main() {
  const nilaiTukar = 14300;
  double konversiDolarKeRupiah(double dolar) {
    return dolar * nilaiTukar;
  }
  stdout.write("Masukkan jumlah Dolar AS: ");
  String? inputDolar = stdin.readLineSync();
  double jumlahDolar = double.tryParse(inputDolar ?? '') ?? 0;
  double rupiah = konversiDolarKeRupiah(jumlahDolar);
  print("$jumlahDolar Dolar AS = $rupiah Rupiah");
}