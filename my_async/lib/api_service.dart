import 'dart:convert';
import 'package:http/http.dart' as http;

// Kelas untuk menghubungkan dengan API Alpha Vantage
class FinanceApi {
  final String apiKey;

  FinanceApi(this.apiKey);

  // Fungsi untuk mengambil data harga saham
  Future<Map<String, dynamic>> getStockData(String symbol) async {
    final url = Uri.parse('https://www.alphavantage.co/query?function=TIME_SERIES_INTRADAY&symbol=$symbol&interval=5min&apikey=$apiKey');
    
    try {
      final response = await http.get(url);
      
      if (response.statusCode == 200) {
        final data = json.decode(response.body);
        if (data['Time Series (5min)'] != null) {
          return data['Time Series (5min)'];
        } else {
          throw Exception('Data tidak ditemukan untuk simbol saham tersebut.');
        }
      } else {
        throw Exception('Gagal memuat data: ${response.statusCode}');
      }
    } catch (e) {
      throw Exception('Terjadi kesalahan: $e');
    }
  }
}
