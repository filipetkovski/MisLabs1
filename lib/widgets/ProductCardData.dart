import 'package:flutter/material.dart';

class ProductCardData extends StatelessWidget {
  final String image;
  final String name;

  const ProductCardData({super.key,required this.image, required this.name});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(10.0),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Expanded(child: Image.network(image, fit: BoxFit.contain)),
          Text(name, style: const TextStyle(
              color: Colors.black54, fontSize: 35, fontWeight: FontWeight.w600
            ),
          )
        ],
      ),
    );
  }
}
