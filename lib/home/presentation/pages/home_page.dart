import 'package:flutter/material.dart';

import '../../../core/fakes/products.dart';
import '../widgets/product_display_card_widget.dart';
import '../widgets/footer_widget.dart';
import '../widgets/header_widget.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          const HeaderWidget(),
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
              itemCount: fakeProduct.length,
              itemBuilder: (context, index) => ProductDisplayCardWidget(
                nameProduct: fakeProduct[index]['name']!,
                priceProduct: fakeProduct[index]['price']!,
                urlImage: fakeProduct[index]['url']!,
              ),
            ),
          ),
          const FooterWidget()
        ],
      ),
    ));
  }
}
