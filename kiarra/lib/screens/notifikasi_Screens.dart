import 'package:flutter/material.dart';

class OrderConfirmationPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Seblak by IQIS'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset('assets/images/seblak.png'), // Ganti dengan path gambar Anda
            SizedBox(height: 20),
            Text(
              'Yeayy Berhasil!',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            Text(
              'Kamu akan menerima pesananmu dalam beberapa saat lagi.',
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                // Navigasi kembali ke halaman utama atau halaman lain yang sesuai
                Navigator.pushNamed(context, '/');
              },
              child: Text('Selesai'),
            ),
          ],
        ),
      ),
    );
  }
}