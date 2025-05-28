import 'package:flutter/material.dart';

class BurgerCard extends StatelessWidget {
  final double? width;
  final double? height;

  const BurgerCard({super.key, this.width, this.height});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: InkWell(
        splashColor: Colors.yellow.withOpacity(0.9),
        onTap: () {
          debugPrint('Card tapped.');
        },
        child: Card(
          color: Colors.yellow.withOpacity(0.7),
          clipBehavior: Clip.hardEdge,
          shape: RoundedRectangleBorder(
            side: BorderSide(color: Colors.yellow.withOpacity(0.7), width: 1),
            borderRadius: BorderRadius.circular(20),
          ),
          child: Row(
            children: [
              Column(
                children: [
                  SizedBox(
                    width: width! / 3.7,
                    height: 110,
                    child: Image.asset(
                      'assets/images/tasty_burger.jpg',
                      fit: BoxFit.cover,
                    ),
                  ),
                ],
              ),
              Flexible(
                child: Text("Taste our spetial grilled burgers",
                    style: Theme.of(context)
                        .textTheme
                        .bodyLarge
                        ?.copyWith(fontWeight: FontWeight.bold)),
              )
            ],
          ),
        ),
      ),
    );
  }
}


// @override
// Widget build(BuildContext context) {
//   return GestureDetector(
//     onTap: () => Navigator.of(context).pushNamed('/details'),
//     child: Flex(direction: Axis.horizontal, children: [Card(
//           elevation: 2,
//           shape: RoundedRectangleBorder(
//             borderRadius: BorderRadius.circular(10),
//           ),
//           child: Row(
//             children: [
//                  Stack(
//                   children: [
//                     Card(
//                       child: SizedBox(
//                         height: height,
//                         width: width,
//                         child: ClipRRect(
//                           borderRadius: const BorderRadius.all(
//                             Radius.circular(10.0),
//                           ),
//                           child: Image.network(
//                             'https://img.freepik.com/free-photo/delicious-grilled-burgers_62847-16.jpg?size=626&ext=jpg',
//                             fit: BoxFit.cover,
//                           ),
//                         ),
//                       ),
//                     ),
//                     Positioned.fill(
//                       child: Align(
//                         alignment: Alignment.topLeft,
//                         child: Padding(
//                           padding: const EdgeInsets.fromLTRB(12.0, 8.0, 0, 0),
//                           child: ElevatedButton(
//                               style: ButtonStyle(
//                                 backgroundColor:
//                                     MaterialStateProperty.all<Color>(
//                                         Colors.green),
//                               ),
//                               child: Text(
//                                 '\$4.15',
//                                 style: Theme.of(context)
//                                     .textTheme
//                                     .headlineSmall!
//                                     .copyWith(
//                                         fontWeight: FontWeight.bold,
//                                         color: Colors.white),
//                               ),
//                               onPressed: () {
//                                 Navigator.of(context).pushNamed('/details');
//                               }),
//                         ),
//                       ),
//                     ),
//                     Positioned.fill(
//                       child: Align(
//                         alignment: Alignment.bottomLeft,
//                         child: Padding(
//                           padding: const EdgeInsets.fromLTRB(12.0, 0, 0, 8.0),
//                           child: ClipRRect(
//                             borderRadius: const BorderRadius.all(
//                               Radius.circular(10.0),
//                             ),
//                             child: Container(
//                               padding: const EdgeInsets.all(4.0),
//                               color: Colors.grey[100],
//                               child: Text(
//                                 '525g',
//                                 style: Theme.of(context)
//                                     .textTheme
//                                     .headlineMedium!
//                                     .copyWith(
//                                         fontWeight: FontWeight.bold,
//                                         color: Colors.black),
//                               ),
//                             ),
//                           ),
//                         ),
//                       ),
//                     ),
//                   ],
//                 ),
//               SizedBox(
//                   height: height,
//                   child: Padding(
//                     padding: const EdgeInsets.all(24.0),
//                     child: ListView(
//                       scrollDirection: Axis.vertical,
//                       children: [
//                         Text(
//                           'King Size Burger',
//                           style: Theme.of(context)
//                               .textTheme
//                               .headlineLarge!
//                               .copyWith(fontWeight: FontWeight.bold),
//                         ),
//                         Padding(
//                           padding: const EdgeInsets.symmetric(vertical: 12.0),
//                           child: Text(
//                             'egg, mustad, onion, egg, mustad, onion, egg, mustad, onion, egg, mustad, onion, egg, mustad, onion, egg, mustad, onion, egg, mustad, onion, egg, mustad, onion',
//                             style: Theme.of(context).textTheme.bodyMedium,
//                           ),
//                         ),
//                       ],
//                     ),
//                   ),
//               ),
//             ],
//           ),
//         ),
//     ]),
//   );
// }
