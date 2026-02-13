// import 'package:build_food_delivery_app_with_flutter/pages/food_details_page.dart';
import 'package:build_food_delivery_app_with_flutter/models/category_item.dart';
import 'package:build_food_delivery_app_with_flutter/pages/food_details_page.dart';
import 'package:build_food_delivery_app_with_flutter/ui_models/food_details_args.dart';
import 'package:build_food_delivery_app_with_flutter/utilities/app_assets.dart';
import 'package:build_food_delivery_app_with_flutter/models/food_item.dart';
import 'package:build_food_delivery_app_with_flutter/widgets/food_grid_item.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  String? categoryChosenId;
  bool enableCategoryFilter = false;
  late List<FoodItem> filteredfood;

  @override
  void initState() {
    super.initState();
    filteredfood = food;
  }

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
                AppAssets.classicBurger,
                height: isportrait ? size.height * 0.25 : size.height * 0.7,
                width: double.infinity,
                fit: BoxFit.cover,
              ),
            ),
            SizedBox(height: size.height * 0.03),
            SizedBox(
              height: size.height * 0.15,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: categories.length,
                itemBuilder: (context, index) => Padding(
                  padding: const EdgeInsetsDirectional.only(end: 8.0),
                  child: InkWell(
                    onTap: () {
                      setState(() {
                        if (categoryChosenId == categories[index].id ||
                            !enableCategoryFilter) {
                          enableCategoryFilter = !enableCategoryFilter;
                        }

                        if (enableCategoryFilter) {
                          categoryChosenId = categories[index].id;
                          filteredfood = food
                              .where(
                                (item) => item.categoryId == categoryChosenId,
                              )
                              .toList();
                        } else {
                          categoryChosenId = null;
                          filteredfood = food;
                        }
                      });
                    },
                    // onDoubleTap: () {
                    //   setState(() {
                    //     categoryChosenId = null;
                    //   });
                    //   debugPrint(categoryChosenId);
                    //   filteredfood = food;
                    // },
                    child: Container(
                      width: size.width * 0.25,
                      height: size.height * 0.07,
                      decoration: BoxDecoration(
                        color: categoryChosenId == categories[index].id
                            ? Theme.of(context).primaryColor
                            : Colors.white,
                        borderRadius: BorderRadius.circular(16.0),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          children: [
                            Image.asset(categories[index].imgpath),
                            const SizedBox(height: 8.0),
                            Text(
                              categories[index].title,
                              style: Theme.of(context).textTheme.titleMedium!
                                  .copyWith(
                                    color:
                                        categoryChosenId == categories[index].id
                                        ? Colors.white
                                        : Colors.black,
                                  ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(height: size.height * 0.03),
            GridView.builder(
              itemCount: filteredfood.length,
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: isportrait ? 2 : 4,
                mainAxisSpacing: size.height * 0.02,
                crossAxisSpacing: size.width * 0.02,
              ),
              itemBuilder: (context, index) => InkWell(
                onTap: () {
                  debugPrint('Tapped on ${filteredfood[index].name}');
                  final targetedFoodItem = food.firstWhere(
                    (item) => item.id == filteredfood[index].id,
                  );
                  final targetedIndex = food.indexOf(targetedFoodItem);
                  Navigator.of(context)
                      .pushNamed(
                        FoodDetailsPage.routeName,
                        arguments: FoodDetailsArgs(foodIndex: targetedIndex),
                      )
                      .then((value) {
                        setState(() {});
                        filteredfood = food;
                        categoryChosenId = null;
                        debugPrint("The value returnd in home page $value");
                      });
                },
                child: FoodGridItem(
                  foodindex: index,
                  filteredfood: filteredfood,
                ),
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
