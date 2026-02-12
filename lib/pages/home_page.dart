import 'package:build_food_delivery_app_with_flutter/pages/food_details_page.dart';
import 'package:flutter/material.dart';
import 'package:build_food_delivery_app_with_flutter/models/food_item.dart';
import 'package:build_food_delivery_app_with_flutter/widgets/food_grid_item.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final bool isportrait =
        MediaQuery.of(context).orientation == Orientation.portrait;
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: SingleChildScrollView(
        child: Column(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(16.0),
              child: Image.asset(
                'assets/images/classic_burger.jpg',
                height: isportrait ? size.height * 0.25 : size.height * 0.7,
                width: double.infinity,
                fit: BoxFit.cover,
              ),
            ),
            SizedBox(height: size.height * 0.03),
            GridView.builder(
              itemCount: food.length,
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: isportrait ? 2 : 4,
                mainAxisSpacing: size.height * 0.02,
                crossAxisSpacing: size.width * 0.02,
              ),
              itemBuilder: (context, index) => InkWell(
                onTap: () {
                  debugPrint('Tapped on ${food[index].name}');
                  Navigator.of(context)
                      .push(
                        MaterialPageRoute(
                          builder: (context) {
                            return FoodDetailsPage(foodIndex: index);
                          },
                        ),
                      )
                      .then((value) => setState(() {}));
                },
                child: FoodGridItem(foodindex: index),
              ),
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
            ),
          ],
        ),
      ),
    );
  }
}
