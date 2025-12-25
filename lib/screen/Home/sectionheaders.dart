import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../Widgets/Colors.dart';

class SectionHeader extends StatelessWidget {
  final String title;
  const SectionHeader({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(title, style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: primaryBrown)),
          const Row(
            children: [
              Icon(Icons.chevron_left, size: 20, color: Colors.grey),
              Icon(Icons.chevron_right, size: 20, color: Colors.grey),
            ],
          )
        ],
      ),
    );
  }
}