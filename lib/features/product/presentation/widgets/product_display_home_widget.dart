import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:vitrine_virtual/core/helpers/regularize_helper.dart';
import 'package:vitrine_virtual/core/widgets/loading_widget.dart';

import 'product_detail_widget.dart';
import '../controllers/product_controller.dart';
import 'product_display_card_widget.dart';

class ProductDisplayHomeWidget extends StatelessWidget {
  ProductDisplayHomeWidget({super.key});

  final _controller = Get.put(ProductController());

  double _getCrossAxisCount(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;

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
    return Obx(
      () => _controller.isLoading.value
          ? const LoadingWidget()
          : _controller.products.isEmpty
              ? const Center(child: Text('Nenhum produto cadastrado'))
              : Container(
                  width: 1300,
                  padding: const EdgeInsets.symmetric(vertical: 15),
                  child: Center(
                    child: Wrap(
                      spacing: 8,
                      runSpacing: 8,
                      alignment: WrapAlignment.center,
                      children: _controller.products
                          .map(
                            (product) => SizedBox(
                              width: _getCrossAxisCount(context),
                              child: InkWell(
                                child: ProductDisplayCardWidget(
                                  nameProduct: product.name,
                                  priceProduct: RegularizeHelper.doubleToRealCurrency(value: product.price),
                                  image: product.image,
                                ),
                                onTap: () => Get.dialog(
                                  Center(child: ProductDetailWidget(product: product)),
                                  barrierDismissible: true,
                                ),
                              ),
                            ),
                          )
                          .toList(),
                    ),
                  ),
                ),
    );
  }
}
