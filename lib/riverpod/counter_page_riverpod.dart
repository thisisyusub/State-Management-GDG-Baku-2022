import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'counter_notifier.dart';

class CounterPageRiverpod extends ConsumerWidget {
  const CounterPageRiverpod({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    print('CounterPageRiverpod.build()');

    return Scaffold(
      body: Center(
        child: Consumer(
          builder: (context, ref, _) {
            final count = ref.watch(counterNotifierProvider);
            print('Consumer.build()');

            return Text(
              'Count: $count',
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
              ref.read(counterNotifierProvider.notifier).increment();
            },
          ),
          const SizedBox(width: 10),
          FloatingActionButton(
            child: const Icon(Icons.remove),
            onPressed: () {
              ref.read(counterNotifierProvider.notifier).decrement();
            },
          ),
        ],
      ),
    );
  }
}
