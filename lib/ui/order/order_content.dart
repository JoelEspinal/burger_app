import 'package:flutter/material.dart';

class OrderBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: 25.0),
      height: 52.0,
      color: Colors.transparent,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Icon(
            Icons.arrow_back,
            color: Colors.white,
          ),
          Icon(
            Icons.favorite_border,
            color: Colors.white,
          ),
        ],
      ),
    );
  }
}

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
      child: Column(
        children: <Widget>[
          OrderBar(),
          Container(
            padding: EdgeInsets.only(
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
                            style:
                                TextStyle(color: Colors.yellow, fontSize: 36),
                          ),
                          Text(
                            "15",
                            style:
                                TextStyle(color: Colors.yellow, fontSize: 24),
                          ),
                        ],
                      )
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
