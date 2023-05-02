import 'package:dartz/dartz.dart';
import 'package:vitrine_virtual/features/banners/data/data_sources/banners_data_source.dart';

import 'package:vitrine_virtual/features/banners/domain/entities/banners_entity.dart';
import 'package:vitrine_virtual/features/banners/domain/repositories/banners_repository.dart';

class BannersRepositoryImpl implements BannersRepository {
  BannersRepositoryImpl(this._dataSource);

  final BannersDataSource _dataSource;

  @override
  Future<Either<Exception, List<BannersEntity>>> getAll() async {
    try {
      final res = await _dataSource.getAll();
      return Right(res);
    } catch (err) {
      return Left(Exception('Não foi possivel buscar os produtos\nERRO: $err'));
    }
  }

  @override
  Future<Either<Exception, BannersEntity>> insert({required BannersEntity image}) async {
    try {
      final res = await _dataSource.insert(image: image);
      return Right(res);
    } catch (err) {
      return Left(Exception('Não foi possivel inserir o produto\nERRO: $err'));
    }
  }

  @override
  Future<bool> delete(int id) async {
    final res = await _dataSource.delete(id);
    return res;
  }
}
