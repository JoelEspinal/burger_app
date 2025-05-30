import 'package:flutter/material.dart';

class IngredientWidget extends StatelessWidget {
  final String name;
  final String url;
  final int quantity;

  const IngredientWidget(
      {super.key,
      required this.name,
      required this.url,
      required this.quantity});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 18.0),
      child: Stack(
        children: [
          CircleAvatar(
            radius: 36.0,
            backgroundColor: Colors.grey,
            child: CircleAvatar(
              backgroundColor: Colors.white,
              radius: 34.0,
              child: Image.asset(
                url,
                width: 44.0,
                height: 44.0,
                fit: BoxFit.scaleDown,
              ),
            ),
          ),
          Positioned.fill(
            child: Align(
              alignment: Alignment.topRight,
              child: CircleAvatar(
                backgroundColor: Colors.grey,
                radius: 13.0,
                child: CircleAvatar(
                  backgroundColor: Colors.white,
                  radius: 12.0,
                  child: Text(
                    '$quantity',
                    style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                          color: Colors.grey,
                        ),
                  ),
                ),
              ),
            ),
          ),
          Positioned.fill(
              child: Padding(
            padding: const EdgeInsets.only(),
            child: Align(
              alignment: Alignment.bottomCenter,
              child: Text(name),
            ),
          )),
        ],
      ),
    );
  }
}
