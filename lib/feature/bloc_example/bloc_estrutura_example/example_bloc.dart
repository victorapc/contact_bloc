import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:bloc/bloc.dart';

part 'example_state.dart';
part 'example_event.dart';

class ExampleBloc extends Bloc<ExampleEvent, ExampleState> {
  ExampleBloc() : super(ExampleStateInitial()) {
    on<ExampleFindNameEvent>(_findNames);
  }

  FutureOr<void> _findNames(
    ExampleFindNameEvent event,
    Emitter<ExampleState> emit,
  ) async {
    final names = [
      'Victor Alexandre',
      'Academia do Flutter',
      'Flutter',
      'Dart',
      'Flutter Bloc',
    ];
    await Future.delayed(const Duration(seconds: 1));
    emit(ExampleStateData(names: names));
  }
}
