class FoodItem {
  final String id;
  final String name;
  final String imageUrl;
  final double price;
  final bool isFavorite;
  final String categoryId;

  FoodItem({
    required this.id,
    required this.name,
    required this.imageUrl,
    required this.price,
    this.isFavorite = false,
    required this.categoryId,
  });

  FoodItem copeyWith({
    String? id,
    String? name,
    String? imageUrl,
    double? price,
    bool? isFavorite,
    String? categoryId,
  }) {
    return FoodItem(
      id: id ?? this.id,
      name: name ?? this.name,
      imageUrl: imageUrl ?? this.imageUrl,
      price: price ?? this.price,
      isFavorite: isFavorite ?? this.isFavorite,
      categoryId: categoryId ?? this.categoryId,
    );
  }
}

List<FoodItem> food = [
  FoodItem(
    id: '1',
    name: 'Classic Burger',
    imageUrl:
        'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTnLEJWFMbNZnNNJHXDrm0P0f16rinrjNrbGQ&s',
    price: 5.0,
    categoryId: '1',
  ),
  FoodItem(
    id: '2',
    name: 'Cheese Pizza',
    imageUrl:
        'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSKe64dGQqXuzACczrUWWQDk1YIgCsFvjiMDg&s',
    price: 8.0,
    categoryId: '2',
  ),
  FoodItem(
    id: '3',
    name: 'Caesar Salad',
    imageUrl:
        'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRV5Yp0uPt-uqJ5udVjAL71-ArAIvCzE84nYQ&s',
    price: 6.0,
    categoryId: '3',
  ),
  FoodItem(
    id: '4',
    name: 'Spaghetti Bolognese',
    imageUrl:
        'https://www.kitchensanctuary.com/wp-content/uploads/2019/09/Spaghetti-Bolognese-square-FS-0204.jpg',
    price: 10.0,
    categoryId: '4',
  ),
  FoodItem(
    id: '5',
    name: 'Caesar Salad',
    imageUrl:
        'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRV5Yp0uPt-uqJ5udVjAL71-ArAIvCzE84nYQ&s',
    price: 6.0,
    categoryId: '3',
  ),
  FoodItem(
    id: '6',
    name: 'Spaghetti  ',
    imageUrl:
        'https://www.kitchensanctuary.com/wp-content/uploads/2019/09/Spaghetti-Bolognese-square-FS-0204.jpg',
    price: 10.0,
    categoryId: '4',
  ),
];
