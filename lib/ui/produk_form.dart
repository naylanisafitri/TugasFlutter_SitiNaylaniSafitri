import 'package:flutter/material.dart';
import 'package:tugas_flutter/ui/produk_detail.dart';

class ProdukForm extends StatefulWidget {
  @override
  _ProdukFormState createState() => _ProdukFormState();
}

class _ProdukFormState extends State<ProdukForm> {
  TextEditingController kodeCtrl = TextEditingController();
  TextEditingController namaCtrl = TextEditingController();
  TextEditingController hargaCtrl = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Form Produk')),
      body: SingleChildScrollView(
        child: Column(
          children: [
            _textboxKode(),
            _textboxNama(),
            _textboxHarga(),
            _tombolSimpan(),
          ],
        ),
      ),
    );
  }

  // TEXTBOX KODE
  Widget _textboxKode() {
    return TextField(
      controller: kodeCtrl,
      decoration: InputDecoration(labelText: "Kode Produk"),
    );
  }

  // TEXTBOX NAMA
  Widget _textboxNama() {
    return TextField(
      controller: namaCtrl,
      decoration: InputDecoration(labelText: "Nama Produk"),
    );
  }

  // TEXTBOX HARGA
  Widget _textboxHarga() {
    return TextField(
      controller: hargaCtrl,
      decoration: InputDecoration(labelText: "Harga Produk"),
    );
  }

  // TOMBOL SIMPAN
  Widget _tombolSimpan() {
    return ElevatedButton(
      child: Text('Simpan'),
      onPressed: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => ProdukDetail(
              kode: kodeCtrl.text,
              nama: namaCtrl.text,
              harga: hargaCtrl.text,
            ),
          ),
        );
      },
    );
  }
}