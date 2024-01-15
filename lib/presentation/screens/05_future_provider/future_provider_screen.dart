import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_app/presentation/screens/providers/providers.dart';

class FutureProviderScreen extends ConsumerWidget {
  const FutureProviderScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final pokemonName = ref.watch(pokemonNameProvider);

    return Scaffold(
        appBar: AppBar(
          title: const Text('Future Provider'),
        ),
        body: Center(
          child: pokemonName.when(
              data: (data) => Text(
                    data,
                    style: const TextStyle(fontSize: 60),
                  ),
              loading: () => const CircularProgressIndicator(),
              error: (error, stack) => Text("$error")),
        ),
        floatingActionButton: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            FloatingActionButton(
              heroTag: "btn1",
              child: const Icon(Icons.fast_forward),
              onPressed: () {
                ref.read(pokemonIdProvider.notifier).nextPokemon();
              },
            ),
            const SizedBox(height: 20),
            FloatingActionButton(
              child: const Icon(Icons.fast_rewind),
              onPressed: () {
                ref.read(pokemonIdProvider.notifier).previousPokemon();
              },
            ),
          ],
        ));
  }
}
