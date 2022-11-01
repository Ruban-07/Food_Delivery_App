import 'package:foodie/data/api/repository/popular_product_repo.dart';
import 'package:foodie/utils/app_constants.dart';
import 'package:get/get.dart';
import 'package:foodie/data/api/api_client.dart';

import '../controllers/popular_product_controller.dart';

Future<void> init() async {
  // Api Client
  Get.lazyPut(() => ApiClient(appBaseUrl: AppConstants.BASE_URL));

  // Repos
  Get.lazyPut(() => PopularProductRepo(apiClient: Get.find()));

  // Controllers
  Get.lazyPut(() => PopularProductController(popularProductRepo: Get.find()));
}
