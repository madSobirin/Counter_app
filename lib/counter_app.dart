import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'tampil_angka.dart';

class CounterApp extends StatefulWidget {
  const CounterApp({super.key});

  @override
  State<CounterApp> createState() => _CounterState();
}

class _CounterState extends State<CounterApp> {
  int nilai = 0;

  @override
  void initState() {
    super.initState();
    _loadNilai();
  }

  // 🔹 Ambil nilai terakhir dari SharedPreferences
  Future<void> _loadNilai() async {
    final prefs = await SharedPreferences.getInstance();
    setState(() {
      nilai = prefs.getInt('nilai_counter') ?? 0;
    });
  }

  // 🔹 Simpan nilai terbaru
  Future<void> _saveNilai() async {
    final prefs = await SharedPreferences.getInstance();
    prefs.setInt('nilai_counter', nilai);
  }

  // 🔹 Tambah nilai
  void _increment() {
    setState(() {
      nilai++;
    });
    _saveNilai();
  }

  // 🔹 Kurangi nilai
  void _decrement() {
    if (nilai > 0) {
      setState(() {
        nilai--;
      });
      _saveNilai();
    }
  }

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
            // 🔹 Tampilkan angka
            Text(nilai.toString(), style: const TextStyle(fontSize: 30)),

            const SizedBox(height: 20),

            // 🔹 Tombol + dan -
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                  onPressed: _decrement,
                  child: const Icon(Icons.remove),
                ),
                const SizedBox(width: 10),
                ElevatedButton(
                  onPressed: _increment,
                  child: const Icon(Icons.add),
                ),
              ],
            ),
          ],
        ),
      ),

      // 🔹 Button menuju halaman tampil angka
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => TampilanAngka(nilai: nilai),
            ),
          );
        },
        child: const Icon(Icons.arrow_forward_ios),
      ),
    );
  }
}
