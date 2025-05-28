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

  @override
  Widget build(BuildContext context) {
    Size _screenSize = MediaQuery.of(context).size;
    double _height = _screenSize.height;
    double _width = _screenSize.width;
    return SizedBox(
      width: double.infinity,
      height: _height * 0.10,
      child: Column(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.only(left: 18.0),
            child: SizedBox(
              width: _width,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    "Ingredients",
                    style: TextStyle(
                      fontSize: 18.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const Spacer(),
                  ElevatedButton(
                    child: const Icon(Icons.expand_more),
                    onPressed: () => {Navigator.of(context).pop()},
                  ),
                  const Spacer(flex: 2),
                ],
              ),
            ),
          ),
          Container(
            width: _width,
            height: _height * 0.16,
            padding: const EdgeInsets.only(bottom: 18.0),
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                ..._chossenIngredients.map((ingredient) => IngredientWidget(
                      name: ingredient['name'] as String,
                      url: ingredient['url'] as String,
                      quantity: ingredient['quantity'] as int,
                    ))
              ],
            ),
          ),
          AggregatedWidget(
            width: _width,
            height: _height,
          ),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 18.0),
            width: double.infinity,
            height: _height * 0.06,
            child: MaterialButton(
                color: Colors.yellow,
                padding: const EdgeInsets.symmetric(horizontal: 18.0),
                child: const Text(
                  'Add to Cart',
                  style: TextStyle(
                    fontSize: 20,
                    color: Colors.black,
                  ),
                ),
                onPressed: () => {}),
          ),
        ],
      ),
    );
  }
}
