import 'package:elisabeth_website/app/data/models/dokter_model.dart';
import 'package:elisabeth_website/app/data/models/poli_model.dart';
import 'package:elisabeth_website/app/data/services/api_services.dart';
import 'package:get/get.dart';

class HomeController extends GetxController {
  RxBool isPoliLoading = true.obs;
  RxBool isDokterLoading = true.obs;

  var poliList = <PoliModel>[].obs;
  var dokterList = <DokterModel>[].obs;

  var gambarSatu = "".obs;

  @override
  void onInit() {
    fetchData();
    fetchDokterData();
    super.onInit();
  }

  Future<void> fetchData() async {
    try {
      isPoliLoading(true);

      var data = await ApiService().fetchPoliData();

      poliList.addAll(data);
    } catch (e) {
      Get.snackbar("Network Error", "$e");
    } finally {
      isPoliLoading(false);
    }
  }

  Future<void> fetchDokterData() async {
    try {
      isDokterLoading(true);

      var data = await ApiService().fetchDokterData();

      dokterList.addAll(data);
    } catch (e) {
      Get.snackbar("Network Error", "$e");
    } finally {
      isDokterLoading(false);
    }
  }
}
