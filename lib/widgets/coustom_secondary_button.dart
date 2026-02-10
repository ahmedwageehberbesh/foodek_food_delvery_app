import 'package:flutter/material.dart';

class CoustomSecondaryButton extends StatelessWidget {
  final double hight;
  final double width;
  final VoidCallback onTap;
  final IconData iconData;
  const CoustomSecondaryButton({
    super.key,
    required this.hight,
    required this.width,
    required this.onTap,
    required this.iconData,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: hight,
      width: width,
      decoration: BoxDecoration(
        color: Colors.grey[100],
        borderRadius: BorderRadius.circular(8.0),
      ),
      child: InkWell(
        onTap: onTap,
        child: Icon(iconData, color: Theme.of(context).primaryColor),
      ),
    );
  }
}
