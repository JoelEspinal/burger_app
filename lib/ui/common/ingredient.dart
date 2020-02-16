import 'package:flutter/material.dart';

class Ingredient extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return IntrinsicHeight(
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Row(
            children: <Widget>[
              Icon(
                Icons.bluetooth_connected,
                size: 28,
              ),
              Column(
                children: <Widget>[
                  Text(
                    "Cabbage",
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  IntrinsicWidth(
                    child: Text(
                      "\$0.3",
                      textAlign: TextAlign.start,
                    ),
                  )
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
