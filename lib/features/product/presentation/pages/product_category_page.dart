import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../core/widgets/footer_widget.dart';
import '../../../admin/presentation/widgets/admin_menu_drawer_widget.dart';
import '../controllers/product_category_register_controller.dart';
import '../widgets/product_category_register_widget.dart';

class ProductCategoryPage extends StatelessWidget {
  ProductCategoryPage({super.key});

  final _controller = Get.put(ProductCategoryRegisterController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Listagem - Categoria de Produto'),
        actions: [
          IconButton(
            tooltip: 'Adicionar Categoria',
            icon: const Icon(Icons.add),
            onPressed: () => Get.dialog(
              Center(child: ProductCategoryRegisterWidget()),
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
                  child: Obx(
                    () => Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 30),
                      child: _controller.isLoading.value
                          ? const Center(child: SizedBox(width: 80, height: 80, child: CircularProgressIndicator()))
                          : _controller.productCategories.isEmpty
                              ? SizedBox(
                                  height: MediaQuery.of(context).size.height - 300,
                                  child: const Center(child: Text('Nenhuma categoria cadastrada')))
                              : ListView.builder(
                                  shrinkWrap: true,
                                  itemCount: _controller.productCategories.length,
                                  itemBuilder: (context, index) {
                                    final category = _controller.productCategories[index];
                                    return ListTile(
                                      tileColor: index % 2 == 0 ? const Color(0xFFE0E0E0) : null,
                                      leading: Text('#000${category.id}'),
                                      title: Text(category.name),
                                      trailing: SizedBox(
                                        width: 80,
                                        child: Row(
                                          children: [
                                            IconButton(
                                                onPressed: () {}, icon: const Icon(Icons.edit, color: Colors.blue)),
                                            IconButton(
                                                onPressed: () => _controller.deleteProductCategory(category.id!),
                                                icon: const Icon(Icons.delete, color: Colors.red)),
                                          ],
                                        ),
                                      ),
                                    );
                                  },
                                ),
                    ),
                  ),
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
