import 'package:get_it/get_it.dart';

import 'core/core_locator.dart';
import 'features/banners/banners_locator.dart';
import 'features/company/company_locator.dart';
import 'features/product/product_locator.dart';

final sl = GetIt.instance;

void init() {
  CoreLocator.init(sl);
  ProductLocator.init(sl);
  CompanyLocator.init(sl);
  BannersLocator.init(sl);
}
