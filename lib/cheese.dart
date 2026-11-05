import 'package:flutter/material.dart';

class CheesePizzaScreen extends StatelessWidget {
  const CheesePizzaScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 220, 208, 255),
        title: const Text('Cheese Pizza'),
      ),
      body: Center(
        child: Column(
          children: [
            Image.asset('assets/images/cheesePizza.png', width: 200),
            const Text(
              'A golden, crispy crust topped with rich tomato sauce and a generous blend of creamy, melted cheese.',
            ),
          ],
        ),
      ),
    );
  }
}
