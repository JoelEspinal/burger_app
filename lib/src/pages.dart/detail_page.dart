// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

import '../widgets/ingredients_bottom_menu.dart';

class DetailPage extends StatelessWidget {
  final backgroundImg =
      'https://img.freepik.com/free-photo/delicious-grilled-burgers_62847-16.jpg?size=626&ext=jpg';

  late Size size;

  @override
  Widget build(BuildContext context) {
    var _size = MediaQuery.of(context).size;

    final _appBar = AppBar(
      backgroundColor: Colors.transparent,
      leading: ElevatedButton(
        onPressed: () {
          Navigator.of(context).pop();
        },
        child: Icon(
          Icons.chevron_left,
          color: Colors.white,
          size: 32.0,
        ),
      ),
      actions: [Icon(Icons.favorite_border_outlined)],
    );

    var _appBarHeight  = _appBar.preferredSize.height;

    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: _appBar,
      body: Stack(
        children: [
          Container(
            width: _size.width,
            height: _size.height,
            child: Image.network(
              backgroundImg,
              fit: BoxFit.cover,
            ),
          ),
          Container(
            padding: EdgeInsets.only(
                top: _appBarHeight * 2, left: 24.0, right: 24.0),
            child: Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  children: [
                    Text(
                      'Cheese\nBurget',
                      style: Theme.of(context).textTheme.headlineMedium.copyWith(
                          fontWeight: FontWeight.bold, color: Colors.white),
                    ),
                  ],
                ),
                Column(
                  mainAxisSize: MainAxisSize.max,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Text(
                      '325g',
                      style: Theme.of(context).textTheme.headlineSmall.copyWith(
                          fontWeight: FontWeight.bold, color: Colors.white),
                    ),
                    Container(
                      child: Row(
                        children: [
                          Text(
                            '\$2.',
                            style: Theme.of(context)
                                .textTheme
                                .headlineLarge
                                .copyWith(
                                    fontWeight: FontWeight.bold,
                                    color: Colors.yellow),
                          ),
                          Column(
                            children: [
                              Text(
                                '15',
                                style: Theme.of(context)
                                    .textTheme
                                    .headlineSmall
                                    .copyWith(
                                        fontWeight: FontWeight.bold,
                                        color: Colors.yellow),
                              ),
                            ],
                          )
                        ],
                      ),
                    )
                  ],
                )
              ],
            ),
          )
        ],
      ),
      bottomSheet: IngredientsheetBottomMenu(),
    );
  }
}
