import 'package:flutter/material.dart';

class Content_Recommend extends StatelessWidget {
  const Content_Recommend({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      decoration: BoxDecoration(
          color: const Color.fromARGB(255, 124, 196, 255),
          boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.2),
                    spreadRadius: 2,
                    blurRadius: 5,
                    offset: Offset(0, 3), 
                  ),
                ],
          borderRadius: BorderRadius.circular(10)),
      child: Padding(
        padding: const EdgeInsets.all(10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                const Icon(
                  Icons.wb_sunny_outlined,
                  size: 75,
                ),
                SizedBox(width: 8),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        "Mau Rekomendasi yang cocok dengan lokasimu?",
                        style: TextStyle(fontSize: 12),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          ElevatedButton(
                            onPressed: () {},
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.black,
                              shape: const RoundedRectangleBorder(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(15)),
                              ),
                              minimumSize: Size(80, 25),
                              padding: EdgeInsets.all(0),
                            ),
                            child: const Text(
                              'Atur Sekarang',
                              style:
                                  TextStyle(fontSize: 12, color: Colors.white),
                            ),
                          ),
                          ElevatedButton(
                            onPressed: () {},
                            style: ElevatedButton.styleFrom(
                              shape: const RoundedRectangleBorder(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(15)),
                              ),
                              minimumSize: Size(80, 25),
                              padding: EdgeInsets.all(0),
                            ),
                            child: const Text(
                              'Nanti',
                              style: TextStyle(fontSize: 12),
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
