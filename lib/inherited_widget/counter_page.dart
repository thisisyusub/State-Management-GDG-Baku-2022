import 'package:flutter/material.dart';

import 'counter.dart';
import 'counter_provider.dart';

class CounterPageInherited extends StatefulWidget {
  const CounterPageInherited({super.key});

  @override
  State<CounterPageInherited> createState() => _CounterPageInheritedState();
}

class _CounterPageInheritedState extends State<CounterPageInherited> {
  final counter = Counter(0);

  @override
  Widget build(BuildContext context) {
    return CounterProvider(
      counter: counter,
      child: Scaffold(
        body: const Center(
          child: CountView(),
        ),
        floatingActionButton: Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            FloatingActionButton(
              child: const Icon(Icons.add),
              onPressed: () {
                setState(() {
                  counter.increment();
                });
              },
            ),
            const SizedBox(width: 10),
            FloatingActionButton(
              child: const Icon(Icons.remove),
              onPressed: () {
                setState(() {
                  counter.decrement();
                });
              },
            ),
          ],
        ),
      ),
    );
  }
}

class CountView extends StatelessWidget {
  const CountView({super.key});

  @override
  Widget build(BuildContext context) {
    final counter = CounterProvider.of(context).counter;

    return Text(
      'Count: ${counter.count}',
      style: const TextStyle(fontSize: 20),
    );
  }
}
