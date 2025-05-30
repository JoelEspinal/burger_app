// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

import '../widgets/ingredients_bottom_menu.dart';

class DetailPage extends StatelessWidget {
  final backgroundImg = 'assets/images/background_burger.webp';

  late Size size;

  @override
  Widget build(BuildContext context) {
    var _size = MediaQuery.of(context).size;

    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        leading: MaterialButton(
          onPressed: () {
            Navigator.of(context).pop();
          },
          child: const Icon(
            Icons.chevron_left_outlined,
            color: Colors.white,
            size: 45.0,
          ),
        ),
        actions: const [
          SizedBox(
            width: 20.0,
          ),
          Icon(Icons.favorite_border_outlined, color: Colors.white, size: 30.0),
          SizedBox(
            width: 20.0,
          ),
        ],
      ),
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
          Positioned(
            top: 120.0,
            left: 30.0,
            child: Text(
              'Cheese\nBurger',
              style: Theme.of(context)
                  .textTheme
                  .headlineLarge
                  ?.copyWith(fontWeight: FontWeight.bold, color: Colors.white),
            ),
          ),
          Positioned(
            top: 120.0,
            right: 30.0,
            child: Column(
              children: [
                Text(
                  '325g',
                  style: Theme.of(context).textTheme.headlineSmall?.copyWith(
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                    shadows: [
                      const Shadow(
                        blurRadius: 10.0,
                        color: Colors.black,
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 10.0,
                ),
                Text(
                  '\$2.',
                  style: Theme.of(context).textTheme.headlineLarge!.copyWith(
                    fontWeight: FontWeight.bold,
                    color: Colors.yellow,
                    shadows: [
                      const Shadow(
                        blurRadius: 10.0,
                        color: Colors.black,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Positioned(
            top: 160.0,
            right: 15.0,
            child: Text(
              '15',
              style: Theme.of(context).textTheme.headlineSmall!.copyWith(
                fontWeight: FontWeight.bold,
                color: Colors.yellow,
                shadows: [
                  const Shadow(
                    blurRadius: 10.0,
                    color: Colors.black,
                  ),
                ],
              ),
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
          color: Colors.black,
          size: 32.0,
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
      resizeToAvoidBottomInset: false,
    );
  }
}
