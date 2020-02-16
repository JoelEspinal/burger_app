import 'package:burger_app/ui/common/ingredient.dart';
import 'package:flutter/material.dart';

class IngredientTabContent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: EdgeInsets.only(top: 6.0),
      children: <Ingredient>[
        Ingredient(),
        Ingredient(),
        Ingredient(),
        Ingredient(),
        Ingredient(),
        Ingredient(),
        Ingredient(),
      ],
    );
  }
}
