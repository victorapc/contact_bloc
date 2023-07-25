part of 'example_freezed_bloc.dart';

@freezed
class ExampleFreezedState with _$ExampleFreezedState {
  factory ExampleFreezedState.initial() = _ExampleFreezedStateInitial;
  factory ExampleFreezedState.loading() = _ExampleFreezedStateLoading;
  // Para caso de um banner é necessário adicionar a Lista para não perder o estado,
  // fazendo que ao mostrar o banner não perder os dados dentro da função addName dentro
  // do ExampleFreezedBloc.
  factory ExampleFreezedState.showBanner(
      {required List<String> names,
      required String message}) = _ExampleFreezedStateBanner;
  factory ExampleFreezedState.data({required List<String> names}) =
      _ExampleFreezedStateData;
}
