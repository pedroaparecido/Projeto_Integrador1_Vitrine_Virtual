class ProductEntity {
  ProductEntity({
    this.id,
    required this.name,
    required this.detail,
    required this.price,
    required this.image,
  });

  int? id;
  String name;
  String detail;
  double price;
  String image;

  @override
  String toString() {
    return 'ProductEntity(id: $id, name: $name, detail: $detail, price: $price, image: $image)';
  }
}
