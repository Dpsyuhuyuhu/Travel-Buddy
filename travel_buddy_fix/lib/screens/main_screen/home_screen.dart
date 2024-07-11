import 'package:flutter/material.dart';

import 'package:travel_buddy_fix/screens/main_screen/component_home_screen/content_menu.dart';
import 'package:travel_buddy_fix/screens/main_screen/component_home_screen/content_recommend.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [Colors.blue, Colors.white],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            stops: [0.4, 0.6],
          ),
        ),
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.only(top: 50, left: 16, right: 16),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [Text("Location"), Text("Medan, Indonesia")],
                    ),
                    ClipOval(
                      child: Image.asset(
                        'lib/assets/logo.png',
                        width: 50,
                        height: 50,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
                TextField(
                  decoration: InputDecoration(
                    hintText: 'Search',
                    prefixIcon: const Icon(Icons.search),
                    border: const OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(15.0)),
                      borderSide: BorderSide.none,
                    ),
                    filled: true,
                    fillColor: Colors.grey[200],
                    contentPadding: const EdgeInsets.symmetric(
                        vertical: 0.0, horizontal: 20.0),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withOpacity(0.2),
                        spreadRadius: 2,
                        blurRadius: 5,
                        offset: Offset(0, 3),
                      ),
                    ],
                    border: Border.all(
                      color: Colors.black,
                      width: 2,
                    ),
                  ),
                  child: const Padding(
                    padding: EdgeInsets.all(10.0),
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Content_menu(
                                image_path: "lib/assets/asuransi.png",
                                title: "Asuransi"),
                            Content_menu(
                                image_path: "lib/assets/hotel.jpg",
                                title: "Hotel"),
                            Content_menu(
                                image_path: "lib/assets/tiket-pesawat.png",
                                title: "Tiket Pesawat"),
                            Content_menu(
                                image_path: "lib/assets/mobil-removebg-preview.png",
                                title: "Mobil")
                          ],
                        ),
                        SizedBox(
                          height: 15,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Content_menu(
                                image_path: "lib/assets/pngtree-train-ticket.png",
                                title: "Tiket Kereta Api"),
                            Content_menu(
                                image_path: "lib/assets/pay latter.png",
                                title: "Pay Later"),
                            Content_menu(
                                image_path: "lib/assets/cruises.png",
                                title: "Cruises"),
                            Content_menu(
                                image_path: "lib/assets/bus.png",
                                title: "Tiket Bus")
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                const Content_Recommend(),
                const SizedBox(
                  height: 20,
                ),
                Container(
                  height: 250,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withOpacity(0.2),
                        spreadRadius: 2,
                        blurRadius: 5,
                        offset: Offset(0, 3),
                      ),
                    ],
                  ),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(10),
                    child: Image.asset(
                      "lib/assets/3.jpg",
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
      
              ],
              
            ),
          ),
        ),
      ),
    );
  }
}

