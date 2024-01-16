import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_app/presentation/screens/providers/providers.dart';

class StreamProviderScreen extends StatelessWidget {
  const StreamProviderScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Stream Provider'),
      ),
      body: const StreamView(),
    );
  }
}

class StreamView extends ConsumerWidget {
  const StreamView({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final userInChat = ref.watch(usersInChatsProvider);

    if (userInChat.isLoading) {
      return const Center(
        child: CircularProgressIndicator(),
      );
    }

    if (userInChat.hasError) {
      return SizedBox(
        width: double.infinity,
        height: double.infinity,
        child: Center(
          child: Text(userInChat.error.toString()),
        ),
      );
    }

    final users = userInChat.value!;

    return ListView.builder(
      itemCount: users.length,
      itemBuilder: (context, index) {
        final user = users[index];

        return ListTile(
          title: Text(user),
        );
      },
    );
  }
}
