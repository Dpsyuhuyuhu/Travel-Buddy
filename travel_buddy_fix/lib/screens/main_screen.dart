import 'package:flutter/material.dart';
import 'package:travel_buddy_fix/screens/main_screen/account_screen.dart';
import 'package:travel_buddy_fix/screens/main_screen/expolore_screen.dart';
import 'package:travel_buddy_fix/screens/main_screen/home_screen.dart';
import 'package:travel_buddy_fix/screens/main_screen/komunitas_screen.dart';
import 'package:travel_buddy_fix/screens/main_screen/Cerita_screen.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int selectIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _bodyWidgets()[selectIndex],
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        currentIndex: selectIndex,
        onTap: (index) {
          setState(() {
            selectIndex = index;
          });
        },
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(icon: Icon(Icons.explore), label: 'Explore'),
          BottomNavigationBarItem(icon: Icon(Icons.book), label: 'komunitas'),
          BottomNavigationBarItem(icon: Icon(Icons.save), label: 'Cerita'),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Profil'),
        ],
      ),
    );
  }

  List<Widget> _bodyWidgets() {
    return [
      HomeScreen(),
      ExploreWorldScreen(),
      KomunitasScreen(),
      CeritaScreen(),
      AccountScreen()
    ];
  }
}
