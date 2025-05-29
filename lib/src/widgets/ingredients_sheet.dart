import 'package:burger_app_secure/src/widgets/ingredients_button_widget.dart';
import 'package:flutter/material.dart';

import 'aggregated_widget.dart';
import 'ingredient_widget.dart';

class IngredientSheet extends StatelessWidget {
  final _chossenIngredients = [
    {
      'name': 'Meet',
      'url': 'assets/images/grilled-burgers.webp',
      'quantity': 1,
    },
    {
      'name': 'Cabbage',
      'url': 'assets/images/cabbage.png',
      'quantity': 1,
    },
    {
      'name': 'Cheddar',
      'url': 'assets/images/cheddar.jpeg',
      'quantity': 2,
    },
    {
      'name': 'Beef',
      'url': 'assets/images/roast-beef.png',
      'quantity': 2,
    },
    {
      'name': 'Onion',
      'url': 'assets/images/onions.jpg',
      'quantity': 1,
    },
  ];

  IngredientSheet({super.key});

  @override
  Widget build(BuildContext context) {
    final _height = MediaQuery.of(context).size.height;
    return ListView(
      shrinkWrap: true,

      children: [
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
          child: IngredientsButtonWidget(
              onPressed: () => Navigator.of(context).pop()),
        ),
        SizedBox(
          // width: _width * 0.8,
          height: 100.0,
          child: ListView(
            scrollDirection: Axis.horizontal,
            children: [
              ..._chossenIngredients.map(
                (ingredient) => IngredientWidget(
                  name: ingredient['name'] as String,
                  url: ingredient['url'] as String,
                  quantity: ingredient['quantity'] as int,
                ),
              ),
            ],
          ),
        ),
        const SizedBox(height: 30.0),
        AggregatedWidget(),
      ],
      // ),
    );
  }
}
