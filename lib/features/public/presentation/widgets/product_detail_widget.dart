import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ProductDetailWidget extends StatelessWidget {
  const ProductDetailWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 600,
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 50, vertical: 50),
            child: Card(
                elevation: 5,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    children: [
                      const Text(
                        'Nome Produto',
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const Divider(),
                      Image.asset(
                        'assets/images/bud.jpg',
                        width: 250.0,
                        height: 250.0,
                      ),
                      const SizedBox(height: 16),
                      const Text(
                        'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Curabitur ullamcorper '
                        'efficitur iaculis. Curabitur pellentesque eleifend orci eu sagittis. Morbi  '
                        'eleifend nunc et erat fermentum, quis pharetra felis dictum.',
                        style: TextStyle(fontSize: 14, fontWeight: FontWeight.w600),
                        textAlign: TextAlign.justify,
                      ),
                      const Text(
                        'R\$8,90',
                        style: TextStyle(
                          fontSize: 40,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(12.0),
                        child: ElevatedButton(onPressed: Get.back, child: const Text('Fechar')),
                      )
                    ],
                  ),
                )),
          ),
        ],
      ),
    );
  }
}
