import 'package:flutter/material.dart';

class KomunitasScreen extends StatefulWidget {
  const KomunitasScreen({super.key});

  @override
  State<KomunitasScreen> createState() => _OrdersScreenState();
}

class _OrdersScreenState extends State<KomunitasScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(left: 16.0, bottom: 16.0, right: 16.0, top: 50.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // TextField untuk Pencarian
            Container(
              padding: EdgeInsets.symmetric(horizontal: 15.0),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(15),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.5),
                    spreadRadius: 1,
                    blurRadius: 5,
                    offset: Offset(0, 3),
                  ),
                ],
              ),
              child: TextField(
                decoration: InputDecoration(
                  border: InputBorder.none,
                  hintText: 'Apa yang kamu cari?',
                  icon: Icon(Icons.search),
                ),
              ),
            ),
            SizedBox(height: 20),
            // Judul
            Center(
              child: Text(
                'GEMPALS',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            SizedBox(height: 10),
            // Gambar Ilustrasi
            Center(
              child: Image.asset(
                'lib/assets/gempals.jpg', // Pastikan path ke gambar sudah benar
                width: double.infinity,
                height: 200,
              ),
            ),
            SizedBox(height: 20),
            // Teks
            Expanded(
              child: SingleChildScrollView(
                child: Text(
                  'GEMPAL’S merupakan kepanjangan dari Generasi Mahasiswa Pecinta Alam dan Studi Lingkungan Hidup. Unit kegiatan mahasiswa ini berdiri sejak 5 Oktober 2002. GEMPAL’s PTKI Medan sebagai organisasi pecinta alam yang anggotanya adalah mahasiswa, dituntut pula untuk mengupdate ilmu dan pengetahuan serta minat dan nilai yang tulus untuk selalu belajar, menambah pengetahuannya bukan hanya hal-hal yang menyangkut tentang outdoor skill tetapi juga harus ber-etika dan berintelektual. Karena GEMPAL’s PTKI Medan tidak hanya dituntut untuk menguasai skill tentang outdoor activities, tetapi juga haruslah sebagai mahasiswa yang rasional, analitik, kritis, universal, dan sistematis.\n\n'
                  'Bergabunglah dengan GEMPAL’S untuk mendapatkan pengalaman yang tak terlupakan, menjelajahi alam, dan memperdalam pengetahuan tentang lingkungan hidup. Di sini, kamu akan bertemu dengan orang-orang yang memiliki minat yang sama dan bersama-sama kita bisa membuat perbedaan.',
                  style: TextStyle(
                    fontSize: 16,
                    color: Colors.black,
                  ),
                ),
              ),
            ),
            SizedBox(height: 20),
            Center(
              child: ElevatedButton(
                onPressed: () {
                  // Aksi untuk bergabung dengan GEMPAL'S
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.green,
                  padding: EdgeInsets.symmetric(horizontal: 50, vertical: 15),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30),
                  ),
                ),
                child: Text(
                  "Bergabung dengan GEMPAL'S",
                  style: TextStyle(fontSize: 16, color: Colors.white),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
