import 'package:burger_app/ui/ingredients/ingredients_bottom_menu.dart';
import 'package:burger_app/ui/order/order_content.dart';
import 'package:flutter/material.dart';

class OrderScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: false,
      body: OrderBody(),
      bottomSheet: IngredientsheetBottomMenu(),
      bottomNavigationBar: Container(
        color: Colors.white,
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 18.0),
          child: RaisedButton(
            color: Colors.yellow,
            onPressed: () {},
            child: const Text(
              'Add to Cart',
              style: TextStyle(
                fontSize: 20,
                color: Colors.black,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
