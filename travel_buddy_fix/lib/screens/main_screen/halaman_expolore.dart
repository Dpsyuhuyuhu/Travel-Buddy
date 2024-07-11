import 'package:flutter/material.dart';

class HalamanExpolore extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text("Explore"),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Pencarian
              Container(
                margin: EdgeInsets.symmetric(vertical: 20),
                padding: EdgeInsets.symmetric(horizontal: 16),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(15),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.5),
                      spreadRadius: 5,
                      blurRadius: 7,
                      offset: Offset(0, 3),
                    ),
                  ],
                ),
                child: Row(
                  children: [
                    Icon(Icons.search, color: Colors.black),
                    SizedBox(width: 10),
                    Expanded(
                      child: TextField(
                        decoration: InputDecoration(
                          hintText: "Temukan yang kamu cari",
                          border: InputBorder.none,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 20),
              Text(
                "temukan ide untuk perjalanan berikutnya",
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 10),
              // Grid Destinasi
              GridView.count(
                shrinkWrap: true,
                crossAxisCount: 2,
                mainAxisSpacing: 10,
                crossAxisSpacing: 10,
                physics: NeverScrollableScrollPhysics(),
                children: [
                  destinationCard("Jawa Timur", 'lib/assets/5.jpg'),
                  destinationCard("Bali", 'lib/assets/6.jpg'),
                  destinationCard("Komodo", 'lib/assets/komodo.webp'),
                  destinationCard("Gorontalo", 'lib/assets/gorontalo.webp'),
                  destinationCard("Sumatera Utara", 'lib/assets/danautoba.jpg'),
                ],
              ),
              SizedBox(height: 20),
              // Daftar Hotel
              hotelListTile("Hotel JW Marihot", "lib/assets/jw marihot.jpeg", "Hotel - Sumatera Utara"),
              hotelListTile("Hotel Sapadia", "lib/assets/sapadia-hotel-siantar.jpg", "Hotel - Sumatera Utara"),
            ],
          ),
        ),
      ),
    );
  }

  Widget destinationCard(String title, String imagePath) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        image: DecorationImage(
          image: AssetImage(imagePath),
          fit: BoxFit.cover,
        ),
      ),
      child: Center(
        child: Text(
          title,
          style: TextStyle(
            color: Colors.white,
            fontSize: 18,
            fontWeight: FontWeight.bold,
            backgroundColor: Colors.black45,
          ),
        ),
      ),
    );
  }

  Widget hotelListTile(String title, String imagePath, String subtitle) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10.0),
      child: Row(
        children: [
          Image.asset(
            imagePath,
            width: 50,
            height: 50,
            fit: BoxFit.cover,
          ),
          SizedBox(width: 10),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title,
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(subtitle),
            ],
          ),
        ],
      ),
    );
  }
}
