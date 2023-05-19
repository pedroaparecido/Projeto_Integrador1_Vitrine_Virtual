import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../core/fakes/products.dart';
import '../../../public/presentation/widgets/product_detail_widget.dart';
import 'product_display_card_widget.dart';

class ProductDisplayHomeWidget extends StatelessWidget {
  const ProductDisplayHomeWidget({super.key});

  double _getCrossAxisCount(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    // if (screenWidth >= 1200) {
    //   return screenWidth / 5;
    // } else if (screenWidth >= 800) {
    //   return screenWidth / 4;
    // } else if (screenWidth >= 600) {
    //   return screenWidth / 3;
    // } else {
    //   return screenWidth / 2;
    // }

    if (screenWidth >= 1200) {
      return 1200 / 5.1;
    } else if (screenWidth >= 800) {
      return screenWidth / 4.1;
    } else if (screenWidth >= 600) {
      return screenWidth / 3.1;
    } else {
      return screenWidth / 2.1;
    }
  }

  @override
  Widget build(BuildContext context) {
    print(_getCrossAxisCount(context));
    return Container(
      width: 1300,
      padding: const EdgeInsets.symmetric(vertical: 15),
      child: Center(
        child: Wrap(
          spacing: 8,
          runSpacing: 8,
          alignment: WrapAlignment.center,
          children: [
            ...fakeProduct.map(
              (e) => SizedBox(
                width: _getCrossAxisCount(context),
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
    );
  }
}
