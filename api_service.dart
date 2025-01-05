import 'dart:convert';
import 'package:http/http.dart' as http;

class ApiService {
  static const String baseUrl = "http://26.252.237.152/flutter_api";

  static Future<List<dynamic>> fetchCars(
      double minPrice, double maxPrice) async {
    final response = await http.get(
      Uri.parse(
          '$baseUrl/fetch_cars.php?minPrice=$minPrice&maxPrice=$maxPrice'),
    );
    print(response.body); // Add this line to see the API response
    if (response.statusCode == 200) {
      return jsonDecode(response.body);
    } else {
      throw Exception("Failed to load cars");
    }
  }
}
