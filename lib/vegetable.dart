import 'package:flutter/material.dart';

class VegetablePizzaScreen extends StatelessWidget {
  const VegetablePizzaScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 244, 205, 232),
        title: const Text('Vegetable Pizza'),
      ),
      body: Center(
        child: Column(
          children: [
            Image.asset('assets/images/vegePizza.png', width: 200),
            const Text(
              'A delightful combination of fresh vegetables, savoury tomato sauce, and melted cheese, baked to golden perfection ',
            ),
          ],
        ),
      ),
    );
  }
}
