import 'package:flutter_view_component_example/feature/domain/use_case.dart';

/// !!! It's not a part of the View-Copmonent pattern. It's just an example, how
/// you can holding your business-logic.
class CounterRepository
    implements
        DecrementCounterUseCase,
        IncrementCounterUseCase,
        GetCounterUseCase {
  CounterRepository({
    required this.counter,
  });

  @override
  int counter;

  @override
  int decrement() => --counter;

  @override
  int increment() => ++counter;
}
