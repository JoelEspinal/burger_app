// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

import '../widgets/ingredients_bottom_menu.dart';

class DetailPage extends StatelessWidget {
  final backgroundImg =
      'https://www.foodandwine.com/thmb/iUUTcrSR2O0jUGzuO5XLS6VQkS8=/1500x0/filters:no_upscale():max_bytes(150000):strip_icc():format(webp)/Grilled-Burgers-with-Pimento-Cheese-FT-RECIPE0723-7bba8a4daaa646b29e3d111b32ae0e40.jpg';

  late Size size;

  @override
  Widget build(BuildContext context) {
    var _size = MediaQuery.of(context).size;

    final _appBar = AppBar(
      backgroundColor: Colors.yellowAccent,
      // leading: ElevatedButton(
      //   onPressed: () {
      //     Navigator.of(context).pop();
      //   },
      //   child: Icon(
      //     Icons.chevron_left,
      //     color: Colors.red,
      //     size: 32.0,
      //   ),
      // ),
      actions: [Icon(Icons.favorite_border_outlined)],
    );

    var _appBarHeight = _appBar.preferredSize.height;

    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: _appBar,
      body: Stack(
        children: [
          SizedBox(
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
                      style: Theme.of(context)
                          .textTheme
                          .headlineMedium
                          ?.copyWith(
                              fontWeight: FontWeight.bold, color: Colors.white),
                    ),
                  ],
                ),
                Column(
                  mainAxisSize: MainAxisSize.max,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    CircleAvatar(
                      backgroundColor: Colors.yellowAccent,
                      radius: 36.0,
                      child:  Text(
                        '325g',
                        style: Theme.of(context)
                            .textTheme
                            .headlineSmall
                            ?.copyWith(
                            fontWeight: FontWeight.bold, color: Colors.red),
                      ),
                    ),

                    SizedBox(
                      child: Row(
                        children: [
                          Text(
                            '\$2.',
                            style: Theme.of(context)
                                .textTheme
                                .headlineLarge
                                ?.copyWith(
                                    fontWeight: FontWeight.bold,
                                    color: Colors.black),
                          ),
                          Column(
                            children: [
                              Text(
                                '15',
                                style: Theme.of(context)
                                    .textTheme
                                    .headlineSmall
                                    ?.copyWith(
                                        fontWeight: FontWeight.bold,
                                        color: Colors.black),
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
