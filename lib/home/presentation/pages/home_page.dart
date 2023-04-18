import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../core/configs/route_config.dart';
import '../../../core/fakes/products.dart';

import '../widgets/banner_widget.dart';
import '../widgets/category_buttons_widget.dart';
import '../widgets/product_display_card_widget.dart';
import '../widgets/footer_widget.dart';
import '../widgets/header_widget.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
      primary: false,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          const HeaderWidget(),
          const CategoryButtonsWidget(),
          const BannerWidget(),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 50),
            child: GridView.builder(
              gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
                maxCrossAxisExtent: 300,
                childAspectRatio: 1,
                // crossAxisSpacing: 20,
                // mainAxisSpacing: 20,
              ),
              shrinkWrap: true,
              itemCount: fakeProduct.length,
              itemBuilder: (context, index) => InkWell(
                onTap: () => Get.toNamed(RouteConfig.homeProductDetail),
                child: ProductDisplayCardWidget(
                  nameProduct: fakeProduct[index]['name']!,
                  priceProduct: fakeProduct[index]['price']!,
                  urlImage: fakeProduct[index]['url']!,
                ),
              ),
            ),
          ),
          const FooterWidget()
        ],
      ),
    ));
  }
}
