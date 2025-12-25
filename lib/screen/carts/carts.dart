import 'package:flutter/material.dart';


class ProductDetailsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        leading: IconButton(onPressed: () => Navigator.pop(context),
        icon:Icon(Icons.arrow_back, color: Colors.black,)),
        actions: [
          Icon(Icons.search, color: Colors.black),
          SizedBox(width: 15),
          Icon(Icons.shopping_basket_outlined, color: Colors.black),
          SizedBox(width: 15),
        ],
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: Stack(
        children: [
          SingleChildScrollView(
            padding: EdgeInsets.only(bottom: 100), // Space for bottom button
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Product Image Section
                Center(
                  child: Image.asset(
                    'assets/single product.png', // Replace with your Masoor Dal image
                    height: 250,
                    fit: BoxFit.contain,
                  ),
                ),

                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Masoor Dal 1KG",
                        style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                      SizedBox(height: 4),
                      Text("Unpolished Masoor Dal", style: TextStyle(color: Colors.grey)),
                      SizedBox(height: 12),

                      // Price Row
                      Row(
                        children: [
                          Text("₹ 125.00", style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: Colors.brown[900])),
                          SizedBox(width: 10),
                          Text("₹ 135.00", style: TextStyle(decoration: TextDecoration.lineThrough, color: Colors.grey)),
                          SizedBox(width: 10),
                          Text("(14% off)", style: TextStyle(color: Colors.brown, fontWeight: FontWeight.bold)),
                          Spacer(),
                          Icon(Icons.share_outlined, color: Colors.grey),
                        ],
                      ),
                    ],
                  ),
                ),

                Divider(thickness: 8, color: Colors.grey[100]),

                // Description Section
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Description", style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
                      SizedBox(height: 8),
                      Text(
                        "Bag of Green offers premium quality lentils sourced naturally. "
                            "Perfect for healthy meals, high in protein and fiber.",
                        style: TextStyle(color: Colors.black87, height: 1.5),
                      ),
                    ],
                  ),
                ),

                Divider(thickness: 8, color: Colors.grey[100]),

                // Related Products Section
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Text("Related Products", style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
                ),
                Container(
                  height: 250,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: [
                      _buildRelatedCard("Chana dal 1KG", "105.00", "80.00", "22% off"),
                      _buildRelatedCard("Roasted Chana 750g", "95.00", "125.00", "24% off"),
                    ],
                  ),
                ),
              ],
            ),
          ),

          // Sticky Bottom Button
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              padding: EdgeInsets.all(16),
              color: Colors.white,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Color(0xFF6D2B05), // Dark brown color
                  minimumSize: Size(double.infinity, 50),
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
                ),
                onPressed: () {},
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("Add To Cart", style: TextStyle(fontSize: 18, color: Colors.white)),
                    SizedBox(width: 10),
                    Icon(Icons.shopping_cart_outlined, color: Colors.white),
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }

  Widget _buildRelatedCard(String title, String price, String oldPrice, String discount) {
    return Container(
      width: 180,
      margin: EdgeInsets.only(left: 16),
      decoration: BoxDecoration(
        border: Border.all(color: Colors.grey[200]!),
        borderRadius: BorderRadius.circular(12),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Stack(
            children: [
              Center(child: Image.asset('assets/single product.png', height: 120)),
              Positioned(
                top: 5, left: 5,
                child: Container(
                  padding: EdgeInsets.symmetric(horizontal: 6, vertical: 2),
                  color: Colors.brown[700],
                  child: Text(discount, style: TextStyle(color: Colors.white, fontSize: 10)),
                ),
              ),
            //  Positioned(top: 5, right: 5, child: Icon(Icons.favorite_border, size: 20, color: Colors.brown)),
            ],
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(title, style: TextStyle(fontWeight: FontWeight.bold), maxLines: 1, overflow: TextOverflow.ellipsis),
                SizedBox(height: 4),
                Row(
                  children: [
                    Text("₹ $price", style: TextStyle(fontWeight: FontWeight.bold)),
                    SizedBox(width: 5),
                    Text("₹ $oldPrice", style: TextStyle(decoration: TextDecoration.lineThrough, fontSize: 12, color: Colors.grey)),
                  ],
                ),
                SizedBox(height: 8),
                OutlinedButton(
                  onPressed: () {},
                  child: Center(child: Text("Add")),
                  style: OutlinedButton.styleFrom(foregroundColor: Colors.brown),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}