import 'package:flutter/material.dart';

class AllProductsDisplayCardWidget extends StatelessWidget {
  const AllProductsDisplayCardWidget({
    super.key,
    required this.urlImage,
    required this.nameProduct,
    required this.detailProduct,
    required this.priceProduct,
  });

  final String urlImage;
  final String nameProduct;
  final String detailProduct;
  final String priceProduct;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Card(
        elevation: 6,
        child: Column(
          children: [
            Image.network(
              urlImage,
              height: 159,
            ),
            const Divider(),
            Text(
              nameProduct,
              style: const TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w600,
              ),
            ),
            Text(
              detailProduct,
              style: const TextStyle(
                fontSize: 10,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              priceProduct,
              style: const TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
