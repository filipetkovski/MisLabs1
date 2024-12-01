import 'package:flutter/material.dart';
import 'package:lab1/widgets/ProductCard.dart';

import '../models/Product.dart';

class ProductGrid extends StatefulWidget {
  final List<Product> products;
  const ProductGrid({super.key, required this.products});

  @override
  State<ProductGrid> createState() => _ProductGridState();
}

class _ProductGridState extends State<ProductGrid> {
  @override
  Widget build(BuildContext context) {
    return GridView.count(padding: const EdgeInsets.all(30),
        crossAxisCount: 1,
        // crossAxisSpacing: 4,
        mainAxisSpacing: 30,
        semanticChildCount: 250,
        childAspectRatio: 200/ 300,
        shrinkWrap: true,
        children: widget.products.map((product) => ProductCard(
          id: product.id, name: product.name,description: product.description, image: product.image, price: product.price,
        )).toList()
    );

  }
}
