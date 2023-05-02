import 'package:dartz/dartz.dart';
import 'package:vitrine_virtual/features/banners/domain/entities/banners_entity.dart';

abstract class BannersRepository {
  Future<Either<Exception, BannersEntity>> insert({required BannersEntity image});
  Future<bool> delete(int id);
  Future<Either<Exception, List<BannersEntity>>> getAll();
}
