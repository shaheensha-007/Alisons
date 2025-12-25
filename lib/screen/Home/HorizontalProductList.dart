import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HorizontalProductList extends StatelessWidget {
  const HorizontalProductList({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 260, // Total height for the product card row
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        padding: const EdgeInsets.only(left: 16),
        itemCount: 5,
        itemBuilder: (context, index) {
          return Container(
            width: 160,
            margin: const EdgeInsets.only(right: 16, bottom: 10),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(12),
              boxShadow: [
                BoxShadow(color: Colors.black.withOpacity(0.05), blurRadius: 5, spreadRadius: 1),
              ],
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Product Image + Heart Icon
                Stack(
                  children: [
                    Container(
                      height: 120,
                      decoration: BoxDecoration(
                        color: Colors.grey[100],
                        borderRadius: const BorderRadius.vertical(top: Radius.circular(12)),
                      ),
                      child: Center(child: Image.asset('assets/single product.png')),
                    ),
                  ],
                ),
                // Product Details
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text("Rice & Pulses", style: TextStyle(color: Colors.grey, fontSize: 10)),
                      const Text("Brown top millet 1KG", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 13), maxLines: 1),
                      const SizedBox(height: 4),
                      const Text("₹ 250.00", style: TextStyle(color: Color(0xFF7A2B06), fontWeight: FontWeight.bold)),
                      const SizedBox(height: 8),
                      // Add Button
                      SizedBox(
                        width: double.infinity,
                        height: 35,
                        child: OutlinedButton(
                          onPressed: () {},
                          style: OutlinedButton.styleFrom(
                            side: const BorderSide(color: Colors.grey),
                            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
                          ),
                          child: const Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text("Add ", style: TextStyle(color: Colors.black, fontSize: 12)),
                              Icon(Icons.shopping_cart_outlined, size: 14, color: Colors.black),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}