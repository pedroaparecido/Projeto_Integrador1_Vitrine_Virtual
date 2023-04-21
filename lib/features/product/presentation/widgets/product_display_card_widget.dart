import 'package:flutter/material.dart';

class ProductDisplayCardWidget extends StatelessWidget {
  const ProductDisplayCardWidget({
    super.key,
    required this.urlImage,
    required this.nameProduct,
    required this.priceProduct,
  });

  final String urlImage;
  final String nameProduct;
  final String priceProduct;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 280,
      width: 250,
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
              priceProduct,
              style: const TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
