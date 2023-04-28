import 'package:get_it/get_it.dart';
import 'package:vitrine_virtual/features/company/data/data_sources/company_data_source.dart';
import 'package:vitrine_virtual/features/company/domain/repositories/company_repostory.dart';

import 'data/repositories/company_repository_impl.dart';

class CompanyLocator {
  static void init(GetIt sl) {
    // Data sources
    sl.registerFactory<CompanyDataSource>(() => CompanyDataSourceImpl());

    // Repository
    sl.registerFactory<CompanyRepository>(() => CompanyRepositoryImpl(sl()));
  }
}
