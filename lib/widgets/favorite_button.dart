import 'package:build_food_delivery_app_with_flutter/models/food_item.dart';
import 'package:flutter/material.dart';

class FavoriteButton extends StatefulWidget {
  final int foodindex;
  final BoxConstraints constraints;

  FavoriteButton({
    super.key,
    required this.foodindex,
    required this.constraints,
  }) {
    debugPrint('Constructor FavoriteButton Called !');
  }

  @override
  State<FavoriteButton> createState() {
    debugPrint('CreateState FavoriteButton Called !');
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
    return Container(
      height: widget.constraints.maxHeight * 0.2,
      width: widget.constraints.maxHeight * 0.2,
      decoration: BoxDecoration(
        color: Colors.grey[100],
        borderRadius: BorderRadius.circular(8.0),
      ),
      child: InkWell(
        onTap: () => setState(() {
          food[widget.foodindex] = food[widget.foodindex].copeyWith(
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
    );
  }
}
