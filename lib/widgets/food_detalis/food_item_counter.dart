import 'package:flutter/material.dart';

class FoodItemCounter extends StatefulWidget {
  const FoodItemCounter({super.key});

  @override
  State<FoodItemCounter> createState() => _FoodItemCounterState();
}

class _FoodItemCounterState extends State<FoodItemCounter> {
  @override
  Widget build(BuildContext context) {
    return DecoratedBox(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(16.0),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0),
        child: Row(
          children: [
            InkWell(
              onTap: () {},
              child: Text(
                "-",
                style: Theme.of(context).textTheme.headlineMedium,
              ),
            ),
            const SizedBox(width: 16.0),
            Text("0", style: Theme.of(context).textTheme.titleLarge),
            const SizedBox(width: 16.0),
            InkWell(
              onTap: () {},
              child: Text(
                "+",
                style: Theme.of(context).textTheme.headlineMedium,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
