import 'package:flutter/material.dart';

class Ingredient extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return IntrinsicHeight(
      child: Row(
        children: <Widget>[
          Row(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Icon(
                Icons.bluetooth_connected,
                size: 28,
              ),
              Column(
                mainAxisSize: MainAxisSize.max,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    "Cabbage",
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    "\$0.3",
                    textAlign: TextAlign.start,
                  ),
                ],
              ),
            ],
          ),
          Row(
            children: <Widget>[
              RaisedButton(
                child: Text("-"),
                color: Colors.white24,
                onPressed: () => print("minus"),
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 2.0),
              ),
              Text(
                "1",
              ),
              RaisedButton(
                child: Text("+"),
                color: Colors.white24,
                onPressed: () => print("more"),
              ),
            ],
          )
        ],
      ),
    );
  }
}
