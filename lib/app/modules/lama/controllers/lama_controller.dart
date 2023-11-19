import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:get/get.dart';
import 'package:qr_flutter/qr_flutter.dart';

import '../../../data/constants/color.dart';
import '../../../data/widgets/tools/text_widget.dart';

import 'package:http/http.dart' as http;

class LamaController extends GetxController {
  var bayar = <String>[].obs;
  var poli = <String>[].obs;
  var tanggal = <String>[].obs;
  var bulan = <String>[].obs;

  var bayarSelected = "Umum".obs;
  var poliSelected = "Umum".obs;
  var tanggalSelected = "1".obs;
  var bulanSelected = "November".obs;
  var id = "".obs;

  TextEditingController ktp = TextEditingController();
  TextEditingController rm = TextEditingController();
  TextEditingController nama = TextEditingController();
  TextEditingController bpjs = TextEditingController();
  TextEditingController hp = TextEditingController();
  TextEditingController alamat = TextEditingController();
  TextEditingController lahir = TextEditingController();

  @override
  void onInit() {
    fetchBayar();
    fetchPoli();
    fetchTanggal();
    fetchBulan();
    super.onInit();
  }

  Future<void> fetchBayar() async {
    await Future.delayed(const Duration(seconds: 1));
    bayar.value = ['Umum', 'BPJS', 'Rekanan'];
  }

  Future<void> fetchPoli() async {
    await Future.delayed(const Duration(seconds: 1));
    poli.value = ['Umum', 'Penyakit Dalam', 'Anak', 'Kandungan', 'Mata'];
  }

  Future<void> fetchBulan() async {
    await Future.delayed(const Duration(seconds: 1));
    bulan.value = [
      'Januari',
      'Februari',
      'Maret',
      'April',
      'Mei',
      'Juni',
      'Juli',
      'Agustus',
      'September',
      'Oktober',
      'November',
      'Desember',
    ];
  }

  Future<void> fetchTanggal() async {
    await Future.delayed(const Duration(seconds: 1));
    tanggal.value = [
      '1',
      '2',
      '3',
      '4',
      '5',
      '6',
      '7',
      '8',
      '9',
      '10',
      '11',
      '12',
      '13',
      '14',
      '15',
      '16',
      '17',
      '18',
      '19',
      '20',
      '21',
      '22',
      '23',
      '24',
      '25',
      '26',
      '27',
      '28',
      '29',
      '30',
      '31',
    ];
  }

  Future<void> postData() async {
    try {
      var baseUrl = '${dotenv.env["BASE_URL_B"]}';
      var header = '${dotenv.env["BASE_HEADS"]}';
      var key = '${dotenv.env["BASE_KEY"]}';

      final url = '$baseUrl/api/';
      final headers = {header: key};

      Map<String, dynamic> body = {
        "ktp": ktp.text,
        "nama": nama.text,
        "bpjs": bpjs.text,
        "bayar": bayarSelected.value,
        "lahir": lahir.text,
        "telepon": hp.text,
        "alamat": alamat.text,
        "poli": poliSelected.value,
        "tanggal": tanggalSelected.value,
        "bulan": bulanSelected.value,
        "tahun": "2023",
        "selesai": "Belum"
      };

      final response =
          await http.post(Uri.parse(url), body: body, headers: headers);

      if (response.statusCode == 200) {
        if (ktp.text.isNotEmpty) {
          var name = nama.text;
          var type = bayarSelected.value;
          var noKtp = ktp.text;

          Get.defaultDialog(
              title: "",
              content: Column(
                children: [
                  const TextWidgetMon(
                    align: TextAlign.center,
                    title: "RSU SANTA ELISABETH SAMBAS",
                    size: 16,
                    weight: FontWeight.w800,
                    color: cBlack,
                  ),
                  const TextWidgetMon(
                    align: TextAlign.center,
                    title: "Jalan Gusti Hamzah No.29 Sambas 79411",
                    size: 12,
                    weight: FontWeight.w400,
                    color: cBlack,
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SizedBox(
                        height: 150,
                        width: 150,
                        child: QrImageView(
                          data: noKtp,
                          version: QrVersions.auto,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Container(
                    decoration: BoxDecoration(
                        border: Border.all(
                      width: 1,
                      color: cBlack,
                    )),
                    child: Padding(
                      padding: const EdgeInsets.all(2.0),
                      child: TextWidgetMon(
                        title: type,
                        size: 24,
                        weight: FontWeight.w800,
                        color: cBlack,
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  const TextWidgetMon(
                    title: "Pendaftaran Pasien:",
                    size: 8,
                    weight: FontWeight.w400,
                    color: cBlack,
                  ),
                  TextWidgetMon(
                    title: name,
                    size: 12,
                    weight: FontWeight.w400,
                    color: cBlack,
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  const TextWidgetMon(
                    title: "Poli:",
                    size: 8,
                    weight: FontWeight.w400,
                    color: cBlack,
                  ),
                  TextWidgetMon(
                    title: poliSelected.value,
                    size: 12,
                    weight: FontWeight.w400,
                    color: cBlack,
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  const TextWidgetMon(
                    title: "Pada:",
                    size: 8,
                    weight: FontWeight.w400,
                    color: cBlack,
                  ),
                  TextWidgetMon(
                    title:
                        "${tanggalSelected.value} ${bulanSelected.value} 2023",
                    size: 12,
                    weight: FontWeight.w400,
                    color: cBlack,
                  ),
                  const SizedBox(
                    height: 25,
                  ),
                  const TextWidgetMon(
                    align: TextAlign.center,
                    title:
                        "*ScreenShoot bukti pendaftaran, dan tunjukan bukti ini\nkepada petugas di loket pendaftaran.",
                    size: 8,
                    weight: FontWeight.w500,
                    color: cBlack,
                  ),
                ],
              ));

          ktp.clear();
          rm.clear();
          nama.clear();
          bpjs.clear();
          hp.clear();
          alamat.clear();
          lahir.clear();
        } else {
          Get.snackbar("Error Information", "Nomor KTP tidak boleh kosong");
        }
      } else {
        Get.snackbar("${response.statusCode}", response.body);
      }
    } catch (e) {
      Get.snackbar("Error Information", "$e");
    }
  }
}
