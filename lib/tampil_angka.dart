import 'package:flutter/material.dart';

class TampilanAngka extends StatelessWidget {
  final int nilai;
  const TampilanAngka({super.key, required this.nilai});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Tampil Angka',
          style: TextStyle(fontSize: 22, color: Colors.black),
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text('Nilai terakhir adalah', style: TextStyle(fontSize: 18)),
            Text(
              '$nilai',
              style: const TextStyle(
                fontSize: 32,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
