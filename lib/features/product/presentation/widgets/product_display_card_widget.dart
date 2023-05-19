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
      height: 300, // Defina a altura desejada para o card
      child: Card(
        elevation: 6,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Expanded(
              flex: 8, // Ajuste a proporção de altura da imagem
              child: Image.network(
                urlImage,
                fit: BoxFit.fitHeight,
              ),
            ),
            const Divider(),
            Expanded(
              flex: 4,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  children: [
                    Expanded(
                      child: Text(
                        nameProduct,
                        style: const TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                    Expanded(
                      child: Text(
                        priceProduct,
                        style: const TextStyle(
                          fontSize: 30,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
