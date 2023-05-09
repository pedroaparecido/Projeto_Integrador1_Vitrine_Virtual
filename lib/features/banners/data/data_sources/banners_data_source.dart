import '../../../../core/services/graphql_service.dart';
import '../../domain/entities/banners_entity.dart';
import '../model/banners_category_gql_model.dart';
import '../model/banners_model.dart';

abstract class BannersDataSource {
  Future<BannersEntity> insert({required String image});
  Future<BannersEntity> update({required BannersEntity image});
  Future<bool> delete(int id);
  Future<List<BannersEntity>> getAll();
}

class ProductCategoryDataSourceImpl implements BannersDataSource {
  ProductCategoryDataSourceImpl(this._graphqlService);

  final GraphqlService _graphqlService;

  @override
  Future<bool> delete(int id) async {
    final res = await _graphqlService.mutationGql(mutationQuery: BannersCategoryGqlModel.delete(id));

    if (res['delete_banners_category']['affected_rows'] == 1) return true;
    return false;
  }

  @override
  Future<List<BannersEntity>> getAll() async {
    final res = await _graphqlService.queryGql(query: BannersCategoryGqlModel.get());

    return BannersModel.fromListMap(res['banners_category']);
  }

  @override
  Future<BannersEntity> insert({required String image}) async {
    final res = await _graphqlService.mutationGql(mutationQuery: BannersCategoryGqlModel.insert(image));

    return BannersModel.fromMap(res['insert_banners_category']['returning'][0]);
  }

  @override
  Future<BannersEntity> update({required BannersEntity image}) async {
    final res = await _graphqlService.mutationGql(mutationQuery: BannersCategoryGqlModel.update(image));

    return BannersModel.fromMap(res['update_banners_category']['returning'][0]);
  }
}
