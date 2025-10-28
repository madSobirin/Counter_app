import 'package:flutter/material.dart';
import 'tampil_angka.dart';

class CounterApp extends StatefulWidget {
  const CounterApp({super.key});

  @override
  State<CounterApp> createState() => _CounterState();
}

class _CounterState extends State<CounterApp> {
  int nilai = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar( 
        title: const Text('Counter App', style: TextStyle(fontSize: 24)),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(nilai.toString(), style: const TextStyle(fontSize: 30)),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                  onPressed: () {
                    setState(() {
                      if (nilai > 0) {
                        nilai--;
                      }
                    });
                  },
                  child: const Icon(Icons.remove),
                ),
                const SizedBox(width: 10, height: 10),
                ElevatedButton(
                  onPressed: () {
                    setState(() {
                      nilai++;
                    });
                  },
                  child: const Icon(Icons.add),
                ),
              ],
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => TampilanAngka(nilai: nilai),
            ),
          );
        },
        child: const Icon(Icons.arrow_forward_ios, size: 20),
      ),
    );
  }
}
