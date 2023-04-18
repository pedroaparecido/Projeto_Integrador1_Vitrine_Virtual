import 'package:flutter/material.dart';

class AllCategoryDisplayCardWidget extends StatelessWidget {
  const AllCategoryDisplayCardWidget({
    super.key,
    required this.urlImage,
    required this.nameProduct,
  });

  final String urlImage;
  final String nameProduct;

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
            ],
        ),
      ),
    );
  }
}
