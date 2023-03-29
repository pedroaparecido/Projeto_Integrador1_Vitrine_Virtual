import 'package:flutter/material.dart';

import '../widgets/footer_widget.dart';
import '../widgets/header_widget.dart';

class HomeDetailProductPage extends StatelessWidget {
  const HomeDetailProductPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
      child: Column(
        children: [
          const HeaderWidget(),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 50, vertical: 50),
            child: Container(
                height: 500.0,
                width: 500.0,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10.0),
                  color: Colors.grey,
                  boxShadow: const [
                    BoxShadow(color: Colors.grey, blurRadius: 2.0, offset: Offset(2.0, 2.0)),
                  ],
                ),
                child: Row(
                  children: [
                    Image.asset(
                      'assets/images/logo.png',
                      height: 300.0,
                      width: 300.0,
                    ),
                    Column(
                      children: const [
                        Text('Descrição Produto'),
                        Text('Preço PRoduto'),
                      ],
                    )
                  ],
                )),
          ),
          const FooterWidget(),
        ],
      ),
    ));
  }
}
