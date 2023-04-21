import 'dart:typed_data';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';

import '../../../../core/fakes/products.dart';
import '../widgets/product_register_widget.dart';
import '../../../../core/widgets/footer_widget.dart';
import '../../../admin/presentation/widgets/admin_menu_drawer_widget.dart';

class ProductPage extends StatefulWidget {
  const ProductPage({Key? key}) : super(key: key);

  @override
  MyAppState createState() => MyAppState();
}

final picker = ImagePicker();

class MyAppState extends State<ProductPage> {
  Future<XFile?> chooseImage(ImageSource source) async {
    final res = picker.pickImage(source: ImageSource.gallery);
    return res;
  }

  Uint8List? imageFile;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Cadastro - Produto'),
        actions: [
          IconButton(
            tooltip: 'Adicionar Produto',
            icon: const Icon(Icons.add),
            onPressed: () => Get.dialog(
              const Center(child: ProductRegisterWidget()),
              name: 'Adicionar Produto',
              barrierDismissible: false,
            ),
          ),
          const SizedBox(width: 25),
        ],
      ),
      drawer: const AdminMenuDrawerWidget(),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              width: 900,
              child: Card(
                elevation: 5,
                child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 30),
                    child: ListView.builder(
                      shrinkWrap: true,
                      itemCount: fakeProduct.length,
                      itemBuilder: (context, index) => ListTile(
                        tileColor: index % 2 == 0 ? const Color(0xFFE0E0E0) : null,
                        leading: Image.network(
                          fakeProduct[index]['url']!,
                          height: 150,
                        ),
                        title: Text('#000$index - ${fakeProduct[index]['name']!}'),
                        subtitle: Text('R\$ ${fakeProduct[index]['price']!}'),
                        trailing: SizedBox(
                          width: 80,
                          child: Row(
                            children: [
                              IconButton(onPressed: () {}, icon: const Icon(Icons.edit, color: Colors.blue)),
                              IconButton(onPressed: () {}, icon: const Icon(Icons.delete, color: Colors.red)),
                            ],
                          ),
                        ),
                      ),
                    )),
              ),
            ),

            // GridView.builder(
            //   gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
            //     maxCrossAxisExtent: 300,
            //     childAspectRatio: 1,
            //   ),
            //   shrinkWrap: true,
            //   itemCount: fakeProduct.length,
            //   itemBuilder: (context, index) => InkWell(
            //     onTap: () => () {},
            //     child: ProductDisplayCardWidget(
            //       nameProduct: fakeProduct[index]['name']!,
            //       priceProduct: fakeProduct[index]['price']!,
            //       urlImage: fakeProduct[index]['url']!,
            //     ),
            //   ),
            // ),
            const FooterWidget(),
          ],
        ),
      ),
    );
  }
}
