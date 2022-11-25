import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'counter_notifier.dart';

class CounterPageProvider extends StatelessWidget {
  const CounterPageProvider({super.key});

  @override
  Widget build(BuildContext context) {
    debugPrint('build called!');

    return Scaffold(
      body: Center(
        child: Consumer<CounterNotifier>(
          builder: (context, notifier, _) {
            debugPrint('consumer build called!');

            return Text(
              'Count: ${notifier.count}',
              style: const TextStyle(fontSize: 20),
            );
          },
        ),
      ),
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          FloatingActionButton(
            child: const Icon(Icons.add),
            onPressed: () {
              context.read<CounterNotifier>().increment();
            },
          ),
          const SizedBox(width: 10),
          FloatingActionButton(
            child: const Icon(Icons.remove),
            onPressed: () {
              context.read<CounterNotifier>().decrement();
            },
          ),
        ],
      ),
    );
  }
}
