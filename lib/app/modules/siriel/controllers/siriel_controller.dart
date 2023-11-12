import 'dart:convert';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;

class SirielController extends GetxController {
  var markusNicu = "".obs;
  var markusVvip = "".obs;
  var markusVip = "".obs;
  var lukas = "".obs;
  var maria = "".obs;
  var fransiskus = "".obs;
  var matius = "".obs;
  var teresia = "".obs;
  var teresiaTiga = "".obs;
  var yosef = "".obs;
  var klara = "".obs;
  var egidio = "".obs;
  var yohanes = "".obs;

  @override
  void onInit() {
    fetchData();
    super.onInit();
  }

  Future<void> fetchData() async {
    var baseUrl = '${dotenv.env["BASE_URL_K"]}';
    var header = '${dotenv.env["BASE_HEADS"]}';
    var key = '${dotenv.env["BASE_KEY"]}';

    final url = '$baseUrl/api/1';

    final headers = {header: key};

    try {
      final response = await http.get(Uri.parse(url), headers: headers);

      if (response.statusCode == 200) {
        final result = jsonDecode(response.body);

        markusNicu.value = result['markus_nicu'].toString();
        markusVvip.value = result['markus_vvip'].toString();
        markusVip.value = result['markus_vip'].toString();
        lukas.value = result['lukas'].toString();
        maria.value = result['maria'].toString();
        fransiskus.value = result['fransiskus'].toString();
        matius.value = result['matius'].toString();
        teresia.value = result['teresia'].toString();
        teresiaTiga.value = result['teresia_tiga'].toString();
        yosef.value = result['yosef'].toString();
        klara.value = result['klara'].toString();
        egidio.value = result['egidio'].toString();
        yohanes.value = result['yohanes'].toString();
      } else {
        printError();
      }
    } catch (e) {
      printError();
    }
  }
}
