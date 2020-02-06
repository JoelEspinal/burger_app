import 'package:flutter/material.dart';

double _height;

class Ingredientsheet extends StatefulWidget {
  @override
  _IngredientsheetState createState() => _IngredientsheetState();
}

class _IngredientsheetState extends State<Ingredientsheet> {
  @override
  Widget build(BuildContext context) {
    double _height = MediaQuery.of(context).size.height;
    double _sheetHeight = _height * 0.20;

    return Container(
      color: Colors.white10,
      width: double.infinity,
      height: _sheetHeight,
      padding: EdgeInsets.only(
        left: 18.0,
        right: 18.0,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: <Widget>[
          Text(
            "Ingredients",
            textAlign: TextAlign.start,
            style: TextStyle(
              fontSize: 10.0,
            ),
          ),
          FlatButton(
            onPressed: () {
              showModalBottomSheet<void>(
                  context: context,
                  isScrollControlled: true,
                  builder: (BuildContext context) {
                    return FractionallySizedBox(
                      heightFactor: 0.88,
                      child: _IngredientWidget(),
                    );
                  });
            },
            child: Icon(Icons.expand_less),
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
