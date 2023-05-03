import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:vitrine_virtual/features/company/domain/entities/company_entity.dart';
import 'package:vitrine_virtual/features/company/domain/repositories/company_repostory.dart';

import '../../../../core/widgets/dialog_widget.dart';
import '../../../../service_locator.dart';

class CompanyController extends GetxController {
  final _companyRepository = sl<CompanyRepository>();

  final isLoading = false.obs;

  final razaoSocialInputController = TextEditingController();
  final nomeFantasiaInputController = TextEditingController();
  //TODO: implementar inputs controllers
  //  cnpj;
  //  rua;
  //  numero;
  //  cidade;
  //  cep;
  //  bairro;
  //  telefone;
  //  email;
  //  facebook;
  //  instagram;
  //  whatsapp;
  //  missao;
  //  visao;
  //  valores;
  //  senhaDeAcesso;

  CompanyEntity? company;

  @override
  void onInit() async {
    await getCompany();
    super.onInit();
  }

  Future<void> getCompany() async {
    isLoading.value = true;
    final res = await _companyRepository.get();
    res.fold(
      (l) => DialogWidget.feedback(result: false, message: l.toString()),
      (r) => addInputsDataControllers(r),
    );
    isLoading.value = false;
  }

  void addInputsDataControllers(CompanyEntity company) {
    this.company = company;
    razaoSocialInputController.text = company.razaoSocial;
    nomeFantasiaInputController.text = company.nomeFantasia;
    //TODO: implementar entrada de dados
  }

  Future<void> updateCompany() async {
    isLoading.value = true;
    final res = await _companyRepository.update(
      company: CompanyEntity(
        razaoSocial: razaoSocialInputController.text,
        nomeFantasia: nomeFantasiaInputController.text,
        //TODO: implementar saida de dados
        cnpj: 'cnpj',
        rua: 'rua',
        numero: 'numero',
        cidade: 'cidade',
        cep: 'cep',
        bairro: 'bairro',
        telefone: '(17) 99999-5555',
        email: 'email',
        facebook: 'facebook',
        instagram: 'instagram',
        whatsapp: 'whatsapp',
        missao: 'missao',
        visao: 'visao',
        valores: 'valores',
        senhaDeAcesso: 'senhaDeAcesso',
      ),
    );
    res.fold(
      (l) => DialogWidget.feedback(result: false, message: l.toString()),
      (r) => addInputsDataControllers(r),
    );
    isLoading.value = false;
  }
}
