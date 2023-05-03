import 'package:vitrine_virtual/core/services/graphql_service.dart';
import 'package:vitrine_virtual/features/company/data/model/company_model.dart';

import '../../domain/entities/company_entity.dart';
import '../model/company_gql_model.dart';

abstract class CompanyDataSource {
  Future<CompanyEntity> get();
  Future<CompanyEntity> update({required CompanyEntity company});
}

class CompanyDataSourceImpl implements CompanyDataSource {
  CompanyDataSourceImpl(this._graphqlService);

  final GraphqlService _graphqlService;

  @override
  Future<CompanyEntity> get() async {
    final res = await _graphqlService.queryGql(query: CompanyGqlModel.get());

    return CompanyModel.fromMap(res['company_by_pk']);
  }

  @override
  Future<CompanyEntity> update({required CompanyEntity company}) async {
    final res = await _graphqlService.mutationGql(mutationQuery: CompanyGqlModel.update(company));

    return CompanyModel.fromMap(res['update_company_by_pk']);
  }
}
