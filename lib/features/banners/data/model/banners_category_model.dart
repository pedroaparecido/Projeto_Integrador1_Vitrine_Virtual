import 'dart:convert';

import '../../domain/entities/banners_entity.dart';

class BannersCategoryModel extends BannersEntity {
  BannersCategoryModel({
    super.id,
    required super.image,
  });

  factory BannersCategoryModel.fromMap(Map<String, dynamic> map) {
    return BannersCategoryModel(
      id: map['id']?.toInt(),
      image: map['image'] ?? '',
    );
  }

  factory BannersCategoryModel.fromJson(String source) => BannersCategoryModel.fromMap(json.decode(source));

  static List<BannersCategoryModel> fromListMap(dynamic listMap) {
    return List<BannersCategoryModel>.from(listMap.map((x) => BannersCategoryModel.fromMap(x)));
  }
}
