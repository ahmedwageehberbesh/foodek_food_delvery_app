class FoodItem {
  final String name;
  final String imageUrl;
  final double price;
  final bool isFavorite;

  FoodItem({
    required this.name,
    required this.imageUrl,
    required this.price,
    this.isFavorite = false,
  });

  FoodItem copeyWith({
    String? name,
    String? imageUrl,
    double? price,
    bool? isFavorite,
  }) {
    return FoodItem(
      name: name ?? this.name,
      imageUrl: imageUrl ?? this.imageUrl,
      price: price ?? this.price,
      isFavorite: isFavorite ?? this.isFavorite,
    );
  }
}

List<FoodItem> food = [
  FoodItem(
    name: 'Classic Burger',
    imageUrl:
        'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTnLEJWFMbNZnNNJHXDrm0P0f16rinrjNrbGQ&s',
    price: 5.0,
  ),
  FoodItem(
    name: 'Cheese Pizza',
    imageUrl:
        'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSKe64dGQqXuzACczrUWWQDk1YIgCsFvjiMDg&s',
    price: 8.0,
  ),
  FoodItem(
    name: 'Caesar Salad',
    imageUrl:
        'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRV5Yp0uPt-uqJ5udVjAL71-ArAIvCzE84nYQ&s',
    price: 6.0,
  ),
  FoodItem(
    name: 'Spaghetti Bolognese',
    imageUrl:
        'https://www.kitchensanctuary.com/wp-content/uploads/2019/09/Spaghetti-Bolognese-square-FS-0204.jpg',
    price: 10.0,
  ),
  FoodItem(
    name: 'Caesar Salad',
    imageUrl:
        'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRV5Yp0uPt-uqJ5udVjAL71-ArAIvCzE84nYQ&s',
    price: 6.0,
  ),
  FoodItem(
    name: 'Spaghetti Bolognese',
    imageUrl:
        'https://www.kitchensanctuary.com/wp-content/uploads/2019/09/Spaghetti-Bolognese-square-FS-0204.jpg',
    price: 10.0,
  ),
];
