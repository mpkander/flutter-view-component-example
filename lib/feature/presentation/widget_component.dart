import 'package:flutter/material.dart';
import 'package:flutter_view_component_example/core/view_component/view_component.dart';
import 'package:flutter_view_component_example/feature/domain/use_case.dart';
import 'package:flutter_view_component_example/feature/presentation/component.dart';
import 'package:flutter_view_component_example/feature/presentation/view.dart';

/// Entry point for a screen or simple widget.
/// 
/// Holding dependencies for the component.
class CounterWidgetComponent extends StatefulWidget {
  const CounterWidgetComponent({
    Key? key,
    required this.decrementCounterUseCase,
    required this.incrementCounterUseCase,
    required this.getCounterUseCase,
  }) : super(key: key);

  final DecrementCounterUseCase decrementCounterUseCase;
  final IncrementCounterUseCase incrementCounterUseCase;
  final GetCounterUseCase getCounterUseCase;

  @override
  State createState() => _CounterWidgetComponentState();
}

class _CounterWidgetComponentState
    extends ComponentState<CounterWidgetComponent, CounterComponent>
    implements CounterComponent {
  @override
  WidgetView<CounterComponent> buildView(BuildContext context) =>
      CounterView(this);

  @override
  void initState() {
    super.initState();
    counterState = ValueNotifier(widget.getCounterUseCase.counter);
  }

  @override
  late final ValueNotifier<int> counterState;

  @override
  void onDecreasePressed() {
    counterState.value = widget.decrementCounterUseCase.decrement();
  }

  @override
  void onIncreasePressed() {
    counterState.value = widget.incrementCounterUseCase.increment();
  }
}
