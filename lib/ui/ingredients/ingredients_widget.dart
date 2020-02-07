import 'package:flutter/material.dart';

class IngredientWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size _screenSize = MediaQuery.of(context).size;
    double _height = _screenSize.height;

    return Padding(
      padding: EdgeInsets.only(
        top: 18.0,
        left: 18.0,
        right: 18.0,
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
            Text("Lista de ingredientes"),
          ],
        ),
      ),
    );
  }
}
