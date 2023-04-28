import 'package:dartz/dartz.dart';

import '../../domain/entities/product_entity.dart';
import '../../domain/repositories/product_repository.dart';
import '../data_sources/product_data_source.dart';

class ProductRepositoryImpl implements ProductRepository {
  ProductRepositoryImpl(this._dataSource);

  final ProductDataSource _dataSource;

  @override
  Future<Either<Exception, List<ProductEntity>>> getAll() async {
    try {
      final res = await _dataSource.getAll();
      return Right(res);
    } catch (err) {
      return Left(Exception('Não foi possivel buscar os produtos\nERRO: $err'));
    }
  }

  @override
  Future<Either<Exception, ProductEntity>> insert({required ProductEntity product}) async {
    try {
      final res = await _dataSource.insert(product: product);
      return Right(res);
    } catch (err) {
      return Left(Exception('Não foi possivel inserir o produto\nERRO: $err'));
    }
  }

  @override
  Future<Either<Exception, ProductEntity>> update({required ProductEntity product}) async {
    try {
      final res = await _dataSource.insert(product: product);
      return Right(res);
    } catch (err) {
      return Left(Exception('Não foi possivel atualizar o produto\nERRO: $err'));
    }
  }

  @override
  Future<bool> delete(int id) async {
    final res = await _dataSource.delete(id);
    return res;
  }
}
