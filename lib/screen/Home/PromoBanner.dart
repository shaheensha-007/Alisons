import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class PromoBanner extends StatelessWidget {
  final Color color;
  final String text;

  const PromoBanner({
    super.key,
    this.color = const Color(0xFFFF9800), // Default Orange
    this.text = "Go Natural with\nUnpolished Grains",
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(16),
      height: 160,
      width: double.infinity,
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Stack(
        children: [
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text("Hurry Up! Get 10% Off", style: TextStyle(color: Colors.white, fontSize: 12)),
                const SizedBox(height: 8),
                Text(text, style: const TextStyle(color: Colors.white, fontSize: 18, fontWeight: FontWeight.bold)),
                const SizedBox(height: 12),
                // ElevatedButton(
                //   onPressed: () {},
                //   style: ElevatedButton.styleFrom(
                //     backgroundColor: Colors.white,
                //     foregroundColor: color,
                //     shape: RoundedRectangleBorder(
                //       borderRadius: BorderRadius.circular(30),
                //     ),
                //   ),
                //   child: Text(
                //     "Shop Now",
                //     maxLines: 1,
                //     overflow: TextOverflow.ellipsis, // 👈 overflow handled
                //     style: TextStyle(
                //       fontWeight: FontWeight.bold,
                //       color: color,
                //       fontSize: 12,
                //     ),
                //   ),
                // ),
              ],
            ),
          ),
          // Positioned Image placeholder on the right
          Positioned(
            right: 10,
            bottom: 10,
            top: 10,
            child: Image.asset('assets/product.png', fit: BoxFit.contain),
          ),
        ],
      ),
    );
  }
}