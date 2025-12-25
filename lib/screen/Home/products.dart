import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../Widgets/Colors.dart';

class ProductCard extends StatelessWidget {
  const ProductCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 160,
      margin: const EdgeInsets.only(left: 16),
      decoration: BoxDecoration(
        color: Colors.grey[50],
        borderRadius: BorderRadius.circular(12),
        border: Border.all(color: Colors.grey[200]!),
      ),
      child: Column(
        children: [
          const Expanded(child: Icon(Icons.image, size: 50, color: Colors.grey)), // Replace with Image.asset
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text("Unpolished Rice", style: TextStyle(fontWeight: FontWeight.bold)),
                const Text("₹ 250.00", style: TextStyle(color: primaryBrown, fontWeight: FontWeight.bold)),
                const SizedBox(height: 8),
                ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.white,
                    side: const BorderSide(color: Colors.grey),
                    elevation: 0,
                    minimumSize: const Size(double.infinity, 36),
                  ),
                  child: const Text("Add +", style: TextStyle(color: primaryBrown)),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}