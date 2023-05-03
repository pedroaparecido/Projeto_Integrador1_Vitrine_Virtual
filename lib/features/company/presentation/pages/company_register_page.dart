import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../core/widgets/footer_widget.dart';
import '../../../admin/presentation/widgets/admin_menu_drawer_widget.dart';
import '../controllers/company_controller.dart';

class CompanyRegisterPage extends StatelessWidget {
  CompanyRegisterPage({super.key});

  final _controller = Get.put(CompanyController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Cadastro - Empresa'),
      ),
      drawer: const AdminMenuDrawerWidget(),
      body: Obx(
        () => _controller.isLoading.value
            ? const Center(child: SizedBox(width: 80, height: 80, child: CircularProgressIndicator()))
            : SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
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
                                'Dados Cadastrais',
                                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                              ),
                              const Divider(),
                              const SizedBox(height: 15),
                              TextFormField(
                                controller: _controller.razaoSocialInputController,
                                strutStyle: const StrutStyle(height: 1.6, forceStrutHeight: true),
                                decoration: const InputDecoration(
                                  labelText: 'Razão Social',
                                ),
                              ),
                              TextFormField(
                                controller: _controller.nomeFantasiaInputController,
                                strutStyle: const StrutStyle(height: 1.6, forceStrutHeight: true),
                                decoration: const InputDecoration(
                                  labelText: 'Nome Fantasia',
                                ),
                              ),
                              // TODO: ver se averá tempo para por mascara
                              TextFormField(
                                strutStyle: const StrutStyle(height: 1.6, forceStrutHeight: true),
                                decoration: const InputDecoration(
                                  labelText: 'CNPJ',
                                ),
                                initialValue: _controller.company?.cnpj,
                              ),
                              Row(
                                children: [
                                  Expanded(
                                    flex: 9,
                                    child: TextFormField(
                                      strutStyle: const StrutStyle(height: 1.6, forceStrutHeight: true),
                                      decoration: const InputDecoration(
                                        labelText: 'Rua',
                                      ),
                                      initialValue: _controller.company?.rua,
                                    ),
                                  ),
                                  Expanded(
                                    flex: 3,
                                    child: TextFormField(
                                      strutStyle: const StrutStyle(height: 1.6, forceStrutHeight: true),
                                      decoration: const InputDecoration(
                                        labelText: 'Número',
                                      ),
                                      initialValue: _controller.company?.numero,
                                    ),
                                  ),
                                ],
                              ),
                              Row(
                                children: [
                                  Expanded(
                                    flex: 8,
                                    child: TextFormField(
                                      strutStyle: const StrutStyle(height: 1.6, forceStrutHeight: true),
                                      decoration: const InputDecoration(
                                        labelText: 'Cidade',
                                      ),
                                      initialValue: _controller.company?.cidade,
                                    ),
                                  ),
                                  Expanded(
                                    flex: 4,
                                    child: TextFormField(
                                      strutStyle: const StrutStyle(height: 1.6, forceStrutHeight: true),
                                      decoration: const InputDecoration(
                                        labelText: 'CEP',
                                      ),
                                      initialValue: _controller.company?.cep,
                                    ),
                                  ),
                                ],
                              ),
                              Row(
                                children: [
                                  Expanded(
                                    child: TextFormField(
                                      strutStyle: const StrutStyle(height: 1.6, forceStrutHeight: true),
                                      decoration: const InputDecoration(
                                        labelText: 'Bairro',
                                      ),
                                      initialValue: _controller.company?.bairro,
                                    ),
                                  ),
                                  Expanded(
                                    child: TextFormField(
                                      strutStyle: const StrutStyle(height: 1.6, forceStrutHeight: true),
                                      decoration: const InputDecoration(
                                        labelText: 'Telefone',
                                      ),
                                      initialValue: _controller.company?.telefone,
                                    ),
                                  ),
                                ],
                              ),
                              TextFormField(
                                strutStyle: const StrutStyle(height: 1.6, forceStrutHeight: true),
                                decoration: const InputDecoration(
                                  labelText: 'E-mail',
                                ),
                                initialValue: _controller.company?.email,
                              ),
                              TextFormField(
                                strutStyle: const StrutStyle(height: 1.6, forceStrutHeight: true),
                                decoration: const InputDecoration(
                                  labelText: 'Facebook',
                                ),
                                initialValue: _controller.company?.facebook,
                              ),
                              TextFormField(
                                strutStyle: const StrutStyle(height: 1.6, forceStrutHeight: true),
                                decoration: const InputDecoration(
                                  labelText: 'Instagram',
                                ),
                                initialValue: _controller.company?.instagram,
                              ),
                              TextFormField(
                                strutStyle: const StrutStyle(height: 1.6, forceStrutHeight: true),
                                decoration: const InputDecoration(
                                  labelText: 'WhatsApp',
                                ),
                                initialValue: _controller.company?.whatsapp,
                              ),
                              TextFormField(
                                keyboardType: TextInputType.multiline,
                                maxLines: 3,
                                strutStyle: const StrutStyle(height: 1.6, forceStrutHeight: true),
                                decoration: const InputDecoration(
                                  labelText: 'Missão',
                                ),
                                initialValue: _controller.company?.missao,
                              ),
                              TextFormField(
                                keyboardType: TextInputType.multiline,
                                maxLines: 3,
                                strutStyle: const StrutStyle(height: 1.6, forceStrutHeight: true),
                                decoration: const InputDecoration(
                                  labelText: 'Visão',
                                ),
                                initialValue: _controller.company?.visao,
                              ),
                              TextFormField(
                                keyboardType: TextInputType.multiline,
                                maxLines: 3,
                                strutStyle: const StrutStyle(height: 1.6, forceStrutHeight: true),
                                decoration: const InputDecoration(
                                  labelText: 'Valores',
                                ),
                                initialValue: _controller.company?.valores,
                              ),
                              TextFormField(
                                strutStyle: const StrutStyle(height: 1.6, forceStrutHeight: true),
                                decoration: const InputDecoration(
                                  labelText: 'Senha de Acesso',
                                ),
                                obscureText: true,
                              ),
                              const SizedBox(height: 25),
                              ElevatedButton(
                                style: ElevatedButton.styleFrom(backgroundColor: Colors.amber),
                                onPressed: _controller.updateCompany,
                                child: const Text(
                                  'Atualizar',
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
      ),
    );
  }
}
