import 'package:flutter/material.dart';

import 'ingredients_sheet.dart';

class IngredientsheetBottomMenu extends StatefulWidget {
  @override
  _IngredientsheetBottomMenuState createState() =>
      _IngredientsheetBottomMenuState();
}

class _IngredientsheetBottomMenuState extends State<IngredientsheetBottomMenu> {
  GlobalKey<ScaffoldState> _key = GlobalKey();

  @override
  Widget build(BuildContext context) {
    Size _screenSize = MediaQuery.of(context).size;
    double _height = _screenSize.height;
    double _sheetHeight = _height * 0.17;

    return Container(
      width: double.infinity,
      height: _sheetHeight,
      padding: EdgeInsets.all(18.0),
      child: GestureDetector(
        onVerticalDragEnd: (DragEndDetails details) => _showModalSheet(),
        child: Flex(
          direction: Axis.vertical,
          children: [
            Row(
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
                ElevatedButton(
                  child: Icon(Icons.expand_less),
                  onPressed: () => _showModalSheet(),
                ),
                Spacer(flex: 2),
              ],
            ),
            Spacer(flex: 2),
            SizedBox(
              width: double.infinity,
              height: 44.0,
              child: MaterialButton(
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
      ),
    );
  }

  _showModalSheet() {
    showModalBottomSheet(
      context: context,
      isScrollControlled: true,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(
          top: Radius.circular(10),
        ),
      ),
      builder: (BuildContext context) {
        return FractionallySizedBox(
          heightFactor: 0.91,
          child: Container(
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius:
                  new BorderRadius.vertical(top: Radius.circular(10.0)),
            ),
            child: IngredientSheet(),
          ),
        );
      },
    );
  }
}
