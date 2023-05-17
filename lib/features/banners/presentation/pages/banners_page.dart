import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../core/widgets/footer_widget.dart';
import '../../../admin/presentation/widgets/admin_menu_drawer_widget.dart';
import '../controllers/banners_controller.dart';
import '../widgets/banners_register_widget.dart';

class BannersPage extends StatelessWidget {
  BannersPage({super.key});

  final _controller = Get.put(BannersController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Cadastro - Banners'),
        actions: [
          IconButton(
            tooltip: 'Adicionar Banner',
            icon: const Icon(Icons.add),
            onPressed: () => Get.dialog(
              Center(child: BannersRegisterWidget()),
              name: 'Adicionar Banner',
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
                  child: Obx(
                    () => Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 30),
                        child: _controller.isLoading.value
                            ? SizedBox(
                                height: MediaQuery.of(context).size.height - 300,
                                child: const Center(child: Text('Nenhum produto cadastrado')))
                            : ListView.builder(
                                shrinkWrap: true,
                                itemCount: _controller.banners.length,
                                itemBuilder: (context, index) {
                                  final banner = _controller.banners[index];
                                  return Padding(
                                    padding: const EdgeInsets.only(bottom: 14.0),
                                    child: Card(
                                      elevation: 8,
                                      child: Row(children: [
                                        Expanded(
                                          child: SizedBox(
                                            height: 200,
                                            child: Image.memory(
                                              banner.image,
                                              fit: BoxFit.cover,
                                              width: MediaQuery.of(context).size.width,
                                            ),
                                          ),
                                        ),
                                        IconButton(
                                          onPressed: () => _controller.deleteBanner(banner.id!),
                                          icon: const Icon(
                                            Icons.delete,
                                            color: Colors.red,
                                          ),
                                        ),
                                      ]),
                                    ),
                                  );
                                })),
                  )),
            ),
            const FooterWidget(),
          ],
        ),
      ),
    );
  }
}
