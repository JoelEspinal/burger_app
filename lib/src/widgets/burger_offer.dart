import 'package:burger_app_secure/src/widgets/price_widget.dart';
import 'package:flutter/material.dart';

class BurgerOffer extends StatelessWidget {
  final String url;
  final double width;
  final double height;

  const BurgerOffer(
      {super.key,
      required this.url,
      required this.width,
      required this.height});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => Navigator.of(context).pushNamed('/details'),
      child: Stack(
        children: [
          SizedBox(
            height: height,
            width: width / 2.5,
            child: ClipRRect(
              borderRadius: const BorderRadius.all(
                Radius.circular(10),
              ),
              child: Image.asset(
                url,
                fit: BoxFit.cover,
              ),
            ),
          ),
          Positioned.fill(
            child: Align(
              alignment: Alignment.topLeft,
              child: Padding(
                padding: const EdgeInsets.fromLTRB(12.0, 12.0, 0, 0),
                child: Column(
                  children: [
                    Text(
                      'Cheese Burger',
                      style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                        shadows: [
                          const Shadow(
                            blurRadius: 15.0,
                            color: Colors.black,
                          ),
                        ],
                      ),
                    ),
                    const PriceWidget(),
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
