import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'state_providers.g.dart';

@riverpod
class Counter extends _$Counter {
  @override
  int build() => 5;

  void increaseByOne() {
    state++;
  }
}

@riverpod
class DarkMode extends _$DarkMode {
  @override
  bool build() => false;

  void toggleDarkMode() {
    state = !state;
  }
}

@riverpod
class ChangeName extends _$ChangeName {
  @override
  String build() {
    return 'Javier Claros';
  }

  void changeName(String name) {
    state = name;
  }
}
