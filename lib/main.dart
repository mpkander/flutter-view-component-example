import 'package:flutter/material.dart';
import 'package:flutter_view_component_example/feature/data/repository.dart';
import 'package:flutter_view_component_example/feature/presentation/widget_component.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    final repository = CounterRepository(counter: 0);

    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: CounterWidgetComponent(
        decrementCounterUseCase: repository,
        incrementCounterUseCase: repository,
        getCounterUseCase: repository,
      ),
    );
  }
}
