import 'dart:typed_data';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';

class ImagesBannerRegisterWidget extends StatefulWidget {
  const ImagesBannerRegisterWidget({Key? key}) : super(key: key);

  @override
  MyAppState createState() => MyAppState();
}

final picker = ImagePicker();

class MyAppState extends State<ImagesBannerRegisterWidget> {
  Future<XFile?> chooseImage(ImageSource source) async {
    final res = picker.pickImage(source: ImageSource.gallery);
    return res;
  }

  Uint8List? imageFile;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisSize: MainAxisSize.min,
        children: [
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
                        'Cadastro de Banner',
                        style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                      imageFile == null
                          ? Image.asset(
                              'assets/images/no-img.jpg',
                              height: 180.0,
                              width: 250,
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
                              child: const Text('Remover'),
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
                              child: const Text('Adicionar Imagem'),
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 35),
                      Row(
                        children: [
                          Expanded(
                            child: ElevatedButton(
                              style: ElevatedButton.styleFrom(backgroundColor: Colors.red),
                              onPressed: Get.back,
                              child: const Text(
                                'Cancelar',
                                style: TextStyle(color: Colors.black),
                              ),
                            ),
                          ),
                          const SizedBox(width: 10),
                          Expanded(
                            child: ElevatedButton(
                              style: ElevatedButton.styleFrom(backgroundColor: Colors.amber),
                              onPressed: () {},
                              child: const Text(
                                'Cadastrar',
                                style: TextStyle(color: Colors.black),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
