// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'todos_providers.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$filteredTodosHash() => r'caf4769c9505cfeea01d210e756655e1bb12a6f2';

/// See also [filteredTodos].
@ProviderFor(filteredTodos)
final filteredTodosProvider = AutoDisposeProvider<List<Todo>>.internal(
  filteredTodos,
  name: r'filteredTodosProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$filteredTodosHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef FilteredTodosRef = AutoDisposeProviderRef<List<Todo>>;
String _$todosCurrentFilterHash() =>
    r'22939d301be763df403fe832f0abd659b55f293d';

/// See also [TodosCurrentFilter].
@ProviderFor(TodosCurrentFilter)
final todosCurrentFilterProvider =
    NotifierProvider<TodosCurrentFilter, FilterType>.internal(
  TodosCurrentFilter.new,
  name: r'todosCurrentFilterProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$todosCurrentFilterHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef _$TodosCurrentFilter = Notifier<FilterType>;
String _$todosHash() => r'2408c6513cc46229643a8a270f9bba1cdf276b58';

/// See also [Todos].
@ProviderFor(Todos)
final todosProvider = NotifierProvider<Todos, List<Todo>>.internal(
  Todos.new,
  name: r'todosProvider',
  debugGetCreateSourceHash:
      const bool.fromEnvironment('dart.vm.product') ? null : _$todosHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef _$Todos = Notifier<List<Todo>>;
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
