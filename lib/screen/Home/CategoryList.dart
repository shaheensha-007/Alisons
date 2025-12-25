import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../categories/categories.dart';

class CategoryList extends StatelessWidget {
  const CategoryList({super.key});

  final List<Map<String, dynamic>> categories = const [
    {
      "name": "Unpolished Pulses",
      "img": "assets/categories.png",
      "page": Categories(),
    },
    {
      "name": "Unpolished Rice",
      "img": "assets/categories.png",
      "page": Categories(),
    },
    {
      "name": "Unpolished Millets",
      "img": "assets/categories.png",
      "page": Categories(),
    },
    {
      "name": "Nuts & Dry Fruits",
      "img": "assets/categories.png",
      "page": Categories(),
    },
  ];


  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 120,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        padding: const EdgeInsets.symmetric(horizontal: 8),
        itemCount: categories.length,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0),
            child: InkWell(
              onTap: (){
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (_) => categories[index]["page"],
                  ),
                );
              },
              child: Column(
                children: [
                  CircleAvatar(
                    radius: 35,
                    backgroundColor: Colors.grey[200],
                    backgroundImage: AssetImage(categories[index]["img"]!),
                  ),
                  const SizedBox(height: 8),
                  SizedBox(
                    width: 80,
                    child: Text(
                      categories[index]["name"]!,
                      textAlign: TextAlign.center,
                      maxLines: 2,
                      style: const TextStyle(fontSize: 11, fontWeight: FontWeight.w500),
                    ),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}