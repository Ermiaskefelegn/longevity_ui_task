// ignore_for_file: constant_identifier_names

import 'package:get/get.dart';

import '../modules/home/bindings/home_binding.dart';
import '../modules/home/views/home_view.dart';
import '../modules/main_page/bindings/main_page_binding.dart';
import '../modules/main_page/views/main_page_view.dart';
import '../modules/risks/bindings/risks_binding.dart';
import '../modules/risks/views/risks_view.dart';
import '../modules/suggestions/bindings/suggestions_binding.dart';
import '../modules/suggestions/views/suggestions_view.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const INITIAL = Routes.MAIN_PAGE;

  static final routes = [
    GetPage(
      name: _Paths.RISKS,
      page: () => RisksView(),
      binding: RisksBinding(),
    ),
    GetPage(
      name: _Paths.HOME,
      page: () => const HomeView(),
      binding: HomeBinding(),
    ),
    GetPage(
      name: _Paths.SUGGESTIONS,
      page: () => const SuggestionsView(),
      binding: SuggestionsBinding(),
    ),
    GetPage(
      name: _Paths.MAIN_PAGE,
      page: () => const MainPageView(),
      binding: MainPageBinding(),
    ),
  ];
}
