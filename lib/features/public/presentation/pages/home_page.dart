import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:vitrine_virtual/core/widgets/body_widget.dart';

import '../../../../core/fakes/products.dart';
import '../../../../core/widgets/header_widget.dart';
import '../../../banners/presentation/widgets/banner_public_widget.dart';
import '../../../product/presentation/widgets/product_category_buttons_widget.dart';
import '../../../product/presentation/widgets/product_display_card_widget.dart';
import '../widgets/product_detail_widget.dart';
import '../widgets/public_menu_drawer_widget.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    double sizeWidth = MediaQuery.of(context).size.width;
    print(sizeWidth);
    return Scaffold(
      drawer: const PublicMenuDrawerWidget(),
      body: BodyWidget(
        children: [
          const ProductCategoryButtonsWidget(),
          BannerWidget(),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 50),
            child: Card(
              elevation: 8,
              child: GridView.count(
                shrinkWrap: true,
                crossAxisCount: sizeWidth < 500
                    ? 1
                    : sizeWidth < 900
                        ? 2
                        : sizeWidth < 1200
                            ? 3
                            : 4,
                mainAxisSpacing: 25,
                children: [
                  ...fakeProduct.map(
                    (e) => Center(
                      child: InkWell(
                        child: ProductDisplayCardWidget(
                          nameProduct: e['name']!,
                          priceProduct: e['price']!,
                          urlImage: e['url']!,
                        ),
                        onTap: () => Get.dialog(
                          const Center(child: ProductDetailWidget()),
                          barrierDismissible: true,
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
          // const FooterWidget()
        ],
      ),
    );
  }
}
