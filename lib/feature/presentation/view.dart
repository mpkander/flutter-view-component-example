import 'package:flutter/material.dart';
import 'package:flutter_view_component_example/core/view_component/view_component.dart';
import 'package:flutter_view_component_example/feature/presentation/component.dart';

class CounterView extends WidgetView<CounterComponent> {
  const CounterView(CounterComponent component, {Key? key})
      : super(component, key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'You have pushed the button this many times:',
            ),
            ValueListenableBuilder<int>(
              valueListenable: component.counterState,
              builder: (_, value, __) {
                return Text(
                  '$value',
                  style: Theme.of(context).textTheme.headlineMedium,
                );
              },
            ),
          ],
        ),
      ),
      floatingActionButton: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          FloatingActionButton(
            onPressed: component.onIncreasePressed,
            tooltip: 'Increment',
            child: const Icon(Icons.add),
          ),
          const SizedBox(height: 8),
          FloatingActionButton(
            onPressed: component.onDecreasePressed,
            tooltip: 'Decrement',
            child: const Icon(Icons.remove),
          ),
        ],
      ),
    );
  }
}
