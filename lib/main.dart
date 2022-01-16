import 'package:flutter/material.dart';
import 'package:flutter_state_manegement/screen/home.dart';
import 'package:flutter_state_manegement/revier.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final counterPrivider = StateNotifierProvider<Counter, int>((ref) {
  return Counter(ref);
});

class Counter extends StateNotifier<int> {
  Counter(this.ref) : super(2222);
  final Ref ref;
}

void main() {
  runApp(
    const ProviderScope(
      child: MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      // home: const MyHomePage(title: 'Flutter Demo Home Page'),
      home: const RiverMain(),
    );
  }
}
