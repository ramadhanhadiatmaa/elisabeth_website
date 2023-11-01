import 'dart:convert';

import 'package:elisabeth_website/app/data/models/poli_model.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;

class HomeController extends GetxController {
  RxBool isPoliLoading = true.obs;

  List<PoliModel> poliList = [];

  Future<List<PoliModel>> fetchPoliData() async {
    var baseUrl = '${dotenv.env["BASE_URL"]}';
    var header = '${dotenv.env["BASE_HEAD"]}';
    var key = '${dotenv.env["BASE_KEY"]}';

    final url = '$baseUrl/poli';
    final headers = {header: key};

    final response = await http.get(Uri.parse(url), headers: headers);

    var data = jsonDecode(response.body.toString());

    if (response.statusCode == 200) {
      isPoliLoading(true);
      for (Map i in data) {
        poliList.add(PoliModel.fromJson(i));
      }
      return poliList;
    } else {
      return poliList;
    }
  }
}
