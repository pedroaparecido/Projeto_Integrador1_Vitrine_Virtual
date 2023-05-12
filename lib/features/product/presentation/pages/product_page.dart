import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:vitrine_virtual/core/helpers/regularize_helper.dart';
import 'package:vitrine_virtual/core/widgets/loading_widget.dart';

import '../controllers/product_controller.dart';
import '../widgets/product_register_widget.dart';
import '../../../../core/widgets/footer_widget.dart';
import '../../../admin/presentation/widgets/admin_menu_drawer_widget.dart';

class ProductPage extends StatelessWidget {
  ProductPage({super.key});

  final _controller = Get.put(ProductController());

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
              Center(child: ProductRegisterWidget()),
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
                  child: Obx(
                    () => _controller.isLoading.value
                        ? const LoadingWidget()
                        : _controller.products.isEmpty
                            ? const Center(child: Text('Nenhum produto cadastrado'))
                            : ListView.builder(
                                shrinkWrap: true,
                                itemCount: _controller.products.length,
                                itemBuilder: (context, index) {
                                  final product = _controller.products[index];
                                  return ListTile(
                                    tileColor: index % 2 == 0 ? const Color(0xFFE0E0E0) : null,
                                    leading: Image.memory(
                                      product.image,
                                      height: 150,
                                    ),
                                    title: Text('#${product.id.toString().padLeft(4, '0')} - ${product.name}'),
                                    subtitle: Text(RegularizeHelper.doubleToRealCurrency(value: product.price)),
                                    trailing: SizedBox(
                                      width: 80,
                                      child: Row(
                                        children: [
                                          IconButton(
                                              onPressed: () {}, icon: const Icon(Icons.edit, color: Colors.blue)),
                                          IconButton(
                                            icon: const Icon(Icons.delete, color: Colors.red),
                                            onPressed: () => _controller.deleteProduct(product.id!),
                                          ),
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
    );
  }
}
