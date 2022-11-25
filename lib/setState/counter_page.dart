import 'package:flutter/material.dart';

class CounterPagewithSetState extends StatefulWidget {
  const CounterPagewithSetState({super.key});

  @override
  State<CounterPagewithSetState> createState() =>
      _CounterPagewithSetStateState();
}

class _CounterPagewithSetStateState extends State<CounterPagewithSetState> {
  int _count = 0;

  @override
  Widget build(BuildContext context) {
    debugPrint('build called!');

    return Scaffold(
      body: Center(
        child: Text(
          'Count: $_count',
          style: const TextStyle(
            fontSize: 20,
          ),
        ),
      ),
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          FloatingActionButton(
            child: const Icon(Icons.add),
            onPressed: () {
              setState(() {
                _count++;
              });
            },
          ),
          const SizedBox(width: 10),
          FloatingActionButton(
            child: const Icon(Icons.remove),
            onPressed: () {
              setState(() {
                _count--;
              });
            },
          ),
        ],
      ),
    );
  }
}
