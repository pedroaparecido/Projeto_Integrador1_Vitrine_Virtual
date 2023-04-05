import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:vitrine_virtual/admin/auth/presentation/pages/login_page.dart';

import 'core/configs/route_config.dart';
import 'home/presentation/pages/home_detail_product_page.dart';
import 'home/presentation/pages/home_page.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Vitrine Virtual',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialRoute: '/home',
      getPages: [
        GetPage(name: RouteConfig.home, page: () => const HomePage()),
        GetPage(name: RouteConfig.login, page: () => LoginPage()),
        GetPage(name: RouteConfig.homeProductDetail, page: () => const HomeDetailProductPage()),
      ],

    );
  }
}
