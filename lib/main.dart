import 'package:flutter/material.dart';
import 'counter_app.dart';

void main() {
  runApp(Main());
}

class Main extends StatelessWidget {
  const Main({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: CounterApp());
  }
}
