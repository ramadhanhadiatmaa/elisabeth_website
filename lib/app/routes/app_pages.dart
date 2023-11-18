import 'package:get/get.dart';

import '../modules/about/bindings/about_binding.dart';
import '../modules/about/views/about_view.dart';
import '../modules/baru/bindings/baru_binding.dart';
import '../modules/baru/views/baru_view.dart';
import '../modules/booking/bindings/booking_binding.dart';
import '../modules/booking/views/booking_view.dart';
import '../modules/contact/bindings/contact_binding.dart';
import '../modules/contact/views/contact_view.dart';
import '../modules/doctor/bindings/doctor_binding.dart';
import '../modules/doctor/views/doctor_view.dart';
import '../modules/home/bindings/home_binding.dart';
import '../modules/home/views/home_view.dart';
import '../modules/lama/bindings/lama_binding.dart';
import '../modules/lama/views/lama_view.dart';
import '../modules/privacy/bindings/privacy_binding.dart';
import '../modules/privacy/views/privacy_view.dart';
import '../modules/siriel/bindings/siriel_binding.dart';
import '../modules/siriel/views/siriel_view.dart';
import '../modules/terms/bindings/terms_binding.dart';
import '../modules/terms/views/terms_view.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const initial = Routes.home;

  static final routes = [
    GetPage(
      name: _Paths.home,
      page: () => HomeView(),
      binding: HomeBinding(),
    ),
    GetPage(
      name: _Paths.about,
      page: () => AboutView(),
      binding: AboutBinding(),
    ),
    GetPage(
      name: _Paths.contact,
      page: () => const ContactView(),
      binding: ContactBinding(),
    ),
    GetPage(
      name: _Paths.booking,
      page: () => BookingView(),
      binding: BookingBinding(),
    ),
    GetPage(
      name: _Paths.siriel,
      page: () => SirielView(),
      binding: SirielBinding(),
    ),
    GetPage(
      name: _Paths.terms,
      page: () => const TermsView(),
      binding: TermsBinding(),
    ),
    GetPage(
      name: _Paths.privacy,
      page: () => const PrivacyView(),
      binding: PrivacyBinding(),
    ),
    GetPage(
      name: _Paths.doctor,
      page: () => const DoctorView(),
      binding: DoctorBinding(),
    ),
    GetPage(
      name: _Paths.baru,
      page: () => BaruView(),
      binding: BaruBinding(),
    ),
    GetPage(
      name: _Paths.lama,
      page: () => LamaView(),
      binding: LamaBinding(),
    ),
  ];
}
