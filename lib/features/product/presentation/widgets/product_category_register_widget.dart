import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../core/widgets/footer_widget.dart';

class ProductCategoryRegisterWidget extends StatelessWidget {
  const ProductCategoryRegisterWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisSize: MainAxisSize.min,
      children: [
        const SizedBox(height: 15),
        SizedBox(
          width: 500,
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
                  const SizedBox(height: 15),
                  TextFormField(
                    strutStyle: const StrutStyle(height: 1.6, forceStrutHeight: true),
                    decoration: const InputDecoration(
                      labelText: 'Nome da Categoria',
                    ),
                  ),
                  const Divider(),
                  Row(
                    children: [
                      ElevatedButton(
                        onPressed: Get.back,
                        style: ElevatedButton.styleFrom(backgroundColor: Colors.red),
                        child: const Text('Cancelar'),
                      ),
                      const SizedBox(width: 20),
                      ElevatedButton(onPressed: () {}, child: const Text('Cadastrar')),
                    ],
                  ),
                ],
              )),
            ),
          ),
        ),
      ],
    );
  }
}
