import '../../domain/entities/banners_entity.dart';

class BannersCategoryGqlModel {
  static String get() => '''query {
    banners_category {
      id
      name
    }
}''';

  static String insert(String image) => '''mutation {
  insert_banners_category(
    objects: {image: "$image"}) 
    {
    returning {
      id
      name
    }
  }
}''';

  static String update(BannersEntity category) => '''mutation  {
  update_banners_category(
    where: {
      id: {_eq: ${category.id}}}, 
      _set: {
        name: "${category.image}"
        }) {
    returning {
      id
      name
    }
  }
}''';

  static String delete(int id) => '''mutation {
  delete_banners_category(where: {id: {_eq: $id}}) {
          affected_rows
        }
      }''';
}
