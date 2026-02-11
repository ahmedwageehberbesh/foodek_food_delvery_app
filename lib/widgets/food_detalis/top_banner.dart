import 'package:build_food_delivery_app_with_flutter/models/food_item.dart';
import 'package:build_food_delivery_app_with_flutter/widgets/coustom_back_buttom.dart';
import 'package:build_food_delivery_app_with_flutter/widgets/favorite_button.dart';
import 'package:flutter/material.dart';

class TopBanner extends StatelessWidget {
  final FoodItem foodItem;
  const TopBanner({super.key, required this.foodItem});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return DecoratedBox(
      decoration: BoxDecoration(color: Colors.grey.withOpacity(0.15)),
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 16.0),
        child: SafeArea(
          child: SizedBox(
            height: size.height * 0.4,
            width: size.width,
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    CoustomBackButtom(
                      hight: size.height * 0.05,
                      width: size.width * 0.1,
                    ),
                    FavoriteButton(
                      foodindex: 1,
                      hight: size.height * 0.05,
                      width: size.width * 0.1,
                    ),
                  ],
                ),
                const Spacer(),
                Align(
                  alignment: Alignment.center,
                  child: Image.network(
                    foodItem.imageUrl,
                    fit: BoxFit.cover,
                    height: size.height * 0.3,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
