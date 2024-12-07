import 'package:flutter/material.dart';

class CartPage extends StatelessWidget {
  // Contoh data keranjang (ganti dengan data dari backend)
  final List<CartItem> cartItems = [
    CartItem(
      productName: 'Seblak Komplit',
      price: 20000,
      quantity: 1,
      notes: 'Pedes level 3 yaa, mantapp toor',
    ),
    CartItem(
      productName: 'Sosis',
      price: 3000,
      quantity: 1,
      notes: 'Masukkan di dalam seblak',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Keranjang'),
      ),
      body: ListView(
        children: [
          // Tabel keranjang
          DataTable(
            columns: [
              DataColumn(label: Text('Produk')),
              DataColumn(label: Text('Nama')),
              DataColumn(label: Text('Keterangan')),
              DataColumn(label: Text('Jumlah')),
              DataColumn(label: Text('Harga')),
              DataColumn(label: Text('Aksi')),
            ],
            rows: cartItems.map((item) => DataRow(
              cells: [
                DataCell(Image.asset('assets/images/${item.productName.toLowerCase()}.jpg')),
                DataCell(Text(item.productName)),
                DataCell(Text(item.notes)),
                DataCell(Text(item.quantity.toString())),
                DataCell(Text('Rp ${item.price}')),
                DataCell(IconButton(
                  icon: Icon(Icons.delete),
                  onPressed: () {
                    // Hapus item dari keranjang
                  },
                )),
              ],
            )).toList(),
          ),
          // Total harga
          Padding(
            padding: EdgeInsets.all(16.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('Total Harga:'),
                Text('Rp ${cartItems.fold(0, (total, item) => total + item.price)}'),
              ],
            ),
          ),
          // Form input nama pemesan dan nomor meja
          Padding(
            padding: EdgeInsets.all(16.0),
            child: Column(
              children: [
                TextField(
                  decoration: InputDecoration(labelText: 'Nama Pemesan'),
                ),
                TextField(
                  decoration: InputDecoration(labelText: 'Nomor Meja'),
                ),
                ElevatedButton(
                  onPressed: () {
                    // Proses pemesanan
                  },
                  child: Text('Pesan Sekarang'),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class CartItem {
  final String productName;
  final int price;
  final int quantity;
  final String notes;

  CartItem({
    required this.productName,
    required this.price,
    required this.quantity,
    required this.notes,
  });
}