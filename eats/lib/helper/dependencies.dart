/*
import 'package:eats/Data/api/api_client.dart';
import 'package:eats/Data/repository/popular_product_repo.dart';
import 'package:eats/controllers/popular_product_controller.dart';
import 'package:get/get.dart';

Future<void> init() async {
  //api client
  Get.lazyPut(() => ApiClient(appBaseUrl: "https//www.dbestech.com"));

  //repos
  Get.lazyPut(() => PopularProductRepo(apiClient: Get.find()));

  //controllers
  Get.lazyPut(() => PopularProductController(popularProductRepo: Get.find()));
}
*/