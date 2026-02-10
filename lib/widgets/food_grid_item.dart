import 'package:build_food_delivery_app_with_flutter/models/food_item.dart';
import 'package:build_food_delivery_app_with_flutter/widgets/favorite_button.dart';
import 'package:flutter/material.dart';

class FoodGridItem extends StatelessWidget {
  final int foodindex;

  const FoodGridItem({super.key, required this.foodindex});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(16.0),
      ),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: LayoutBuilder(
          builder: (context, constraints) => Column(
            children: [
              Stack(
                alignment: Alignment.topCenter,
                children: [
                  Image.network(
                    food[foodindex].imageUrl,
                    height: constraints.maxHeight * 0.5,
                  ),
                  Align(
                    alignment: Alignment.topRight,
                    child: FavoriteButton(
                      foodindex: foodindex,
                      hight: constraints.maxHeight * 0.15,
                      width: constraints.maxWidth * 0.15,
                    ),
                  ),
                ],
              ),

              SizedBox(height: constraints.maxHeight * 0.05),
              SizedBox(
                height: constraints.maxHeight * 0.2,
                child: FittedBox(
                  child: Text(
                    food[foodindex].name,
                    style: Theme.of(context).textTheme.titleLarge!.copyWith(
                      fontWeight: FontWeight.w600,
                      fontFamily: 'OpenSans',
                    ),
                  ),
                ),
              ),
              SizedBox(height: constraints.maxHeight * 0.02),
              SizedBox(
                height: constraints.maxHeight * 0.15,
                child: FittedBox(
                  child: Text(
                    "\$${food[foodindex].price}",
                    style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                      color: Theme.of(context).primaryColor,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
