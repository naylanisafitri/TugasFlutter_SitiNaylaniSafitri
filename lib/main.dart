import 'package:flutter/material.dart';
import 'package:tugas_flutter/ui/produk_form.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: ProdukForm(),
    );
  }
}