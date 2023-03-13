import 'package:flutter/material.dart';

class BurgerOffer extends StatelessWidget {
  final url;
  final width;
  final height;

  BurgerOffer({this.url, this.width, this.height});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => Navigator.of(context).pushNamed('/details'),
      child: Stack(
        children: [
          Container(
            height: height,
            width: width / 3,
            child: ClipRRect(
              borderRadius: BorderRadius.all(
                Radius.circular(10),
              ),
              child: Image.network(
                url,
                fit: BoxFit.cover,
              ),
            ),
          ),
          Positioned.fill(
            child: Align(
              alignment: Alignment.topLeft,
              child: Padding(
                padding: EdgeInsets.fromLTRB(12.0, 12.0, 0, 0),
                child: Column(
                  children: [
                    Padding(
                      padding: EdgeInsets.only(bottom: 12.0),
                      child: Text(
                        'Cheese Burger',
                        style: Theme.of(context).textTheme.headlineLarge!.copyWith(
                            fontWeight: FontWeight.bold, color: Colors.white),
                      ),
                    ),
                    ElevatedButton(
                        style: ButtonStyle(
                            backgroundColor:
                                MaterialStateProperty.all<Color>(Colors.green)),
                        child: Text(
                          '\$4.15',
                          style: Theme.of(context).textTheme.headlineLarge!.copyWith(
                              fontWeight: FontWeight.bold, color: Colors.white),
                        ),
                        onPressed: () {}),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
