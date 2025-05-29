import 'package:flutter/material.dart';

class IngredientsButtonWidget extends StatelessWidget {
  final VoidCallback onPressed;
  bool _isExpanded = false;

  IngredientsButtonWidget({super.key, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
      child: ElevatedButton(
          style: ElevatedButton.styleFrom(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10.0),
              ),
              padding: const EdgeInsets.symmetric(horizontal: 18.0),
              backgroundColor: Colors.yellow),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                _isExpanded
                    ? Icons.expand_more_rounded
                    : Icons.expand_less_rounded,
                size: 40.0,
                color: Colors.black,
              ),
              const Text(
                'CREATE A BURGER',
                style: TextStyle(fontSize: 18.0, color: Colors.black),
              ),
            ],
          ),
          onPressed: () {
            onPressed();
            _isExpanded = !_isExpanded;
          }),
    );
  }
}
