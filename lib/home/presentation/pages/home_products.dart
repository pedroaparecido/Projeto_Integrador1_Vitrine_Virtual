import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../core/configs/route_config.dart';
import '../../../core/fakes/all_products.dart';
import '../widgets/all_products_display_card_widget.dart';
import '../widgets/footer_widget.dart';
import '../widgets/header_widget.dart';

class HomeProducts extends StatelessWidget {
  const HomeProducts({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          const HeaderWidget(),
          const Text('Categoria do produto x',
          style: TextStyle(
            fontSize:20,
            fontWeight: FontWeight.bold,
          ), textAlign: TextAlign.center,),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 50),
            child: GridView.builder(
              gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
                maxCrossAxisExtent: 300,
                childAspectRatio: 1,
                crossAxisSpacing: 20,
                mainAxisSpacing: 20,
              ),
              shrinkWrap: true,
              itemCount: fakeProduct2.length,
              itemBuilder: (context, index) => InkWell(
                onTap: () => Get.toNamed(RouteConfig.homeProducts),
                child: AllProductsDisplayCardWidget(
                  nameProduct: fakeProduct2[index]['name']!,
                  priceProduct: fakeProduct2[index]['price']!,
                  detailProduct: fakeProduct2[index]['detail']!,
                  urlImage: fakeProduct2[index]['url']!,
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
