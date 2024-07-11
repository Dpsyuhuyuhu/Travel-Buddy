import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:travel_buddy_fix/constant/route_constant.dart';

class ExploreWorldScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          // Background image
          Positioned.fill(
            child: Image.asset(
              'lib/assets/2.jpg',
              fit: BoxFit.cover,
            ),
          ),
          // Back button
          Positioned(
            top: 40,
            left: 16,
            child: IconButton(
              icon: Icon(Icons.arrow_back, color: Colors.white),
              onPressed: () {
                
              },
            ),
          ),
          // Search button
          Positioned(
            top: 40,
            right: 16,
            child: IconButton(
              icon: Icon(Icons.search, color: Colors.white),
              onPressed: () {},
            ),
          ),
          // Bottom circular images with "+99"
          Positioned(
            bottom: 106,
            left: 16,
            right: 16,
            child: Container(

              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  CircleAvatar(
                    backgroundImage: AssetImage('lib/assets/1.webp'),
                    maxRadius: 30,
                  ),
                  SizedBox(width: 8),
                  CircleAvatar(
                    backgroundImage: AssetImage('lib/assets/3.jpg'),
                    maxRadius: 30,
                  ),
                  SizedBox(width: 8),
                  CircleAvatar(
                    backgroundImage: AssetImage('lib/assets/5.jpg'),
                    maxRadius: 30,
                  ),
                  SizedBox(width: 8),
                  CircleAvatar(
                    backgroundImage: AssetImage('lib/assets/6.jpg'),
                    maxRadius: 30,
                  ),
                  SizedBox(width: 8),
                  Stack(
                    children: [
                      CircleAvatar(
                        backgroundColor: Colors.black.withOpacity(0.5),
                        maxRadius: 30,
                        child: Text(
                          '+99',
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
          // Bottom text
          Positioned(
            left: 16,
            right: 16,
            bottom: 26,
            child: Container(
              width: MediaQuery.of(context).size.width,
              height: 66,
              decoration: BoxDecoration(
                color: Colors.white.withOpacity(0.5),
                borderRadius: BorderRadius.circular(20),
              ),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Explore World',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    IconButton(
                      icon: Icon(
                        Icons.arrow_forward,
                        color: Colors.white,
                      ),
                      onPressed: () {
                        context.pushNamed(RouteConstant.halaman_expolore);
                      },
                    ),
                  ],
                ),
              ),
            ),
          ),
          // Navigate button
        ],
      ),
    );
  }
}
