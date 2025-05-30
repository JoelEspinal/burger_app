import 'dart:collection';
import 'package:flutter/material.dart';

import 'package:burger_app_secure/src/models/ingredient.dart';
import 'ingredient_item_widget.dart';

class AggregatedWidget extends StatelessWidget {
  Map<String, List<Ingredient>> ingredients = HashMap();

  AggregatedWidget({super.key}) {
    var vegetables = [
      Ingredient(
        name: 'Cabbage',
        price: 0.3,
        url: 'assets/images/cabbage.png',
      ),
      Ingredient(
        name: 'Tomato',
        price: 0.08,
        url: 'assets/images/tomato.jpg',
      ),
      Ingredient(
        name: 'Onion',
        price: 0.08,
        url: 'assets/images/onions.jpg',
      ),
      Ingredient(
        name: 'Cucumber',
        price: 0.1,
        url: 'assets/images/cucumber.jpg',
      ),
      Ingredient(
        name: 'Lettuce',
        price: 0.1,
        url: 'assets/images/lettuce.webp',
      ),
    ];

    var cheeses = [
      Ingredient(
        name: 'Cheddar',
        price: 0.2,
        url: 'assets/images/cheddar.jpeg',
      ),
      Ingredient(
        name: 'Mozzarella',
        price: 0.2,
        url: 'assets/images/mozzarella.png',
      ),
    ];
    var sauces = [
      Ingredient(
        name: 'Mushrooms sauce',
        price: 0.1,
        url: 'assets/images/mushroom_sauce.jpg',
      ),
      Ingredient(
        name: 'Ketchup',
        price: 0.05,
        url: 'assets/images/ketchup.png',
      ),
      Ingredient(
        name: 'Mayonnaise',
        price: 0.05,
        url: 'assets/images/mayonnaise.png',
      ),
    ];
    var meats = [
      Ingredient(
        name: 'Angus',
        price: 0.5,
        url: 'assets/images/angus.webp',
      ),
      Ingredient(
        name: 'Beef',
        price: 0.5,
        url: 'assets/images/roast-beef.png',
      ),
    ];

    ingredients['Vegetables'] = vegetables;
    ingredients['Cheeses'] = cheeses;
    ingredients['Sauces'] = sauces;
    ingredients['Meat'] = meats;
  }

  @override
  Widget build(BuildContext context) {
    var entries = ingredients.entries;
    return ListView.builder(
      itemCount: entries.length,
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      itemBuilder: (context, index) {
        var entry = entries.elementAt(index);
        return ListView(
          shrinkWrap: true,
          physics: const NeverScrollableScrollPhysics(),
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  entry.key,
                  style: Theme.of(context).textTheme.bodyLarge,
                ),
              ],
            ),
            ListView.builder(
              itemCount: entry.value.length,
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              itemBuilder: (context, i) {
                List<Ingredient> ingredientList = entry.value;
                Ingredient ingredient = ingredientList[i];
                return IngredientItemWidget(
                    name: ingredient.name,
                    price: ingredient.price,
                    url: ingredient.url);
              },
            ),
          ],
        );
      },
    );
  }
}
