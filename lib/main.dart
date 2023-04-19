import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:vitrine_virtual/features/admin/presentation/pages/admin_page.dart';

import 'features/auth/presentation/pages/login_page.dart';
import 'features/product/presentation/pages/product_category_page.dart';
import 'features/product/presentation/pages/product_register_page.dart';
import 'features/public/presentation/pages/contact_page.dart';
import 'features/public/presentation/pages/about_page.dart';
import 'features/company/presentation/pages/company_register_page.dart';
import 'core/configs/route_config.dart';
import 'features/product/presentation/pages/product_detail_page.dart';
import 'features/public/presentation/pages/home_page.dart';

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
      initialRoute: RouteConfig.home,
      debugShowCheckedModeBanner: false,
      getPages: [
        GetPage(name: RouteConfig.home, page: () => const HomePage()),
        GetPage(name: RouteConfig.about, page: () => const AboutPage()),
        GetPage(name: RouteConfig.contact, page: () => const ContactPage()),
        GetPage(name: RouteConfig.companyRegister, page: () => const CompanyRegisterPage()),
        GetPage(name: RouteConfig.productDetail, page: () => const ProductDetailPage()),
        GetPage(name: RouteConfig.producRegister, page: () => const ProductRegisterPage()),
        GetPage(name: RouteConfig.productCategory, page: () => const ProductCategoryPage()),
        GetPage(name: RouteConfig.adminPage, page: () => const Adminpage()),
        GetPage(name: RouteConfig.login, page: () => LoginPage()),
      ],
    );
  }
}
