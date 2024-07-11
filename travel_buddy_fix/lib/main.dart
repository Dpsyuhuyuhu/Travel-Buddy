import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:travel_buddy_fix/constant/route_constant.dart';
import 'package:travel_buddy_fix/screens/main_screen/halaman_expolore.dart';
import 'package:travel_buddy_fix/screens/screen.dart';
import 'package:travel_buddy_fix/screens/welcome_screen.dart';



void main() {
  runApp(const TravelBuddyApp());
}

class TravelBuddyApp extends StatelessWidget {
  const TravelBuddyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: 'Travel Buddy',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      routerConfig: GoRouter(
        initialLocation: '/welcome_screen',
        routes: [
          GoRoute(
            path: '/login_screen',
            name: RouteConstant.login,
            builder: (context, state) => LoginScreen(),
          ),
          GoRoute(
            path: "/register",
            name: RouteConstant.register,
            builder: (context, state) => RegisterScreen(),
          ),
          GoRoute(
            path: "/main",
            name: RouteConstant.main,
            builder: (context, state) => MainScreen(),
          ),
          GoRoute(
            path: "/explore",
            name: RouteConstant.explore,
            builder: (context, state) => ExploreWorldScreen(),
          ),
          GoRoute(
            path: "/halaman_expolore",
            name: RouteConstant.halaman_expolore,
            builder: (context, state) => HalamanExpolore(),
          ),
          GoRoute(
            path: "/account_screen",
            name: RouteConstant.AccountScreen,
            builder: (context, state) => AccountScreen(),
          ),
          GoRoute(
            path: "/welcome_screen",
            name: RouteConstant.WelcomeScreen,
            builder: (context, state) => WelcomeScreen(),
          ),
          GoRoute(
            path: "/home_screen",
            name: RouteConstant.HomeScreen,
            builder: (context, state) => HomeScreen(),
          )
        ],
      ),
    );
  }
}
