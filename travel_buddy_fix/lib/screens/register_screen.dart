
import 'package:flutter/material.dart';

import 'package:travel_buddy_fix/screens/login_screen.dart';

class RegisterScreen extends StatefulWidget {
  @override
  _RegisterScreenState createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {

  String _selectedCountry = 'Indonesia';
  String _selectedLanguage = 'Indonesia';
  final TextEditingController _emailOrPhoneController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final TextEditingController _nameController = TextEditingController();
  final GlobalKey<FormState> formState = GlobalKey<FormState>();
  bool _isLoading = false;

  @override
  void initState() {
    super.initState();

  }

  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          ListView(
            children: [Form(
              key: formState,
              child: SizedBox(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height,
                child: Stack(
                  children: [
                    Image.asset(
                      "lib/assets/1.webp",
                      fit: BoxFit.cover,
                    ),
                    Positioned(
                      top: 0,
                      left: 0,
                      right: 0,
                      child: ClipPath(
                        clipper: UShapeClipper(),
                        child: Container(
                          color: Color.fromARGB(255, 139, 194, 219),
                          height: MediaQuery.of(context).size.height,
                        ),
                      ),
                    ),
                    Positioned(
                      top: 300,
                      right: 0,
                      left: 0,
                      child: Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: Column(
                          children: [
                            Text(
                              'Hi there! Welcome to TravelBuddy',
                              style: TextStyle(
                                  fontSize: 18, fontWeight: FontWeight.bold),
                              textAlign: TextAlign.center,
                            ),
                            SizedBox(height: 20),
                            Text(
                              'Please enter your details',
                              textAlign: TextAlign.center,
                            ),
                            SizedBox(height: 20),
                            TextFormField(
                              controller: _emailOrPhoneController,
                              decoration: InputDecoration(
                                labelText: 'Email or Phone',
                                border: OutlineInputBorder(),
                              ),
                              validator: (value) {
                                if (value == null || value.isEmpty) {
                                  return 'Please enter some text';
                                }
                                return null;
                              },
                            ),
                            TextFormField(
                              controller: _passwordController,
                              decoration: InputDecoration(
                                labelText: 'Password',
                                border: OutlineInputBorder(),
                              ),
                              validator: (value) {
                                if (value == null || value.isEmpty) {
                                  return 'Please enter some text';
                                }
                                return null;
                              },
                            ),
                            SizedBox(height: 20),
                            TextFormField(
                              controller: _nameController,
                              decoration: InputDecoration(
                                labelText: 'Name',
                                border: OutlineInputBorder(),
                              ),
                              validator: (value) {
                                if (value == null || value.isEmpty) {
                                  return 'Please enter some text';
                                }
                                return null;
                              },
                            ),
                            SizedBox(height: 20),
                            DropdownButtonFormField<String>(
                              value: _selectedCountry,
                              items: <String>['Indonesia', 'Malaysia', 'Singapore']
                                  .map((String value) {
                                return DropdownMenuItem<String>(
                                  value: value,
                                  child: Text(value),
                                );
                              }).toList(),
                              onChanged: (newValue) {
                                setState(() {
                                  _selectedCountry = newValue!;
                                });
                              },
                              decoration: InputDecoration(
                                labelText: 'Country',
                                border: OutlineInputBorder(),
                              ),
                            ),
                            SizedBox(height: 20),
                            DropdownButtonFormField<String>(
                              value: _selectedLanguage,
                              items: <String>['Indonesia', 'English', 'Malay']
                                  .map((String value) {
                                return DropdownMenuItem<String>(
                                  value: value,
                                  child: Text(value),
                                );
                              }).toList(),
                              onChanged: (newValue) {
                                setState(() {
                                  _selectedLanguage = newValue!;
                                });
                              },
                              decoration: InputDecoration(
                                labelText: 'Language',
                                border: OutlineInputBorder(),
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            )],
          ),
          if (_isLoading) const CircularProgressIndicator(),
        ],
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: Container(
        width: double.infinity,
        height: 50,
        margin: EdgeInsets.symmetric(horizontal: 12),
        child: ElevatedButton(
          onPressed: () {
            if (formState.currentState!.validate()) {
              ScaffoldMessenger.of(context).showSnackBar(
                const SnackBar(content: Text('Processing Data')),
              );
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => LoginScreen()),
              );
            }
          },
          child: Text(
            "Register",
            style: TextStyle(
              color: Colors.white,
              fontSize: 25,
              fontWeight: FontWeight.bold,
            ),
          ),
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.black,
          ),
        ),
      ),
    );
  }
}

class UShapeClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    double width = size.width;
    double height = size.height;

    Path path = Path()
      ..moveTo(0, 0)
      ..lineTo(0, height)
      ..lineTo(width, height)
      ..lineTo(width, 0)
      ..lineTo(width, 170)
      ..quadraticBezierTo(
          width * 0.75, height * 0.25, width * 0.5, height * 0.25)
      ..quadraticBezierTo(width * 0.25, height * 0.25, 0, 170)
      ..close();

    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    return false;
  }
}
