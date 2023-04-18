import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../core/configs/route_config.dart';
import '../../../core/fakes/all_categories.dart';
import '../../../core/fakes/products.dart';
import '../widgets/all_categories_display_card_widget.dart';
import '../widgets/footer_widget.dart';
import '../widgets/header_widget.dart';

class HomeCategories extends StatelessWidget {
  const HomeCategories({super.key});

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
              itemCount: fakeProduct3.length,
              itemBuilder: (context, index) => InkWell(
                onTap: () => Get.toNamed(RouteConfig.homeCategories),
                child: AllCategoryDisplayCardWidget(
                  nameProduct: fakeProduct3[index]['name']!,
                  urlImage: fakeProduct3[index]['url']!,
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
