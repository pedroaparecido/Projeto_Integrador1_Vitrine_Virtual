import 'package:flutter/material.dart';

import '../../../../core/widgets/footer_widget.dart';
import '../../../../core/widgets/header_widget.dart';

class ProductDetailPage extends StatelessWidget {
  const ProductDetailPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
      child: Column(
        children: [
          const HeaderWidget(),
          const Text(
            'Nome Produto',
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 50, vertical: 50),
            child: Card(
                elevation: 5,
                //height: 700.0,
                //width: 1000.0,
                //decoration: BoxDecoration(
                //borderRadius: BorderRadius.circular(10.0),
                //boxShadow: const [
                //BoxShadow(blurRadius: 15.0, offset: Offset(5.0, 5.0)),
                //],
                //),
                child: Row(
                  children: [
                    Image.asset(
                      'assets/images/bud.jpg',
                      height: 500.0,
                      width: 600.0,
                    ),
                    Flexible(
                        child: Column(
                      children: const [
                        Text(
                          'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Curabitur ullamcorper efficitur iaculis. Curabitur pellentesque eleifend orci eu sagittis. Morbi eleifend nunc et erat fermentum, quis pharetra felis dictum.',
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        Text(
                          'R\$8,90',
                          style: TextStyle(
                            fontSize: 80,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ))
                  ],
                )),
          ),
          const FooterWidget(),
        ],
      ),
    ));
  }
}
