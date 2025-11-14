import 'package:flutter/material.dart';

class TampilanAngka extends StatelessWidget {
  final int nilai;

  const TampilanAngka({super.key, required this.nilai});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Tampil Angka', style: TextStyle(fontSize: 22)),
        centerTitle: true,
        elevation: 2,
      ),

      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              'Nilai terakhir adalah:',
              style: TextStyle(fontSize: 18),
            ),

            const SizedBox(height: 10),

            Text(
              nilai.toString(),
              style: const TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
            ),

            const SizedBox(height: 25),

            ElevatedButton(
              onPressed: () => Navigator.pop(context),
              child: const Text('Kembali', style: TextStyle(fontSize: 16)),
            ),
          ],
        ),
      ),
    );
  }
}

// import 'package:flutter/material.dart';

// class TampilanAngka extends StatelessWidget {
//   final int nilai;
//   const TampilanAngka({super.key, required this.nilai});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text(
//           'Tampil Angka',
//           style: TextStyle(fontSize: 22, color: Colors.black),
//         ),
//       ),
//       body: Center(
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: [
//             const Text('Nilai terakhir adalah', style: TextStyle(fontSize: 18)),
//             Text(
//               '$nilai',
//               style: const TextStyle(
//                 fontSize: 32,
//                 fontWeight: FontWeight.bold,
//                 color: Colors.black,
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
