import 'package:flutter/material.dart';
import 'package:flutter_state_manegement/screen/components/child_third.dart';

class ChildCount extends StatelessWidget {
  const ChildCount({
    Key? key,
    required this.size,
    required int counter,
  })  : _counter = counter,
        super(key: key);

  final Size size;
  final int _counter;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          width: size.width * 0.2,
          height: size.height * 0.2,
          decoration: const BoxDecoration(
            color: Colors.amber,
          ),
          child: Center(
            child: Text('$_counter'),
          ),
        ),
        SizedBox(
          width: size.width * 0.02,
        ),
        ChildThird(size: size, counter: _counter),
      ],
    );
  }
}
