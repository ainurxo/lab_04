import 'package:flutter/material.dart';

class FriesPizzaScreen extends StatelessWidget {
  const FriesPizzaScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 247, 231, 206),
        title: const Text('Box of fries'),
      ),
      body: Center(
        child: Column(
          children: [
            Image.asset('assets/images/fries.png', width: 200),
            const Text(
              'Golden, crispy fries lightly seasoned to perfection, served hot for a satisfying and delicious snack',
            ),
          ],
        ),
      ),
    );
  }
}
