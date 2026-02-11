import 'package:build_food_delivery_app_with_flutter/models/food_item.dart';
import 'package:build_food_delivery_app_with_flutter/widgets/food_detalis/food_item_counter.dart';
import 'package:build_food_delivery_app_with_flutter/widgets/food_detalis/property_item.dart';
import 'package:build_food_delivery_app_with_flutter/widgets/food_detalis/top_banner.dart';
import 'package:flutter/material.dart';

class FoodDetailsPage extends StatelessWidget {
  final int foodIndex;
  const FoodDetailsPage({super.key, required this.foodIndex});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(children: [TopBanner(foodIndex: foodIndex)]),
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 16.0,
                vertical: 16.0,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            food[foodIndex].name,
                            style: Theme.of(context).textTheme.headlineSmall!
                                .copyWith(fontWeight: FontWeight.w600),
                          ),
                          const SizedBox(height: 8.0),
                          Text(
                            'Buffalo burger ',
                            style: Theme.of(
                              context,
                            ).textTheme.bodyLarge!.copyWith(color: Colors.grey),
                          ),
                        ],
                      ),
                      FoodItemCounter(),
                    ],
                  ),
                  const SizedBox(height: 16.0),
                  IntrinsicHeight(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        PropertyItem(
                          propertyName: 'Size',
                          propertyValue: 'Medium',
                        ),
                        VerticalDivider(
                          indent: 0,
                          endIndent: 0,
                          color: Colors.grey,
                          thickness: 1.0,
                          width: size.width * 0.02,
                        ),
                        PropertyItem(
                          propertyName: 'Cooking',
                          propertyValue: '10-20 min',
                        ),
                        VerticalDivider(
                          indent: 0,
                          endIndent: 0,
                          color: Colors.grey,
                          thickness: 1.0,
                          width: size.width * 0.02,
                        ),
                        PropertyItem(
                          propertyName: 'Calories',
                          propertyValue: '150 Kcal',
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 16.0),
                  Text(
                    "lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec auctor, nisl eget ultricies lacinia, nunc nisl aliquam nisl, eget aliquam nunc nisl eget nunc. Donec auctor, nisl eget ultricies lacinia, nunc nisl aliquam nisl, eget aliquam nunc nisl eget nunc.lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec auctor, nisl eget ultricies lacinia, nunc nisl aliquam nisl, eget aliquam nunc nisl eget nunc. Donec auctor, nisl eget ultricies lacinia, nunc nisl aliquam nisl, eget aliquam nunc nisl eget nunc.",
                    style: Theme.of(
                      context,
                    ).textTheme.bodyMedium!.copyWith(color: Colors.grey),
                  ),
                  const SizedBox(height: 16.0),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "\$${food[foodIndex].price}",
                        style: Theme.of(context).textTheme.headlineMedium!
                            .copyWith(
                              fontWeight: FontWeight.w600,
                              color: Theme.of(context).primaryColor,
                            ),
                      ),
                      const SizedBox(width: 16.0),
                      Expanded(
                        child: SizedBox(
                          height: size.height * 0.06,
                          child: ElevatedButton(
                            onPressed: () {},
                            child: const Text('Checkout'),
                          ),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 16.0),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
