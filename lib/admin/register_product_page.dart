import 'dart:html';
import 'dart:typed_data';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

import 'package:vitrine_virtual/home/presentation/widgets/footer_widget.dart';
import 'package:vitrine_virtual/home/presentation/widgets/header_widget.dart';

class RegisterProductPage extends StatefulWidget {
  const RegisterProductPage({Key? key}) : super(key: key);

  @override
  MyAppState createState() => MyAppState();
}

final picker = ImagePicker();

class MyAppState extends State<RegisterProductPage> {
  Future<XFile?> chooseImage(ImageSource source) async {
    final res = picker.pickImage(source: ImageSource.gallery);
    return res;
  }

  Uint8List? imageFile;

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
                        'Cadastro de Produto',
                        style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                      imageFile == null
                          ? Image.asset(
                              'assets/images/no-img.jpg',
                              height: 500.0,
                            )
                          : Image.memory(imageFile!),
                      const SizedBox(height: 10),
                      Row(
                        children: [
                          Expanded(
                            child: ElevatedButton(
                              onPressed: () async {
                                imageFile = null;
                                setState(() {});
                              },
                              style: ElevatedButton.styleFrom(backgroundColor: Colors.red),
                              child: const Text('Deletar'),
                            ),
                          ),
                          const SizedBox(width: 10),
                          Expanded(
                            child: ElevatedButton(
                              onPressed: () async {
                                final image = await chooseImage(ImageSource.gallery);
                                if (image != null) {
                                  imageFile = await image.readAsBytes();
                                }
                                // mensagem para o usuario;

                                setState(() {});
                              },
                              child: const Text('Visualizar'),
                            ),
                          ),
                        ],
                      ),
                      const Divider(),
                      const SizedBox(height: 15),
                      TextFormField(
                        strutStyle: const StrutStyle(height: 1.6, forceStrutHeight: true),
                        decoration: const InputDecoration(
                          labelText: 'Nome do Produto',
                        ),
                      ),
                      TextFormField(
                        strutStyle: const StrutStyle(height: 1.6, forceStrutHeight: true),
                        decoration: const InputDecoration(
                          labelText: 'Detalhes do Produto',
                        ),
                      ),
                      TextFormField(
                        strutStyle: const StrutStyle(height: 1.6, forceStrutHeight: true),
                        decoration: const InputDecoration(
                          labelText: 'Preço do Produto',
                        ),
                      ),
                      const SizedBox(height: 25),
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(backgroundColor: Colors.amber),
                        onPressed: () {},
                        child: const Text(
                          'Cadastrar Produto',
                          style: TextStyle(color: Colors.black),
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
