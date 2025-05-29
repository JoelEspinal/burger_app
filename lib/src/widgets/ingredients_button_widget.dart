import 'package:flutter/material.dart';

class IngredientsButtonWidget extends StatelessWidget {
  final VoidCallback onPressed;

  const IngredientsButtonWidget({Key? key, required this.onPressed})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          padding: const EdgeInsets.symmetric(horizontal: 18.0),
        ),
        child: const Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Ingredients',
              style: TextStyle(fontSize: 18.0, color: Colors.black),
            ),
            Icon(
              Icons.expand_less_rounded,
              size: 40.0,
              color: Colors.black,
            )
          ],
        ),
        onPressed: onPressed,
      ),
    );
  }
}
