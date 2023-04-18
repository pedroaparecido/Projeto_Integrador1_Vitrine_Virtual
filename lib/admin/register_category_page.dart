import 'package:flutter/material.dart';

import 'package:vitrine_virtual/home/presentation/widgets/footer_widget.dart';
import 'package:vitrine_virtual/home/presentation/widgets/header_widget.dart';

class RegisterCategoryPage extends StatelessWidget {
  const RegisterCategoryPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const HeaderWidget(),
            const SizedBox(height: 15),
            SizedBox(
              width: 800,
              child: Card(
                elevation: 5,
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 30),
                  child: Form(
                      child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      const Text(
                        'Cadastro das Categorias',
                        style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                      Image.asset(
                      'assets/images/logo.png',
                      height: 500.0,
                      ),
                      ElevatedButton(onPressed: () {}, child: const Text('Upload'),),
                      const Divider(),
                      const SizedBox(height: 15),
                      TextFormField(
                        strutStyle: const StrutStyle(height: 1.6, forceStrutHeight: true),
                        decoration: const InputDecoration(
                          labelText: 'Nome da Categoria',
                        ),
                      ),
                    ],
                  )),
                ),
              ),
            ),
            const FooterWidget(),
          ],
        ),
      ),
    );
  }
}


