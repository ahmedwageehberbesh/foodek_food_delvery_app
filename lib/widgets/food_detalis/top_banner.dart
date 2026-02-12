import 'package:build_food_delivery_app_with_flutter/models/food_item.dart';
import 'package:build_food_delivery_app_with_flutter/widgets/coustom_back_buttom.dart';
import 'package:build_food_delivery_app_with_flutter/widgets/favorite_button.dart';
import 'package:flutter/material.dart';

class TopBanner extends StatelessWidget {
  final int foodIndex;
  const TopBanner({super.key, required this.foodIndex});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Stack(
      children: [
        DecoratedBox(
          decoration: BoxDecoration(color: Colors.grey.withValues(alpha:0.15)),
          child: Padding(
            padding: const EdgeInsets.symmetric(
              vertical: 8.0,
              horizontal: 16.0,
            ),
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
                          onTap: () => ()=>Navigator.of(context).pop(),
                          hight: size.height * 0.05,
                          width: size.width * 0.1,
                        ),
                        FavoriteButton(
                          foodindex: foodIndex,
                          hight: size.height * 0.05,
                          width: size.width * 0.1,
                        ),
                      ],
                    ),
                    const Spacer(),
                    Align(
                      alignment: Alignment.center,
                      child: Image.network(
                        food[foodIndex].imageUrl,
                        fit: BoxFit.cover,
                        height: size.height * 0.3,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
