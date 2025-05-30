import 'package:flutter/material.dart';

import 'ingredients_button_widget.dart';
import 'ingredients_sheet.dart';

class IngredientsheetBottomMenu extends StatefulWidget {
  @override
  _IngredientsheetBottomMenuState createState() =>
      _IngredientsheetBottomMenuState();
}

class _IngredientsheetBottomMenuState extends State<IngredientsheetBottomMenu> {
  @override
  Widget build(BuildContext context) {
    Size screenSize = MediaQuery.of(context).size;
    double height = screenSize.height;
    double sheetHeight = height * 0.15;

    return Container(
      width: double.infinity,
      height: sheetHeight,
      padding: const EdgeInsets.all(18.0),
      child: GestureDetector(
        onVerticalDragEnd: (DragEndDetails details) => _showModalSheet(),
        child: ListView(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                IngredientsButtonWidget(
                  onPressed: () => _showModalSheet(),
                ),
              ],
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
        borderRadius: BorderRadius.circular(20.0),
      ),
      builder: (BuildContext context) {
        return FractionallySizedBox(
          heightFactor: 0.91,
          child: IngredientSheet(),
        );
      },
    );
  }
}
