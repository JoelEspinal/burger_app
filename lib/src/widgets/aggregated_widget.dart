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
        url: 'https://pngimg.com/uploads/cabbage/cabbage_PNG8801.png',
      ),
      Ingredient(
        name: 'Tomato',
        price: 0.08,
        url: 'https://media.istockphoto.com/photos/tomato-isolated-on-white-background-picture-id466175630?k=6&m=466175630&s=612x612&w=0&h=fu_mQBjGJZIliOWwCR0Vf2myRvKWyQDsymxEIi8tZ38=',
      ),
      Ingredient(
        name: 'Onion',
        price: 0.08,
        url: 'https://e7.pngegg.com/pngimages/788/438/png-clipart-onion-onion-vegetables-thumbnail.png',
      ),
      Ingredient(
        name: 'Cucumber',
        price: 0.1,
        url: 'https://cdn.mos.cms.futurecdn.net/EBEXFvqez44hySrWqNs3CZ.jpg',
      ),
      Ingredient(
        name: 'Lettuce',
        price: 0.1,
        url: 'https://cdn.britannica.com/77/170677-050-F7333D51/lettuce.jpg',
      ),
    ];

    var cheeses = [
      Ingredient(
        name: 'Cheddar',
        price: 0.2,
        url: 'https://img.freepik.com/free-psd/swiss-cheese-wedge-delicious-dairy-product_84443-38876.jpg?semt=ais_hybrid&w=740',
      ),
      Ingredient(
        name: 'Mozzarella',
        price: 0.2,
        url: 'https://www.vhv.rs/dpng/d/7-77863_mozzarella-cheese-transparent-background-hd-png-download.png',
      ),
    ];
    var sauces = [
      Ingredient(
        name: 'Mushrooms sauce',
        price: 0.1,
        url: 'https://simply-delicious-food.com/wp-content/uploads/2018/12/easy-creamy-mushroom-sauce-1-2.jpg',
      ),
      Ingredient(
        name: 'Ketchup',
        price: 0.05,
        url: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ7SO2AeSp7gB-tURDcPPm6lHKIvMxTFVskNg&s',
      ),
      Ingredient(
        name: 'Mayonnaise',
        price: 0.05,
        url: 'https://w7.pngwing.com/pngs/190/765/png-transparent-mayonnaise-bottle-thumbnail.png',
      ),
    ];
    var meats = [
      Ingredient(
        name: 'Angus',
        price: 0.5,
        url: 'https://cdn.shopify.com/s/files/1/0289/2382/2159/products/Certified-Angus-Beef-New-York-Steak_1200x1200.jpg?v=1600300123',
      ),
      Ingredient(
        name: 'Beef',
        price: 0.5,
        url: 'https://w7.pngwing.com/pngs/892/519/png-transparent-omaha-beefsteak-rib-eye-steak-meat-steak-food-beef-roast-beef.png',
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
