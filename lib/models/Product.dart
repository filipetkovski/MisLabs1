class Product {
  int id;
  String name;
  double price;
  String image;
  String description;

  Product({required this.id, required this.name, required this.price, required this.image, required this.description});

  Product.fromJson(Map<String, dynamic> data)
      : id = data['id'],
        name = data['name'],
        price = data['price'],
        image = data['image'],
        description = data['description'];
  Map<String, dynamic> toJson() => {'id': id, 'name': name, 'image': image, 'description': description, 'price': price};
}