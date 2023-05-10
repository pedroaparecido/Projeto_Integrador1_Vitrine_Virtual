import 'package:get_it/get_it.dart';

import 'services/graphql_service.dart';
import 'services/image_service.dart';

class CoreLocator {
  static void init(GetIt sl) {
    // Services
    sl.registerFactory<GraphqlService>(() => GraphqlServiceImpl());
    sl.registerFactory<ImageService>(() => ImageLocalServiceImpl());
  }
}
