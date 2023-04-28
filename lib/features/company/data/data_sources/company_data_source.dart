import 'package:vitrine_virtual/features/company/data/model/company_model.dart';

import '../../domain/entities/company_entity.dart';

abstract class CompanyDataSource {
  Future<CompanyEntity> get();
  Future<CompanyEntity> update({required CompanyEntity product});
  Future<bool> delete(int id);
}

class CompanyDataSourceImpl implements CompanyDataSource {
  @override
  Future<CompanyEntity> get() async {
    // imita busca no servidor (webservice/api)
    await Future.delayed(const Duration(seconds: 5));
    // serializa dados
    final company = CompanyModel.fromMap(fakeResponseJson[0]);

    // throw 'ERRRO GERADO';
    //retorna dados
    return company;
  }

  @override
  Future<CompanyEntity> update({required CompanyEntity product}) {
    // TODO: implement update
    throw UnimplementedError();
  }

  @override
  Future<bool> delete(int id) {
    // TODO: implement delete
    throw UnimplementedError();
  }

  final fakeResponseJson = [
    {
      'id': 1,
      'nome_fantasia': 'KAKO SERV FESTA',
      'razao_social': 'KAKO ENTERPIZEEEEE',
      'cnpj': '00.000.000/0000-00',
      'rua': 'SOBE E DESCE NUNCA APARECE',
      'numero': '171',
      'cidade': 'CATANDUVA',
      'cep': '15015-000',
      'bairro': 'CENTRO',
      'telefone': '(17) 99999 9999',
      'email': 'wfwerfw@wefwerf.com',
      'facebook': 'facebook do kako',
      'instagram': 'instagram do kako',
      'whatsapp': '(17) 99999 99999',
      'missao': 'ergljnewrgkljewn gowe weoijnwergoihnwegoinwe w4ofihn',
      'visao': 'ergljnewrgkljewn gowe weoijnwergoihnwegoinwe w4ofihn',
      'valores': 'ergljnewrgkljewn gowe weoijnwergoihnwegoinwe w4ofihn',
      'senha_acesso': '123456',
    }
  ];
}
