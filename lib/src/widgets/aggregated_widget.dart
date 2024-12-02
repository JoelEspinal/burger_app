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
        'url': 'https://pngimg.com/uploads/cabbage/cabbage_PNG8801.png',
      },
      {
        'name': 'Tomato',
        'price': 0.08,
        'url':
            'https://media.istockphoto.com/photos/tomato-isolated-on-white-background-picture-id466175630?k=6&m=466175630&s=612x612&w=0&h=fu_mQBjGJZIliOWwCR0Vf2myRvKWyQDsymxEIi8tZ38=',
      },
      {
        'name': 'Onion',
        'price': 0.08,
        'url':
            'https://www.miamiherald.com/latest-news/pn2jnn/picture244668322/alternates/FREE_1140/CDC%20onions.jpg',
      },
      {
        'name': 'Cucumber',
        'price': 0.1,
        'url': 'https://cdn.mos.cms.futurecdn.net/EBEXFvqez44hySrWqNs3CZ.jpg',
      },
      {
        'name': 'Lettuce',
        'price': 0.1,
        'url': 'https://cdn.britannica.com/77/170677-050-F7333D51/lettuce.jpg',
      },
      {
        'name': 'Onion',
        'price': 0.3,
        'url': 'https://pngimg.com/uploads/cabbage/cabbage_PNG8801.png',
      },
    ],
    'Meat': [
      {
        'name': 'Angus',
        'price': 0.5,
        'url':
            'https://cdn.shopify.com/s/files/1/0289/2382/2159/products/Certified-Angus-Beef-New-York-Steak_1200x1200.jpg?v=1600300123',
      },
      {
        'name': 'Beef',
        'price': 0.5,
        'url':
            'https://w7.pngwing.com/pngs/892/519/png-transparent-omaha-beefsteak-rib-eye-steak-meat-steak-food-beef-roast-beef.png',
      },
    ],
    'Sauce': [
      {
        'name': 'Mushrooms sauce',
        'price': 0.1,
        'url':
            'https://simply-delicious-food.com/wp-content/uploads/2018/12/easy-creamy-mushroom-sauce-1-2.jpg',
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
