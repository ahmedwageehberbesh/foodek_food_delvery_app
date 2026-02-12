import 'package:build_food_delivery_app_with_flutter/models/food_item.dart';
import 'package:build_food_delivery_app_with_flutter/widgets/coustom_back_buttom.dart';
import 'package:build_food_delivery_app_with_flutter/widgets/favorite_button.dart';
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
      body: SafeArea(
        top: false,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              child: CustomScrollView(
                slivers: [
                  SliverAppBar(
                    pinned: true,
                    leading: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: CoustomBackButtom(
                        hight: size.height * 0.03,
                        width: size.width * 0.02,
                      ),
                    ),
                    actions: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: FavoriteButton(
                          foodindex: foodIndex,
                          hight: size.height * 0.05,
                          width: size.width * 0.1,
                        ),
                      ),
                    ],
                    expandedHeight: size.height * 0.4,
                    flexibleSpace: FlexibleSpaceBar(
                      background: DecoratedBox(
                        decoration: BoxDecoration(
                          color: Colors.grey.withOpacity(0.15),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.symmetric(vertical: 16.0),
                          child: Align(
                            alignment: Alignment.bottomCenter,
                            child: Image.network(
                              food[foodIndex].imageUrl,
                              fit: BoxFit.fitWidth,
                              height: size.height * 0.3,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  SliverPadding(
                    padding: const EdgeInsets.only(
                      left: 16.0,
                      right: 16.0,
                      top: 16.0,
                      bottom: 46.0,
                    ),
                    sliver: SliverList(
                      delegate: SliverChildListDelegate([
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  food[foodIndex].name,
                                  style: Theme.of(context)
                                      .textTheme
                                      .headlineSmall!
                                      .copyWith(fontWeight: FontWeight.w600),
                                ),
                                const SizedBox(height: 8.0),
                                Text(
                                  'Buffalo burger ',
                                  style: Theme.of(context).textTheme.bodyLarge!
                                      .copyWith(color: Colors.grey),
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
                          "lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec auctor, nisl eget ultricies lacinia, nunc nisl aliquam nisl, eget aliquam nunc nisl eget nunc. Donec auctor, nisl eget ultricies lacinia, nunc nisl aliquam nisl, eget aliquam nunc nisl eget nunc., nunc nisl aliquam nisl, eget aliquam nunc nisl eget nunc.lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec auctor, nisl eget ultricies lacinia, nunc nisl aliquam nisl, eget aliquam nunc nisl eget nunc. Donec auctor, nisl eget ultricies lacinia, nunc nisl aliquam nisl, eget aliquam nunc nisl eget nunc., nunc nisl aliquam nisl, eget aliquam nunc nisl eget nunc.lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec auctor, nisl eget ultricies lacinia, nunc nisl aliquam nisl, eget aliquam nunc nisl eget nunc. Donec auctor, nisl eget ultricies lacinia, nunc nisl aliquam nisl, eget aliquam nunc nisl eget nunc., nunc nisl aliquam nisl, eget aliquam nunc nisl eget nunc.lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec auctor, nisl eget ultricies lacinia, nunc nisl aliquam nisl, eget aliquam nunc nisl eget nunc. Donec auctor, nisl eget ultricies lacinia, nunc nisl aliquam nisl, eget aliquam nunc nisl eget nunc., nunc nisl aliquam nisl, eget aliquam nunc nisl eget nunc.",
                          style: Theme.of(
                            context,
                          ).textTheme.bodyMedium!.copyWith(color: Colors.grey),
                        ),
                      ]),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                top: 16.0,
                left: 16.0,
                right: 16.0,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "\$${food[foodIndex].price}",
                    style: Theme.of(context).textTheme.headlineMedium!.copyWith(
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
            ),
          ],
        ),
      ),
    );
  }
}
