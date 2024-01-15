import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_app/presentation/screens/providers/providers.dart';

class FamilyFutureScreen extends ConsumerStatefulWidget {
  const FamilyFutureScreen({super.key});

  @override
  FamilyFutureScreenState createState() => FamilyFutureScreenState();
}

class FamilyFutureScreenState extends ConsumerState<FamilyFutureScreen> {
  int pokemonId = 3;
  @override
  Widget build(BuildContext context) {
    final pokemonAsync = ref.watch(pokemonProvider(pokemonId));

    return Scaffold(
        appBar: AppBar(
          title: const Text('Family Future Provider'),
        ),
        body: Center(
          child: pokemonAsync.when(
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
                pokemonId++;
                setState(() {});
              },
            ),
            const SizedBox(height: 20),
            FloatingActionButton(
              child: const Icon(Icons.fast_rewind),
              onPressed: () {
                if (pokemonId <= 1) return;
                pokemonId--;
                setState(() {});
              },
            ),
          ],
        ));
  }
}
