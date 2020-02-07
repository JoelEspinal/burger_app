import 'package:flutter/material.dart';

double _height;

class Ingredientsheet extends StatefulWidget {
  @override
  _IngredientsheetState createState() => _IngredientsheetState();
}

class _IngredientsheetState extends State<Ingredientsheet> {
  @override
  Widget build(BuildContext context) {
    Size _screenSize = MediaQuery.of(context).size;
    double _height = _screenSize.height;
    double _sheetHeight = _height * 0.08;

    return Container(
      color: Colors.white10,
      width: double.infinity,
      height: _sheetHeight,
      padding: EdgeInsets.only(
        top: 18.0,
        left: 18.0,
        right: 18.0,
      ),
      child: Stack(
        children: <Widget>[
          Text(
            "Ingredients",
            style: TextStyle(
              fontSize: 16.0,
              fontWeight: FontWeight.bold,
            ),
          ),
          Container(
            width: double.infinity,
            child: FlatButton(
              child: Icon(Icons.expand_less),
              onPressed: () {
                showModalBottomSheet<void>(
                  context: context,
                  isScrollControlled: true,
                  builder: (BuildContext context) {
                    return FractionallySizedBox(
                      heightFactor: 0.88,
                      child: _IngredientWidget(),
                    );
                  },
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}

class _IngredientWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
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
