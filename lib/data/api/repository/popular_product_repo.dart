import 'package:foodie/data/api/api_client.dart';
import 'package:foodie/utils/app_constants.dart';
import 'package:get/get.dart';

class PopularProductRepo extends GetxService {
  final ApiClient apiClient;
  PopularProductRepo({required this.apiClient});
  Future<Response> getPopularProductList() async {
    return await apiClient
        .getData("https://mocki.io/v1/c7117e53-da65-414b-b81b-596ed7e80f1f");
  }
}
