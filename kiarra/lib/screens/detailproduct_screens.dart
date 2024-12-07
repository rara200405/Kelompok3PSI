import 'package:flutter/material.dart';

class DetailproductScreens extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Seblak by IQIS'),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Bagian atas dengan gambar slider
            Image.asset('assets/images/seblak_slider.jpg'),
            SizedBox(height: 20),
            Text(
              'Menu Kami',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 10),
            // Grid menu
            GridView.count(
              shrinkWrap: true,
              crossAxisCount: 2,
              children: [
                _buildMenuItem('Seblak Original', 'Rp 15.000', 'assets/images/seblak_original.jpg'),
                _buildMenuItem('Seblak Komplit', 'Rp 20.000', 'assets/images/seblak_komplit.jpg'),
                _buildMenuItem('Seblak Khas Bandung', 'Rp 23.000', 'assets/images/seblak_bandung.jpg'),
                _buildMenuItem('Seblak Ceker', 'Rp 24.000', 'assets/images/seblak_ceker.jpg'),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildMenuItem(String title, String price, String image) {
    return Card(
      child: Column(
        children: [
          Image.asset(image),
          Text(title),
          Text(price),
          ElevatedButton(onPressed: () {}, child: Text('Pesan Sekarang'))
        ],
      ),
    );
  }
}