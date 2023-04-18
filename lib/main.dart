import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:vitrine_virtual/admin/auth/presentation/pages/login_page.dart';
import 'package:vitrine_virtual/admin/register_product_page.dart';
import 'package:vitrine_virtual/home/presentation/pages/home_products.dart';

import 'admin/register_category_page.dart';
import 'admin/register_company_page.dart';
import 'core/configs/route_config.dart';
import 'home/presentation/pages/home_category.dart';
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
      initialRoute: RouteConfig.registerProductPage,
      getPages: [
        GetPage(name: RouteConfig.home, page: () => const HomePage()),
        GetPage(name: RouteConfig.login, page: () => LoginPage()),
        GetPage(name: RouteConfig.homeProductDetail, page: () => const HomeDetailProductPage()),
        GetPage(name: RouteConfig.companyPage, page: () => const RegisterCompanyPage()),
        GetPage(name: RouteConfig.registerProductPage, page: () => RegisterProductPage()),
        GetPage(name: RouteConfig.registerCategoryPage, page: () => const RegisterCategoryPage()),
        GetPage(name: RouteConfig.homeProducts, page: () => const HomeProducts()),
        GetPage(name: RouteConfig.homeCategories, page: () => const HomeCategories()),
      ],
    );
  }
}
