import 'package:flutter/material.dart';

class ChildThird extends StatelessWidget {
  const ChildThird({
    Key? key,
    required this.size,
    required int counter,
  })  : _counter = counter,
        super(key: key);

  final Size size;
  final int _counter;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: size.width * 0.2,
      height: size.height * 0.2,
      decoration: const BoxDecoration(
        color: Colors.amber,
      ),
      child: Center(
        child: Text('$_counter'),
      ),
    );
  }
}
