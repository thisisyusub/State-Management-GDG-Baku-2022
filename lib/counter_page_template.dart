import 'package:flutter/material.dart';

class CounterPageTemplate extends StatelessWidget {
  const CounterPageTemplate({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: const Center(
        child: Text(
          'Count: 0',
          style: TextStyle(fontSize: 20),
        ),
      ),
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          FloatingActionButton(
            child: const Icon(Icons.add),
            onPressed: () {},
          ),
          const SizedBox(width: 10),
          FloatingActionButton(
            child: const Icon(Icons.remove),
            onPressed: () {},
          ),
        ],
      ),
    );
  }
}
