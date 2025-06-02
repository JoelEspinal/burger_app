import 'package:flutter/material.dart';

import 'aggregated_widget.dart';
import 'ingredient_widget.dart';

class IngredientSheet extends StatelessWidget {
  final _chossenIngredients = [
    {
      'name': 'Meet',
      'url': 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRsmp0GNFVONIAE37LKJzm84FQHC4U6HNMwEw&s',
      'quantity': 1,
    },
    {
      'name': 'Cabbage',
      'url': 'https://pngimg.com/uploads/cabbage/cabbage_PNG8801.png',
      'quantity': 1,
    },
    {
      'name': 'Cheddar',
      'url': 'https://img.freepik.com/free-psd/swiss-cheese-wedge-delicious-dairy-product_84443-38876.jpg?semt=ais_hybrid&w=740',
      'quantity': 2,
    },
    {
      'name': 'Beef',
      'url': 'https://w7.pngwing.com/pngs/892/519/png-transparent-omaha-beefsteak-rib-eye-steak-meat-steak-food-beef-roast-beef.png',
      'quantity': 2,
    },
    {
      'name': 'Onion',
      'url': 'https://e7.pngegg.com/pngimages/788/438/png-clipart-onion-onion-vegetables-thumbnail.png',
      'quantity': 1,
    },
  ];

  IngredientSheet({super.key});

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    return Card(
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(top: Radius.circular(10.0)),
      ),
      child: Scaffold(
        bottomNavigationBar: BottomAppBar(
          height: height * 0.12,
          child: Column(
            children: [
              MaterialButton(
                minWidth: double.infinity,
                height: 60.0,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10.0),
                ),
                color: Colors.yellow,
                padding: const EdgeInsets.symmetric(horizontal: 18.0),
                child: const Text(
                  'Add to Cart',
                  style: TextStyle(
                    fontSize: 20,
                    color: Colors.black,
                  ),
                ),
                onPressed: () => {
                  Navigator.of(context).pop(),
                },
              ),
            ],
          ),
        ),
        body: ListView(
          shrinkWrap: true,
          children: [
            const SizedBox(
              height: 20.0,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text(
                  'Ingredients',
                  style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                      ),
                ),
                IconButton(
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                  icon: const Icon(Icons.expand_more_rounded,
                      color: Colors.black, size: 40.0),
                ),
                Container(),
                Container(),
              ],
            ),
            const SizedBox(
              height: 20.0,
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
        ),
      ),
    );
  }
}
