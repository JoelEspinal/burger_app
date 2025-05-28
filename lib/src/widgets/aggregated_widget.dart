import 'package:flutter/material.dart';

import 'ingredient_item_widget.dart';

class AggregatedWidget extends StatelessWidget {
  final width;
  final height;
  final _ingredients = {
    'Vegetables': [
      {
        'name': 'Cabbage',
        'price': 0.3,
        'url': 'assets/images/cabbage.png',
      },
      {
        'name': 'Tomato',
        'price': 0.08,
        'url': 'assets/images/tomato.jpg',
      },
      {
        'name': 'Onion',
        'price': 0.08,
        'url': 'assets/images/onions.jpg',
      },
      {
        'name': 'Cucumber',
        'price': 0.1,
        'url': 'assets/images/cucumber.jpg',
      },
      {
        'name': 'Lettuce',
        'price': 0.1,
        'url': 'assets/images/lettuce.webp',
      }
    ],
    'Meat': [
      {
        'name': 'Angus',
        'price': 0.5,
        'url': 'assets/images/angus.webp',
      },
      {
        'name': 'Beef',
        'price': 0.5,
        'url': 'assets/images/roast-beef.png',
      },
    ],
    'Sauce': [
      {
        'name': 'Mushrooms sauce',
        'price': 0.1,
        'url': 'assets/images/mushroom_sauce.jpg',
      },
    ]
  };

  AggregatedWidget({this.width, this.height});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width,
      height: height * 0.62,
      child: DefaultTabController(
        length: _ingredients.length,
        child: ListView(
          scrollDirection: Axis.vertical,
          children: [
            SizedBox(
              width: width,
              height: 60.0,
              child: TabBar(
                tabs: [
                  ..._ingredients.keys.map(
                    (key) => Tab(
                      child: Padding(
                        padding: EdgeInsets.symmetric(horizontal: 12.0),
                        child: Text(
                          '$key',
                          style: Theme.of(context).textTheme.bodyMedium,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              width: width,
              height: (height * 0.53),
              child: TabBarView(
                children: [
                  ...(_ingredients.keys.map(
                    (type) => (ListView(
                      scrollDirection: Axis.vertical,
                      children: [
                        Column(
                          children: [
                            ..._ingredients[type]!.map(
                              (item) => IngredientItemWidget(
                                  name: item['name'],
                                  price: item['price'],
                                  url: item['url']),
                            ),
                          ],
                        ),
                      ],
                    )),
                  )),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
