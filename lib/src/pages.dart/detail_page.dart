// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

import '../widgets/ingredients_bottom_menu.dart';

class DetailPage extends StatelessWidget {
  final backgroundImg = 'assets/images/background_burger.webp';

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
      actions: const [Icon(Icons.favorite_border_outlined)],
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
            child: Image.asset(
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
                      child: Text(
                        '325g',
                        style: Theme.of(context)
                            .textTheme
                            .headlineSmall
                            ?.copyWith(
                                fontWeight: FontWeight.bold, color: Colors.red),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 65.0, top: 15.0),
                      child: Badge(
                        label: Text(
                          '\$2.15',
                          style: Theme.of(context)
                              .textTheme
                              .headlineSmall!
                              .copyWith(
                                fontWeight: FontWeight.bold,
                                color: Colors.black87,
                              ),
                        ),
                        backgroundColor: Colors.white.withAlpha(200),
                        child: const Icon(Icons.receipt),
                      ),
                    ),
                  ],
                )
              ],
            ),
          )
        ],
      ),
      bottomSheet: IngredientsheetBottomMenu(),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.yellowAccent,
        onPressed: () {
          const snackBar = SnackBar(content: Text('Yay! Tanks for order!'));
          ScaffoldMessenger.of(context).showSnackBar(snackBar);
          Navigator.of(context).pop();
        },
        child: const Icon(
          Icons.shopping_cart_outlined,
          color: Colors.red,
          size: 32.0,
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
      resizeToAvoidBottomInset: false,
    );
  }
}
