import 'package:flutter/material.dart';
import 'package:lab1/widgets/ProductGrid.dart';

import '../models/Product.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List<Product> products = [
    Product(id: 1, name: "Jubilee Polo Shirt", price: 2700.00, image: "https://media.loropiana.com/HYBRIS/FAO/FAO3673/CCF5C0A5-E3BE-486A-9214-1E2114282921/FAO3673_A0GS_LARGE.jpg?sw=980&sh=1371" ,description: "Color : Pure Jubilee (108V)"),
    Product(id: 2, name: "Sottile Polo Shirt", price: 1330.00, image: "https://media.loropiana.com/HYBRIS/FAO/FAO5066/D63C13A6-6433-45B8-8F18-CDEA52544B4D/FAO5066_H0RW_LARGE.jpg?sw=980&sh=1371" ,description: "Color : Auburn Blaze (H0RW)"),
    Product(id: 3, name: "Lexington Polo Shirt", price: 1900.00, image: "https://media.loropiana.com/HYBRIS/FAO/FAO3673/EC4F2C78-25C6-484D-AA6A-AA021AA67642/FAO3673_W000_LARGE.jpg?sw=980&sh=1371" ,description: "Color : Navy Blue (W000)"),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(75.0), // Set the desired height here
        child: AppBar(
          title: const Text(
            "211267",
            style: TextStyle(
              color: Colors.white,
              fontSize: 40,
              fontWeight: FontWeight.bold,
            ),
          ),
          backgroundColor: Colors.brown[300],
          leading: IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.menu,
              color: Colors.white,
              size: 40,
            ),
          ),
          centerTitle: true,
          elevation: 0,
        ),
      ),
      body: ProductGrid(products: products),
    );
  }
}
