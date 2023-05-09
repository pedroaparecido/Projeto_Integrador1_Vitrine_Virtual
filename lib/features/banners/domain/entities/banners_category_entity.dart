class BannersCategoryEntity {
  BannersCategoryEntity({
    this.id,
    required this.image,
  });

  final int? id;
  final String image;

  @override
  String toString() => 'ProductCategoryEntity(id: $id, name: $image)';
}
