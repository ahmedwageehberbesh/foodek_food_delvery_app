import 'package:build_food_delivery_app_with_flutter/models/food_item.dart';
import 'package:build_food_delivery_app_with_flutter/pages/food_details_page.dart';
import 'package:flutter/material.dart';

class FavoritePage extends StatefulWidget {
  const FavoritePage({super.key});

  @override
  State<FavoritePage> createState() => _FavoritePageState();
}

class _FavoritePageState extends State<FavoritePage> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final bool isportrait =
        MediaQuery.of(context).orientation == Orientation.portrait;
    final favoriteItems = food
        .where((foodItem) => foodItem.isFavorite == true)
        .toList();
    if (favoriteItems.isEmpty) {
      return Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              'assets/images/nothing-found.png',
              height: isportrait ? size.height * 0.3 : size.height * 0.4,
              width: size.width * 0.6,
              fit: BoxFit.contain,
            ),
            SizedBox(height: size.height * 0.02),
            Text(
              'No favorite items found!',
              style: Theme.of(context).textTheme.headlineSmall,
            ),
          ],
        ),
      );
    }

    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: ListView.builder(
        itemCount: favoriteItems.length,
        itemBuilder: (context, index) => InkWell(
          onTap: () {
            Navigator.of(context).push(
              MaterialPageRoute(
                builder: (context) {
                  return FoodDetailsPage(foodIndex: index);
                },
              ),
            );
          },
          child: Card(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(16.0),
            ),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  Image.network(
                    food[index].imageUrl,
                    height: isportrait ? size.height * 0.1 : size.height * 0.2,
                    width: size.width * 0.2,
                    fit: BoxFit.contain,
                  ),
                  SizedBox(width: size.width * 0.04),
                  Expanded(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          food[index].name,
                          style: Theme.of(context).textTheme.titleLarge!
                              .copyWith(fontWeight: FontWeight.w600),
                        ),
                        const SizedBox(height: 8),
                        Text(
                          '\$${food[index].price}',
                          style: Theme.of(context).textTheme.bodyLarge!
                              .copyWith(
                                color: Theme.of(context).primaryColor,
                                fontWeight: FontWeight.bold,
                              ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(width: 16),
                  IconButton(
                    onPressed: () {
                      final targetesItem = favoriteItems[index];
                      int targetedindex = food.indexOf(targetesItem);
                      setState(() {
                        food[targetedindex] = food[targetedindex].copeyWith(
                          isFavorite: false,
                        );
                        favoriteItems.remove(targetesItem);
                      });
                    },
                    icon: Icon(
                      Icons.favorite,
                      color: Theme.of(context).primaryColor,
                      size: isportrait
                          ? size.height * 0.035
                          : size.height * 0.07,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
