import 'package:flutter/material.dart';

class PriceWidget extends StatelessWidget {
  const PriceWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      color: Colors.green,
      child: Text(
        '\$4.15',
        style: Theme.of(context).textTheme.headlineSmall!.copyWith(
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
      ),
      onPressed: () {},
    );
  }
}
