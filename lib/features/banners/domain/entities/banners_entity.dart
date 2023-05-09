class BannersEntity {
  BannersEntity({
    this.id,
    required this.image,
  });

  int? id;
  String image;

  @override
  String toString() {
    return 'BannersEntity(id: $id,  image: $image)';
  }
}
