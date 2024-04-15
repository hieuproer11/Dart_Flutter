import 'package:eats/models/Cart.dart';
import 'package:eats/pages/food/cart_screen.dart';
import 'package:eats/pages/food/popular_food_detail.dart';
import 'package:eats/pages/food/recommended_food_detail.dart';
import 'package:eats/pages/home/main_food_page.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

//import 'helper/dependencies.dart' as dep;

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const GetMaterialApp(
        debugShowCheckedModeBanner: false, title: "EATS", home: CartScreen());
  }
}
