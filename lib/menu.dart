import 'package:flutter/material.dart';

const TextStyle itemStyle = TextStyle(
  color: Color.fromARGB(255, 73, 54, 107),
  fontWeight: FontWeight.bold,
);

class MenuScreen extends StatelessWidget {
  const MenuScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 230, 217, 255),
        foregroundColor: const Color.fromARGB(255, 73, 54, 107),
        title: const Text('Pizza Store App'),
      ),

      body: Column(
        children: [
          GestureDetector(
            onTap: () {
              Navigator.pushNamed(context, 'vegetable');
            },
            child: Card(
              color: const Color.fromARGB(255, 248, 221, 235),
              child: ListTile(
                leading: Image.asset('assets/images/vegePizza.png', width: 40),
                title: const Text('Vegetable Pizza', style: itemStyle),
              ),
            ),
          ),
          GestureDetector(
            onTap: () {
              Navigator.pushNamed(context, 'cheese');
            },
            child: Card(
              color: const Color.fromARGB(255, 234, 220, 248),
              child: ListTile(
                leading: Image.asset(
                  'assets/images/cheesePizza.png',
                  width: 40,
                ),
                title: const Text('Cheese Pizza', style: itemStyle),
              ),
            ),
          ),
          GestureDetector(
            onTap: () {
              Navigator.pushNamed(context, 'fries');
            },
            child: Card(
              color: const Color.fromARGB(255, 255, 241, 204),
              child: ListTile(
                leading: Image.asset('assets/images/fries.png', width: 40),
                title: const Text('Box of Fries', style: itemStyle),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
