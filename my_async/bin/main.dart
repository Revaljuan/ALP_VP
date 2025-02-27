import 'dart:io';
import 'package:my_async/api_service.dart';


Future<void> main() async {
  final String apiKey = 'YOUR_API_KEY'; // Ganti dengan API Key Anda
  final FinanceApi financeApi = FinanceApi(apiKey);

  print('Masukkan simbol saham (misal: AAPL untuk Apple):');
  String? symbol = stdin.readLineSync();

  if (symbol != null && symbol.isNotEmpty) {
    try {
      var stockData = await financeApi.getStockData(symbol);
      
      print('Data Saham untuk $symbol:');
      stockData.forEach((time, data) {
        print('Waktu: $time');
        print('Harga Open: ${data['1. open']}');
        print('Harga High: ${data['2. high']}');
        print('Harga Low: ${data['3. low']}');
        print('Harga Close: ${data['4. close']}');
        print('Volume: ${data['5. volume']}\n');
      });
    } catch (e) {
      print('Terjadi kesalahan: $e');
    }
  } else {
    print('Simbol saham tidak boleh kosong.');
  }
}
