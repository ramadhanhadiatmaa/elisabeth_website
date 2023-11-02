import 'package:elisabeth_website/app/data/models/poli_model.dart';
import 'package:elisabeth_website/app/data/services/api_services.dart';
import 'package:get/get.dart';

class HomeController extends GetxController {
  RxBool isPoliLoading = true.obs;

  var poliList = <PoliModel>[].obs;

  @override
  void onInit() {
    fetchData();
    super.onInit();
  }

  Future<void> fetchData() async {
    try {
      isPoliLoading(true);

      var data = await ApiService().fetchPoliData();

      poliList.addAll(data);
    } catch (e) {
      print(e);
    } finally {
      isPoliLoading(false);
    }
  }
}
