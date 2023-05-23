import 'dart:developer';

import 'package:flutter/material.dart';

import '../../../banners/presentation/widgets/banner_public_widget.dart';
import '../../../product/presentation/widgets/product_display_home_widget.dart';
import '../widgets/public_body_widget.dart';
import '../widgets/public_menu_drawer_widget.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    double sizeWidth = MediaQuery.of(context).size.width;
    log(sizeWidth.toString());
    return Scaffold(
      drawer: const PublicMenuDrawerWidget(),
      body: PublicBodyWidget(children: [
        const SizedBox(height: 30),
        BannerWidget(),
        ProductDisplayHomeWidget(),
      ]),
    );
  }
}
