import 'package:flutter/material.dart';

import '../widgets/burger_card.dart';
import '../widgets/burger_offer.dart';

class MenuPage extends StatelessWidget {
  final flavors = ['Cheese', 'Chicken', 'Fish', 'Vegetarian', 'Impossible'];
  final offers = [
    'https://img.freepik.com/free-photo/delicious-grilled-burgers_62847-16.jpg?size=626&ext=jpg',
    'https://img.freepik.com/free-photo/delicious-grilled-burgers_62847-16.jpg?size=626&ext=jpg',
    'https://img.freepik.com/free-photo/delicious-grilled-burgers_62847-16.jpg?size=626&ext=jpg',
    'https://img.freepik.com/free-photo/delicious-grilled-burgers_62847-16.jpg?size=626&ext=jpg',
  ];

  late Size _size;
  @override
  Widget build(BuildContext context) {
    _size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'TASTYBURGER',
          style: Theme.of(context)
              .textTheme
              .headlineSmall!
              .copyWith(fontWeight: FontWeight.bold, color: Colors.black),
        ),
        centerTitle: true,
        backgroundColor: Colors.yellow[600],
        actions: [
          IconButton(
            icon: const Icon(
              Icons.access_alarm_outlined,
              color: Colors.black,
            ),
            onPressed: () {},
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 50.0,
              child: ListView(
                scrollDirection: Axis.horizontal,
                padding: const EdgeInsets.all(8.0),
                children: [
                  ...flavors.map(
                    (flavor) => Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 4.0),
                      child: ElevatedButton(
                          style: ButtonStyle(
                              backgroundColor: MaterialStateProperty.all<Color>(
                                  Colors.yellow[600]!)),
                          child: Text(
                            flavor,
                            style: Theme.of(context)
                                .textTheme
                                .bodyLarge!
                                .copyWith(
                                    fontWeight: FontWeight.normal,
                                    color: Colors.black),
                          ),
                          onPressed: () {}),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.all(8.0),
              child: BurgerCard(
                width: _size.width,
                height: _size.height / 4.0,
              ),
            ),
            Padding(
              padding: EdgeInsets.all(20.0),
              child: Text(
                'SPECIAL OFFERS',
                style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                    fontSize: 18.0,
                    fontWeight: FontWeight.bold,
                    color: Colors.black),
              ),
            ),
            Container(
              width: _size.width,
              height: _size.height / 4,
              child: ListView(
                shrinkWrap: true,
                scrollDirection: Axis.horizontal,
                children: [
                  ...offers.map(
                    (offerUrl) => Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 12.0),
                      child: BurgerOffer(
                        width: _size.width,
                        height: _size.height,
                        url: offerUrl,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: BurgerCard(
                width: _size.width,
                height: _size.height / 4.0,
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            IconButton(
                icon: const Icon(Icons.restaurant_menu), onPressed: () {}),
            IconButton(
                icon: const Icon(Icons.favorite_outline), onPressed: () {}),
            IconButton(
                icon: const Icon(Icons.shopping_cart_outlined),
                onPressed: () {}),
            IconButton(
                icon: const Icon(Icons.person_outline), onPressed: () {}),
          ],
        ),
      ),
    );
  }
}
