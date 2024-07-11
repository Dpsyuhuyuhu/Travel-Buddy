import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:travel_buddy_fix/constant/route_constant.dart';
import 'package:travel_buddy_fix/screens/login_screen.dart';
import 'package:travel_buddy_fix/screens/register_screen.dart';

class WelcomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              width: 500,
              height: 500,
              child: Image.asset(
                'lib/assets/logo-removebg-preview.png',
                fit: BoxFit.cover,
              ),
            ),
            SizedBox(height: 20),
            SizedBox(
              width: 300,
              height: 50,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.black, // Warna abu-abu
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8.0),
                  ),
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => RegisterScreen()),
                  );
                },
                child: Text(
                  'Register',
                  style: TextStyle(color: Colors.white),
                ),
                onLongPress: () {
                  context.pushNamed(RouteConstant.register);
                },
              ),
            ),
            SizedBox(height: 20),
            RichText(
              text: TextSpan(
                text: 'already have an account? ',
                style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold, // Bold
                ),
                children: <TextSpan>[
                  TextSpan(
                    text: 'Log in',
                    style: TextStyle(
                      color: Colors.blue, // Warna biru
                      fontWeight: FontWeight.bold,
                    ),
                    recognizer: TapGestureRecognizer()
                      ..onTap = () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => LoginScreen()),
                        );
                      },
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
