import 'package:flutter/material.dart';

class IngredientItemWidget extends StatelessWidget {
  final name;
  final price;
  final url;

  const IngredientItemWidget({
    super.key,
    this.name,
    this.price,
    this.url,
  });

  @override
  Widget build(BuildContext context) {
    return IntrinsicHeight(
      child: Container(
        width: double.infinity,
        padding: const EdgeInsets.only(top: 16.0, left: 18.0),
        child: Row(
          mainAxisSize: MainAxisSize.max,
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              mainAxisSize: MainAxisSize.max,
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.only(right: 18.0),
                  child: CircleAvatar(
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
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 16.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        "$name",
                        style: const TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        "\$$price",
                        textAlign: TextAlign.start,
                      ),
                    ],
                  ),
                )
              ],
            ),
            const Spacer(),
            Padding(
              padding: const EdgeInsets.only(right: 18.0),
              child: Row(
                children: <Widget>[
                  MaterialButton(
                    minWidth: 4.0,
                    color: Colors.white70,
                    onPressed: () {},
                    child: const Text("-"),
                  ),
                  const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 5.0),
                    child: Text(
                      "1",
                    ),
                  ),
                  MaterialButton(
                    minWidth: 4.0,
                    color: Colors.white70,
                    onPressed: () {},
                    child: const Text("+"),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
