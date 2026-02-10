import 'package:build_food_delivery_app_with_flutter/models/food_item.dart';
import 'package:build_food_delivery_app_with_flutter/widgets/coustom_secondary_button.dart';
import 'package:flutter/material.dart';

class FavoriteButton extends StatefulWidget {
  final int foodindex;
  final double hight;
  final double width;

  FavoriteButton({
    super.key,
    required this.foodindex,
    required this.hight,
    required this.width,
  }) {
    debugPrint('Constructor FavoriteButton Called !');
  }

  @override
  State<FavoriteButton> createState() {
    return _FavoriteButtonState();
  }
}

class _FavoriteButtonState extends State<FavoriteButton> {
  @override
  void initState() {
    super.initState();
    debugPrint('InitState FavoriteButton Called ! _ ${widget.foodindex}');
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    debugPrint('DidChangeDependencies FavoriteButton Called !');
  }

  @override
  void didUpdateWidget(covariant FavoriteButton oldWidget) {
    super.didUpdateWidget(oldWidget);
    debugPrint('DidUpdateWidget FavoriteButton Called !');
  }

  @override
  Widget build(BuildContext context) {
    return CoustomSecondaryButton(
      hight: widget.hight,
      width: widget.width,
      onTap: () => setState(() {
        food[widget.foodindex] = food[widget.foodindex].copeyWith(
          isFavorite: !food[widget.foodindex].isFavorite,
        );
      }),
      iconData: food[widget.foodindex].isFavorite
          ? Icons.favorite
          : Icons.favorite_border,
    );
  }
}
