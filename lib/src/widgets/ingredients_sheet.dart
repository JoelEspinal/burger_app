import 'package:flutter/material.dart';

import 'aggregated_widget.dart';
import 'ingredient_widget.dart';

class IngredientSheet extends StatelessWidget {
  final _chossenIngredients = [
    {
      'name': 'Cabbage',
      'url': 'https://pngimg.com/uploads/cabbage/cabbage_PNG8801.png',
      'quantity': 1,
    },
    {
      'name': 'Cheddar',
      'url':
          'https://www.pngfind.com/pngs/m/560-5600819_cheddar-png-download-dessert-transparent-png.png',
      'quantity': 2,
    },
    {
      'name': 'Beef',
      'url':
          'https://w7.pngwing.com/pngs/892/519/png-transparent-omaha-beefsteak-rib-eye-steak-meat-steak-food-beef-roast-beef.png',
      'quantity': 2,
    },
    {
      'name': 'Onion',
      'url':
          'https://cdn.imgbin.com/11/6/8/imgbin-red-onion-food-vegetable-onion-red-onion-gXctqvgQxXjQU5gmC2QfwGtNR.jpg',
      'quantity': 1,
    },
  ];

  Widget build(BuildContext context) {
    Size _screenSize = MediaQuery.of(context).size;
    double _height = _screenSize.height;
    double _width = _screenSize.width;
    return Container(
      width: double.infinity,
      height: _height * 0.10,
      child: Column(
        children: <Widget>[
          Padding(
            padding: EdgeInsets.only(left: 18.0),
            child: Container(
              width: _width,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Ingredients",
                    style: TextStyle(
                      fontSize: 18.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Spacer(),
                  FlatButton(
                    child: Icon(Icons.expand_more),
                    onPressed: () => {Navigator.of(context).pop()},
                  ),
                  Spacer(flex: 2),
                ],
              ),
            ),
          ),
          Container(
            width: _width,
            height: _height * 0.16,
            padding: EdgeInsets.only(bottom: 18.0),
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                ..._chossenIngredients
                    .map((ingredient) => IngredientWidget(
                          name: ingredient['name'],
                          url: ingredient['url'],
                          quantity: ingredient['quantity'],
                        ))
                    .toList(),
              ],
            ),
          ),
          AggregatedWidget(
            width: _width,
            height: _height,
          ),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 18.0),
            width: double.infinity,
            height: _height * 0.06,
            child: RaisedButton(
                color: Colors.yellow,
                padding: EdgeInsets.symmetric(horizontal: 18.0),
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
