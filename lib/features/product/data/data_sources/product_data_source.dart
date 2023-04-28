import '../../domain/entities/product_entity.dart';

abstract class ProductDataSource {
  Future<ProductEntity> insert({required ProductEntity product});
  Future<ProductEntity> update({required ProductEntity product});
  Future<bool> delete(int id);
  Future<List<ProductEntity>> getAll();
}

class ProductDataSourceImpl implements ProductDataSource {
  @override
  Future<List<ProductEntity>> getAll() {
    // TODO: implement get
    throw UnimplementedError();
  }

  @override
  Future<ProductEntity> insert({required ProductEntity product}) {
    // TODO: implement insert
    throw UnimplementedError();
  }

  @override
  Future<ProductEntity> update({required ProductEntity product}) {
    // TODO: implement update
    throw UnimplementedError();
  }

  @override
  Future<bool> delete(int id) {
    // TODO: implement delete
    throw UnimplementedError();
  }
}
