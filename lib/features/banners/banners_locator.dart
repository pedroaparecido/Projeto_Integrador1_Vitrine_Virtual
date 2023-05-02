import 'package:get_it/get_it.dart';

import 'data/data_sources/banners_data_source.dart';
import 'data/repositories/banners_repository_impl.dart';
import 'domain/repositories/banners_repository.dart';

class BannersLocator {
  static void init(GetIt sl) {
    // Data sources
    sl.registerFactory<BannersDataSource>(() => BannersDataSourceImpl());

    // Repository
    sl.registerFactory<BannersRepository>(() => BannersRepositoryImpl(sl()));
  }
}
