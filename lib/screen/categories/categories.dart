import 'package:alisons/Widgets/Colors.dart';
import 'package:flutter/material.dart';

import '../carts/carts.dart';

class Categories extends StatefulWidget {
  const Categories({super.key});

  @override
  State<Categories> createState() => _CategoriesState();
}

class _CategoriesState extends State<Categories> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100],
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.black),
          onPressed: () => Navigator.pop(context),
        ),
        title: const Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("Unpolished Pulses", style: TextStyle(color: Colors.black, fontSize: 18, fontWeight: FontWeight.bold)),
          //  Text("57 Items", style: TextStyle(color: Colors.grey, fontSize: 12)),
          ],
        ),
        actions: [
          IconButton(onPressed: () {}, icon: const Icon(Icons.search, color: Colors.black)),
          IconButton(onPressed: () {}, icon: const Icon(Icons.shopping_basket_outlined, color: Colors.black)),
        ],
      ),
      body: Column(
        children: [
          // 1. Product Grid
          Expanded(
            child: GridView.builder(
              padding: const EdgeInsets.all(12),
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,         // 2 Columns
                childAspectRatio: 0.65,    // Adjust for vertical height
                crossAxisSpacing: 10,
                mainAxisSpacing: 10,
              ),
              itemCount: 10, // Replace with your data length
              itemBuilder: (context, index) => const ProductCard(),
            ),
          ),

          // 2. Bottom Sort/Filter Bar
          Container(
            height: 60,
            decoration: const BoxDecoration(
              color: Colors.white,
              border: Border(top: BorderSide(color: Colors.grey, width: 0.5)),
            ),
            child: Row(
              children: [
                Expanded(child: _utilityButton(Icons.swap_vert, "Sort By")),
                const VerticalDivider(width: 1),
                Expanded(child: _utilityButton(Icons.filter_alt_outlined, "Filter")),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _utilityButton(IconData icon, String label) {
    return InkWell(
      onTap: () {},
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(icon, size: 20),
          const SizedBox(width: 8),
          Text(label, style: const TextStyle(fontWeight: FontWeight.bold)),
        ],
      ),
    );
  }
}

class ProductCard extends StatelessWidget {
  const ProductCard({super.key});
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (){
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (_) => ProductDetailsPage(),
          ),
        );
      },
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(12),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(
              children: [
                Container(
                  height: 140,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: Colors.grey[50],
                    borderRadius: const BorderRadius.vertical(top: Radius.circular(12)),
                  ),
                  child: Center(child: Image.asset('assets/single product.png')), // Replace with asset
                ),
                Positioned(
                  top: 8, left: 8,
                  child: Container(
                    padding: const EdgeInsets.symmetric(horizontal: 6, vertical: 2),
                    decoration: BoxDecoration(color: const Color(0xFF7A2B06), borderRadius: BorderRadius.circular(4)),
                    child: const Text("22% off", style: TextStyle(color: Colors.white, fontSize: 10)),
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text("Chana dal 1KG", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 14)),
                  const SizedBox(height: 4),
                  const Row(
                    children: [
                      Text("₹ 105.00", style: TextStyle(color: Color(0xFF7A2B06), fontWeight: FontWeight.bold)),
                      SizedBox(width: 5),
                      Text("₹ 180.00", style: TextStyle(decoration: TextDecoration.lineThrough, color: Colors.grey, fontSize: 12)),
                    ],
                  ),
                  const SizedBox(height: 10),
                    Container(
                      height: 35,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(8),
                        boxShadow: const [
                          BoxShadow(
                            color: Colors.black26, // shadow color
                            blurRadius: 6,        // softness
                            offset: Offset(0, 3), // position (x, y)
                          ),
                        ],
                      ),
                      child: const Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text("Add",style: TextStyle(color: primaryBrown, fontWeight: FontWeight.bold)),
                          SizedBox(width: 10,),
                          Icon(Icons.shopping_cart, color: primaryBrown, size: 18),
                        ],
                      ),
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