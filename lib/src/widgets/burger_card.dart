import 'package:flutter/material.dart';

class BurgerCard extends StatelessWidget {
  final width;
  final height;

  BurgerCard({this.width, this.height});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => Navigator.of(context).pushNamed('/details'),
      child: Flex(
        direction: Axis.horizontal,
        children: [
          Expanded(
            child: Card(
              elevation: 2,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ),
              child: Row(
                children: [
                  Expanded(
                    child: Stack(
                      children: [
                        Container(
                          height: height,
                          child: ClipRRect(
                            borderRadius: BorderRadius.only(
                              bottomLeft: Radius.circular(10),
                              topLeft: Radius.circular(10),
                            ),
                            child: Image.network(
                              'https://img.freepik.com/free-photo/delicious-grilled-burgers_62847-16.jpg?size=626&ext=jpg',
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        Positioned.fill(
                          child: Align(
                            alignment: Alignment.topLeft,
                            child: Padding(
                              padding: EdgeInsets.fromLTRB(12.0, 8.0, 0, 0),
                              child: ElevatedButton(
                                  style: ButtonStyle(
                                    backgroundColor:
                                        MaterialStateProperty.all<Color>(
                                            Colors.green),
                                  ),
                                  child: Text(
                                    '\$4.15',
                                    style: Theme.of(context)
                                        .textTheme
                                        .headline6
                                        .copyWith(
                                            fontWeight: FontWeight.bold,
                                            color: Colors.white),
                                  ),
                                  onPressed: () {
                                    Navigator.of(context).pushNamed('/details');
                                  }),
                            ),
                          ),
                        ),
                        Positioned.fill(
                          child: Align(
                            alignment: Alignment.bottomLeft,
                            child: Padding(
                              padding: EdgeInsets.fromLTRB(12.0, 0, 0, 8.0),
                              child: Text(
                                '525g',
                                style: Theme.of(context)
                                    .textTheme
                                    .bodyText1
                                    .copyWith(
                                        fontWeight: FontWeight.bold,
                                        color: Colors.white),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Expanded(
                    child: Container(
                      height: height,
                      child: Padding(
                        padding: EdgeInsets.all(24.0),
                        child: ListView(
                          scrollDirection: Axis.vertical,
                          children: [
                            Text(
                              'King Size Burger',
                              style: Theme.of(context)
                                  .textTheme
                                  .headline5
                                  .copyWith(fontWeight: FontWeight.bold),
                            ),
                            Padding(
                              padding: EdgeInsets.symmetric(vertical: 12.0),
                              child: Text(
                                'egg, mustad, onion, egg, mustad, onion, egg, mustad, onion, egg, mustad, onion, egg, mustad, onion, egg, mustad, onion, egg, mustad, onion, egg, mustad, onion',
                                style: Theme.of(context).textTheme.bodyText2,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
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
