import 'package:flutter_test/flutter_test.dart';
import 'package:tugas_flutter/ui/produk_form.dart';

void main() {
  testWidgets('Form Produk tampil', (WidgetTester tester) async {
    await tester.pumpWidget(ProdukForm());

    expect(find.text('Form Produk'), findsOneWidget);
  });
}