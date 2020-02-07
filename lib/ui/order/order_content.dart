import 'package:flutter/material.dart';

class OrderBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: BoxConstraints.expand(),
      decoration: BoxDecoration(
        image: DecorationImage(
          fit: BoxFit.cover,
          image: AssetImage("assets/images/burger_background.jpg"),
        ),
      ),
      child: Container(
        padding: EdgeInsets.only(
          top: 52.0,
          left: 24,
        ),
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 18.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Column(
                children: <Widget>[
                  Text(
                    "Cheese",
                    style: TextStyle(color: Colors.white, fontSize: 36),
                  ),
                  Text(
                    "Burger",
                    style: TextStyle(color: Colors.white, fontSize: 36),
                  ),
                ],
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: <Widget>[
                  Text(
                    "325g",
                    textAlign: TextAlign.end,
                    style: TextStyle(color: Colors.white, fontSize: 16),
                  ),
                  Row(
                    children: <Widget>[
                      Text(
                        "\$300.",
                        style: TextStyle(color: Colors.yellow, fontSize: 36),
                      ),
                      Text(
                        "15",
                        style: TextStyle(color: Colors.yellow, fontSize: 24),
                      ),
                    ],
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
