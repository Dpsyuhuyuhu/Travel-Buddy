import 'package:flutter/material.dart';

class Content_menu extends StatelessWidget {
  final String  title;
  final String image_path;

  const Content_menu({
    Key? key,
    required this.title,
    required this.image_path,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        width: 80,
        child: Column(
          children: [
            SizedBox(
              height: 50,
              width: 50,
              child: DecoratedBox(
                decoration: const BoxDecoration(
                  color: Colors.grey,
                  borderRadius: BorderRadius.all(Radius.circular(3.0)),
                ),
                child: ClipRRect(
                borderRadius: BorderRadius.circular(3.0),
                child: Image.asset(
                  image_path,
                  fit: BoxFit.cover,
                ),
              ),
              ),
            ),
            Text(
              title,
              style: TextStyle(fontSize: 12),
              textAlign: TextAlign.center,
            )
          ],
        ),
      );
  }
}
