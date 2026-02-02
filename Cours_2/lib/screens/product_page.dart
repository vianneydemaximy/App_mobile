import 'package:flutter/material.dart';
import '../model/product.dart';
import '../widgets/product_header_card.dart';
import '../widgets/product_property_row.dart';

class ProductPage extends StatelessWidget {
  const ProductPage({super.key});

  @override
  Widget build(BuildContext context) {
    final product = generateProduct();

    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            ProductHeaderCard(product: product),

            Padding(
              padding: const EdgeInsets.all(20),
              child: Column(
                children: [
                  ProductPropertyRow(
                    label: 'Quantité',
                    value: product.quantity,
                  ),
                  ProductPropertyRow(
                    label: 'Vendu en',
                    value: product.manufacturingCountries?.join(', '),
                    showSeparator: false,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
