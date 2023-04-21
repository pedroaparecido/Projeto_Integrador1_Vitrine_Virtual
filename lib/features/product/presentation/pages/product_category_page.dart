import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../core/fakes/category.dart';
import '../../../../core/widgets/footer_widget.dart';
import '../../../admin/presentation/widgets/admin_menu_drawer_widget.dart';
import '../widgets/product_category_register_widget.dart';

class ProductCategoryPage extends StatelessWidget {
  const ProductCategoryPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Listagem - Categoria de Produto'),
        actions: [
          IconButton(
            tooltip: 'Adicionar Categoria',
            icon: const Icon(Icons.add),
            // onPressed: () => Get.toNamed(RouteConfig.productCategoryRegister),
            onPressed: () => Get.dialog(
              const Center(child: ProductCategoryRegisterWidget()),
              name: 'Adicionar Categoria',
              barrierDismissible: false,
            ),
          ),
          const SizedBox(width: 25),
        ],
      ),
      drawer: const AdminMenuDrawerWidget(),
      body: SizedBox(
        height: MediaQuery.of(context).size.height,
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisSize: MainAxisSize.min,
            children: [
              const SizedBox(height: 15),
              SizedBox(
                width: 900,
                child: Card(
                  elevation: 5,
                  child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 30),
                      child: ListView.builder(
                        shrinkWrap: true,
                        itemCount: fakeCategory.length,
                        itemBuilder: (context, index) => ListTile(
                          tileColor: index % 2 == 0 ? const Color(0xFFE0E0E0) : null,
                          leading: Text('#000$index'),
                          title: Text(fakeCategory[index]),
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
              const FooterWidget(),
            ],
          ),
        ),
      ),
    );
  }
}
