import 'package:burger_app_secure/src/widgets/price_widget.dart';
import 'package:flutter/material.dart';

class BurgerCard extends StatelessWidget {
  final double? width;
  final double? height;

  const BurgerCard({super.key, this.width, this.height});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width ?? 100 * 0.5,
      height: 200.0,
      child: InkWell(
        splashColor: Colors.grey,
        radius: 0.5,
        onTap: () {},
        child: Card(
          clipBehavior: Clip.hardEdge,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          ),
          child: Row(
            children: [
              Flexible(
                  child: Stack(
                children: [
                  Image.asset('assets/images/beef_burger.webp'),
                  const Positioned(
                    top: 12.0,
                    left: 12.0,
                    child: PriceWidget(),
                  ),
                  Positioned(
                      bottom: 12.0,
                      left: 12.0,
                      child: Text(
                        '525g',
                        style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          shadows: [
                            const Shadow(
                              blurRadius: 10.0,
                              color: Colors.black,
                            ),
                          ],
                        ),
                      )),
                ],
              )),
              Flexible(
                child: Padding(
                  padding:
                      const EdgeInsets.only(top: 10.0, left: 20, right: 20.0),
                  child: ListTile(
                    title: Text(
                      'King Size Burger',
                      style: Theme.of(context)
                          .textTheme
                          .headlineSmall!
                          .copyWith(fontWeight: FontWeight.bold),
                    ),
                    subtitle: Padding(
                      padding: const EdgeInsets.only(top: 10.0, bottom: 15.0),
                      child: ListView(
                        shrinkWrap: true,
                        children: [
                          Text(
                            'egg, mustard, onion, egg, mustard, onion, egg, mustard, onion, egg, mustard, onion, egg, mustard, onion, mustard, onion, egg, mustard, onion, egg, mustard, onion, mustard, onion, egg, mustard, onion, egg, mustard, onion, mustard, onion, egg, mustard, onion, egg, mustard, onion',
                            style: Theme.of(context).textTheme.bodyMedium,
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
