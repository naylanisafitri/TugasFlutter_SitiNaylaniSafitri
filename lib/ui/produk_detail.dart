import 'package:flutter/material.dart';

class ProdukDetail extends StatelessWidget {
  final String kode;
  final String nama;
  final String harga;

  ProdukDetail({
    required this.kode,
    required this.nama,
    required this.harga,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Detail Produk")),
      body: Column(
        children: [
          Text("Kode: $kode"),
          Text("Nama: $nama"),
          Text("Harga: $harga"),
        ],
      ),
    );
  }
}