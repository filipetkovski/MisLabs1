import 'package:flutter/material.dart';

import '../models/Product.dart';

class Products extends StatefulWidget {
  const Products({super.key});

  @override
  State<Products> createState() => _ProductsState();
}

class _ProductsState extends State<Products> {
  @override
  Widget build(BuildContext context) {
    final arguments = ModalRoute.of(context)?.settings.arguments as Product;
    return Scaffold(
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Column(mainAxisSize: MainAxisSize.min,
          children: [
            //Image
            Container(
              decoration: BoxDecoration(
                shape: BoxShape.circle, color: Colors.redAccent[100]?.withOpacity(0.5),
              ),
              child: Image.network(arguments.image, fit: BoxFit.cover, alignment: Alignment.center),
            ),
            //Details
            Container(
              alignment: Alignment.centerLeft,
              padding: const EdgeInsets.all(3.0),
              margin: const EdgeInsets.only(left: 10.0,top: 20.0),
              child: Text(
                "${arguments.name}",
                style: const TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 40.0,
                ),
              ),
            ),
            Container(
              alignment: Alignment.centerLeft,
              padding: const EdgeInsets.all(3.0),
              margin: const EdgeInsets.only(left: 10.0),
              child: Text(
                "\$${arguments.price}",
                style: const TextStyle(
                  fontSize: 30.0,
                ),
              ),
            ),
            //Description
            Container(
              alignment: Alignment.centerLeft,
              padding: const EdgeInsets.all(3.0),
              margin: const EdgeInsets.only(left: 10.0),
              child: Text(
                "\$${arguments.description}",
                style: const TextStyle(
                  fontSize: 20.0,
                ),
              ),
            ),
          ],
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: Container(
          width: double.infinity, // Makes it stretch across the entire screen// Add some horizontal padding
          child: FloatingActionButton.extended(
            onPressed: () => Navigator.pop(context),
            backgroundColor: Colors.brown[300],
            tooltip: 'Go back to previous screen',
            icon: const Icon(Icons.arrow_back, color: Colors.white, size: 35.0,),
            label: const Text("", style: TextStyle(color: Colors.white, fontSize: 30.0),
            )),
      ),
    );
  }
}
