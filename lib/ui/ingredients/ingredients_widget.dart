import 'package:flutter/material.dart';

class IngredientWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size _screenSize = MediaQuery.of(context).size;
    double _height = _screenSize.height;
    return DefaultTabController(
      length: 1,
      child: DefaultTabController(
        length: 3,
        child: Container(
          color: Colors.white,
          child: Column(
            children: <Widget>[
              TabBar(
                tabs: [
                  Tab(
                      icon: Icon(
                    Icons.directions_car,
                    color: Colors.black,
                  )),
                  Tab(
                      icon: Icon(
                    Icons.directions_transit,
                    color: Colors.black,
                  )),
                  Tab(
                      icon: Icon(
                    Icons.directions_bike,
                    color: Colors.black,
                  )),
                ],
              ),
              Container(
                width: double.infinity,
                height: _height * 0.45,
                child: TabBarView(
                  children: [
                    Icon(Icons.directions_car),
                    Icon(Icons.directions_transit),
                    Icon(Icons.directions_bike),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
