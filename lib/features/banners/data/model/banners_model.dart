import 'dart:convert';

import '../../domain/entities/banners_entity.dart';

class BannersModel extends BannersEntity {
  BannersModel({
    super.id,
    required super.image,
  });

  factory BannersModel.fromMap(Map<String, dynamic> map) {
    return BannersModel(
      id: map['id']?.toInt(),
      image: map['image'] ?? '',
    );
  }

  factory BannersModel.fromJson(String source) => BannersModel.fromMap(json.decode(source));
}
