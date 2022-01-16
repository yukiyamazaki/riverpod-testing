import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_state_manegement/main.dart';

class RiverMain extends ConsumerWidget {
  const RiverMain({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final int value = ref.watch(counterPrivider);

    return Scaffold(
      appBar: AppBar(
        title: const Text('Riverpod'),
      ),
      body: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('$value'),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          ref.read(counterPrivider.notifier).state++;
        },
        child: const Icon(Icons.add),
        tooltip: 'Increment',
      ),
    );
  }
}
