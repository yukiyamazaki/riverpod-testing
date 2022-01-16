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
    final String valueHello = ref.watch(helloPrivider);

    return Scaffold(
      appBar: AppBar(
        title: const Text('Riverpod'),
      ),
      body: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('$value'),
            Text(valueHello),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // ref.read(counterPrivider.notifier).state++;
          ref.read(helloPrivider.notifier).state = '成功';
        },
        child: const Icon(Icons.add),
        tooltip: 'Increment',
      ),
    );
  }
}
