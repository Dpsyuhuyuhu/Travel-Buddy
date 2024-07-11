import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:travel_buddy_fix/constant/route_constant.dart';

class AccountScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        automaticallyImplyLeading: false,
        title: Row(
          children: [
            IconButton(
              icon: Icon(Icons.arrow_back, color: Colors.black),
              onPressed: () {
                // Kembali ke menu utama atau halaman sebelumnya
                context.pushNamed(RouteConstant.main);
              },
            ),
            SizedBox(width: 10),
            Text(
              "AKUN SAYA",
              style: TextStyle(color: Colors.black),
            ),
          ],
        ),
        actions: [
          ElevatedButton(
            onPressed: () {
              context.pushNamed(RouteConstant.AccountScreen);
            },
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.blue,
              padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(30),
              ),
            ),
            child: Row(
              children: [
                Icon(Icons.edit, color: Colors.white),
                SizedBox(width: 5),
                Text(
                  "EDIT PROFILE",
                  style: TextStyle(fontSize: 14, color: Colors.white),
                ),
              ],
            ),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 20),
            Center(
              child: CircleAvatar(
                radius: 50,
                backgroundImage: AssetImage('lib/assets/profil poto.jpg'),
              ),
            ),
            SizedBox(height: 20),
            buildTextField("Email/ No.Handphone", "dindaputrisinaga@gmail.com"),
            SizedBox(height: 20),
            buildTextField("Nama", "Dinda Putri Sinaga"),
            SizedBox(height: 20),
            buildTextField("Tanggal Lahir", "3 November 2004"),
            Spacer(),
            Center(
              child: ElevatedButton(
                onPressed: () {
                  // Aksi logout
                  context.pushNamed(RouteConstant.login); // Pastikan untuk mengganti dengan rute yang benar untuk layar login
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Color.fromARGB(255, 33, 73, 232),
                  padding: EdgeInsets.symmetric(horizontal: 50, vertical: 15),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30),
                  ),
                ),
                child: Text(
                  "LOGOUT",
                  style: TextStyle(fontSize: 16, color: Colors.white),
                ),
              ),
            ),
            SizedBox(height: 20),
          ],
        ),
      ),
    );
  }

  Widget buildTextField(String labelText, String defaultValue) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(labelText),
        SizedBox(height: 5),
        TextField(
          decoration: InputDecoration(
            contentPadding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
          ),
          controller: TextEditingController(text: defaultValue),
        ),
      ],
    );
  }
}
