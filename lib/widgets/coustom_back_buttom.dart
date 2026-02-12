import 'dart:io';

import 'package:build_food_delivery_app_with_flutter/widgets/coustom_secondary_button.dart';
import 'package:flutter/material.dart';

class CoustomBackButtom extends StatelessWidget {
  final double hight;
  final double width;
  final VoidCallback onTap;
  const CoustomBackButtom({
    super.key,
    required this.hight,
    required this.width,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return CoustomSecondaryButton(
      hight: hight,
      width: width,
      onTap: onTap,
      iconData: Platform.isIOS ? Icons.arrow_back_ios_new : Icons.arrow_back,
    );
  }
}
