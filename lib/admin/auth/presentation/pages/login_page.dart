import 'package:flutter/material.dart';

//import '../../../core/fakes/products.dart';
//import '../widgets/product_display_card_widget.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
      child: Column(
        children: [
          Container(
            padding: const EdgeInsets.all(12),
            width: double.infinity,
            height: 120,
            decoration: BoxDecoration(
              color: Colors.orange,
              borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(10),
                  topRight: Radius.circular(10),
                  bottomLeft: Radius.circular(10),
                  bottomRight: Radius.circular(10)),
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.5),
                  spreadRadius: 3,
                  blurRadius: 2,
                  offset: const Offset(0, 3), // changes position of shadow
                ),
              ],
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Image.asset('assets/images/logo.png'),
                Row(
                  children: [
                    TextButton(onPressed: () {}, child: const Text('Quem Somos')),
                    TextButton(onPressed: () {}, child: const Text('Contatos')),
                  ],
                ),
              ],
            ),
          ),
          Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                height: 500.0,
                width: 500.0,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10.0),
                  color: Colors.grey,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey,
                      blurRadius: 2.0,
                      offset: Offset(2.0, 2.0),
                    ),
                  ],
                ),
                child: Center(
                  //child: Expanded(
                  child: Column(
                    //mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Expanded(
                        child: Row(
                          children: [
                            Text('Login'),
                            Text('Senha'),
                          ],
                        ),
                      ),
                      SizedBox(
                        width: 100.0,
                        child: Row(
                          children: [
                            Flexible(
                              child: TextField(
                                obscureText: true,
                                decoration: InputDecoration(
                                  labelText: 'Login',
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        width: 100.0,
                        //Expanded(
                        child: Row(
                          children: [
                            Flexible(
                              child: TextField(
                                obscureText: true,
                                decoration: InputDecoration(
                                  labelText: 'Senha',
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              )),
        ],
      ),
    ));
  }
}
