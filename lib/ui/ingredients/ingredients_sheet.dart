import 'package:flutter/material.dart';

class IngredientSheet extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size _screenSize = MediaQuery.of(context).size;
    double _height = _screenSize.height;

    return Padding(
      padding: EdgeInsets.only(
        top: 18.0,
        left: 18.0,
        right: 20.0,
      ),
      child: Container(
        height: _height,
        width: double.infinity,
        child: Column(
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text(
                  "Ingredients",
                  style: TextStyle(
                    fontSize: 18.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  "\$0.05",
                  style: TextStyle(
                    fontSize: 20.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
            Container(
              width: double.infinity,
              height: (_height * 0.20),
              child: Row(
                children: <Widget>[
                  Text("Vegetable 1"),
                  Text("Vegetable 2"),
                  Text("Vegetable 3")
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
