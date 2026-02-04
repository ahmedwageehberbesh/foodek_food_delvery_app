import 'package:build_food_delivery_app_with_flutter/models/food_item.dart';
import 'package:flutter/material.dart';

class FoodGridItem extends StatefulWidget {
  final int foodindex;

  const FoodGridItem({super.key, required this.foodindex});

  @override
  State<FoodGridItem> createState() => _FoodGridItemState();
}

class _FoodGridItemState extends State<FoodGridItem> {
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
                    food[widget.foodindex].imageUrl,
                    height: constraints.maxHeight * 0.5,
                  ),
                  Align(
                    alignment: Alignment.topRight,
                    child: Container(
                      height: constraints.maxHeight * 0.2,
                      width: constraints.maxHeight * 0.2,
                      decoration: BoxDecoration(
                        color: Colors.grey[100],
                        borderRadius: BorderRadius.circular(8.0),
                      ),
                      child: InkWell(
                        onTap: () => setState(() {
                          food[widget.foodindex] = food[widget.foodindex]
                              .copeyWith(
                                isFavorite: !food[widget.foodindex].isFavorite,
                              );
                        }),
                        child: Icon(
                          food[widget.foodindex].isFavorite
                              ? Icons.favorite
                              : Icons.favorite_border,
                          color: Theme.of(context).primaryColor,
                        ),
                      ),
                    ),
                  ),
                ],
              ),

              SizedBox(height: constraints.maxHeight * 0.05),
              SizedBox(
                height: constraints.maxHeight * 0.2,
                child: FittedBox(
                  child: Text(
                    food[widget.foodindex].name,
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
                    "\$${food[widget.foodindex].price}",
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
