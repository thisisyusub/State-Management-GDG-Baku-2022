import 'package:flutter/material.dart';

import 'counter.dart';

class CounterProvider extends InheritedWidget {
  const CounterProvider({
    super.key,
    required Widget child,
    required this.counter,
  }) : super(child: child);

  final Counter counter;

  static CounterProvider of(BuildContext context) {
    return context.dependOnInheritedWidgetOfExactType<CounterProvider>()!;
  }

  @override
  bool updateShouldNotify(CounterProvider oldWidget) {
    return true;
  }
}
