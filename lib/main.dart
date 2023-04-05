import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'home/presentation/pages/home_detail_product_page.dart';

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
      home: const HomeDetailProductPage(),
    );
  }
}
