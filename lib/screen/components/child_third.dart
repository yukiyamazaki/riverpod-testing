import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_state_manegement/main.dart';

class ChildThird extends ConsumerWidget {
  const ChildThird({
    Key? key,
    required this.size,
    required int counter,
  })  : _counter = counter,
        super(key: key);

  final Size size;
  final int _counter;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final int value = ref.watch(counterPrivider);

    return Container(
      width: size.width * 0.2,
      height: size.height * 0.2,
      decoration: const BoxDecoration(
        color: Colors.amber,
      ),
      child: Column(
        children: [
          Center(
            child: Text('$value'),
          ),
          Center(
            child: Text('$_counter'),
          ),
        ],
      ),
    );
  }
}
