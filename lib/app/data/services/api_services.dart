import 'package:elisabeth_website/app/data/models/dokter_model.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:http/http.dart' as http;

import '../models/poli_model.dart';

class ApiService {
  Future<List<DokterModel>> fetchDokterData() async {
    var baseUrl = '${dotenv.env["BASE_URL"]}';
    var header = '${dotenv.env["BASE_HEAD"]}';
    var key = '${dotenv.env["BASE_KEY"]}';

    final url = '$baseUrl/dokter';
    final headers = {header: key};

    final response = await http.get(Uri.parse(url), headers: headers);

    if (response.statusCode == 200) {
      return dokterModelFromJson(response.body);
    }
    {
      throw Exception("Network Error");
    }
  }

  Future<List<PoliModel>> fetchPoliData() async {
    var baseUrl = '${dotenv.env["BASE_URL"]}';
    var header = '${dotenv.env["BASE_HEAD"]}';
    var key = '${dotenv.env["BASE_KEY"]}';

    final url = '$baseUrl/poli';
    final headers = {header: key};

    final response = await http.get(Uri.parse(url), headers: headers);

    if (response.statusCode == 200) {
      return poliModelFromJson(response.body);
    } else {
      throw Exception("Network Error");
    }
  }
}
