import 'package:flutter/material.dart';

class CeritaScreen extends StatelessWidget {
  const CeritaScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Berbagai Pengalaman'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
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
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Liburan Tak Terlupakan di Danau Toba',
                      style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 10),
                    Image.asset(
                      'lib/assets/danautoba.jpg',
                      width: double.infinity,
                      height: 200,
                      fit: BoxFit.cover,
                    ),
                    SizedBox(height: 10),
                    Text(
                      'Sebagai orang yang tinggal di Sumatera Utara, saya sudah berkesempatan mengunjungi Danau Toba beberapa kali. Tapi, pengalaman saya di sana pada musim panas tahun lalu adalah yang paling berkesan dan tak terlupakan.\n\n'
                      'Perjalanan kami dimulai dari Medan menuju Parapat, gerbang utama menuju Danau Toba. Sepanjang perjalanan, kami disuguhkan dengan pemandangan alam yang indah, berupa hamparan sawah hijau, perbukitan yang menawan, dan rumah-rumah adat Batak yang unik. Setibanya di Parapat, kami langsung menuju hotel untuk check-in dan meletakkan barang bawaan.\n\n'
                      'Tak sabar ingin merasakan keindahan Danau Toba, kami langsung menuju dermaga untuk menyewa perahu. Udara sejuk dan angin semilir menyambut kami saat perahu mulai melaju membelah air danau yang jernih. Pemandangan Pulau Samosir yang menjulang tinggi di tengah danau membuat kami takjub.\n\n'
                      'Sesampainya di Pulau Samosir, kami langsung menjelajahi berbagai desa wisata yang ada di sana. Kami mengunjungi desa Tomok, desa tradisional Batak yang terkenal dengan rumah-rumah bolonnya yang unik. Kami juga mengunjungi desa Ambarita, yang terkenal dengan batu kursi raja-raja Batak. Di sana, kami belajar tentang sejarah dan budaya Batak yang kaya.\n\n'
                      'Tak lupa, kami juga mencoba berbagai kuliner khas Batak yang lezat, seperti ikan arsik, saksang, dan babi panggang. Rasanya yang unik dan gurih membuat kami ketagihan.\n\n'
                      'Sore harinya, kami menikmati sunset di tepi Danau Toba. Pemandangan matahari terbenam yang indah, dipadukan dengan semburat warna jingga di langit, membuat kami terdiam kagum. Momen ini menjadi salah satu momen paling romantis dalam hidup saya.\n\n'
                      'Di malam hari, kami mengunjungi pesta adat Batak yang meriah. Kami disuguhkan dengan berbagai pertunjukan tari dan musik tradisional Batak yang energik. Kami juga diajak menari bersama dan merasakan keramahan masyarakat Batak yang luar biasa.\n\n'
                      'Liburan di Danau Toba benar-benar memberikan pengalaman yang tak terlupakan bagi saya. Keindahan alam yang memukau, budaya yang kaya, dan keramahan masyarakatnya membuat saya ingin kembali lagi ke sana suatu saat nanti.\n\n'
                      'Berikut beberapa tips untuk kamu yang ingin berlibur di Danau Toba:\n\n'
                      '1. Waktu terbaik untuk berkunjung: Musim kemarau, yaitu antara bulan April dan Oktober.\n'
                      '2. Cara menuju ke sana: Kamu bisa menggunakan pesawat terbang ke Bandara Silangit, kemudian melanjutkan perjalanan dengan bus atau mobil ke Danau Toba.\n'
                      '3. Tempat wisata: Pulau Samosir, desa Tomok, desa Ambarita, Museum Batak Toba, Bukit Holbung, air terjun Sipiso-piso.\n'
                      '4. Aktivitas: Menjelajahi Pulau Samosir, mengunjungi desa wisata, belajar budaya Batak, mencicipi kuliner khas Batak, trekking, berenang, naik perahu.\n'
                      '5. Penginapan: Ada banyak pilihan penginapan di Danau Toba, mulai dari hotel mewah hingga homestay.\n\n'
                      'Semoga cerita pengalaman saya di Danau Toba dapat menginspirasi kamu untuk berlibur ke sana.',
                      style: TextStyle(
                        fontSize: 16,
                        color: Colors.black,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
