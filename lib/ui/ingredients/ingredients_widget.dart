import 'package:flutter/material.dart';

class IngredientWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size _screenSize = MediaQuery.of(context).size;
    double _height = _screenSize.height;

    return Container(
      height: _height,
      child: Column(
        children: <Widget>[
          Row(
            children: <Widget>[
              Text("Vegetable"),
            ],
          ),
          Text("Lista de ingredientes"),
        ],
      ),
    );
  }
}
