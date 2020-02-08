import 'package:burger_app/ui/ingredients/ingredients_sheet.dart';
import 'package:flutter/material.dart';

class IngredientsheetBottomMenu extends StatefulWidget {
  @override
  _IngredientsheetBottomMenuState createState() =>
      _IngredientsheetBottomMenuState();
}

class _IngredientsheetBottomMenuState extends State<IngredientsheetBottomMenu> {
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
              fontSize: 18.0,
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
                      heightFactor: 0.91,
                      child: IngredientSheet(),
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
