import '../../domain/entities/banners_entity.dart';

abstract class BannersDataSource {
  Future<BannersEntity> insert({required BannersEntity image});
  Future<bool> delete(int id);
  Future<List<BannersEntity>> getAll();
}

class BannersDataSourceImpl implements BannersDataSource {
  @override
  Future<List<BannersEntity>> getAll() {
    // TODO: implement get
    throw UnimplementedError();
  }

  @override
  Future<BannersEntity> insert({required BannersEntity image}) {
    // TODO: implement insert
    throw UnimplementedError();
  }

  @override
  Future<bool> delete(int id) {
    // TODO: implement delete
    throw UnimplementedError();
  }
}
