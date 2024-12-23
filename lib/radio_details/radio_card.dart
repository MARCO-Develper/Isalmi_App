import 'package:flutter/material.dart';

class RadioCard extends StatelessWidget {
  final String title;

  const RadioCard({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 20.0),
      child: Container(
        height: 150,
        width: 390,
        decoration: BoxDecoration(
          color: const Color(0xFFE2BE7F),
          borderRadius: BorderRadius.circular(20),
        ),
        child: Stack(
          children: [
            Positioned(
              bottom: 0,
              left: 0,
              right: 0,
              child: ClipRRect(
                borderRadius: const BorderRadius.only(
                  bottomLeft: Radius.circular(20),
                  bottomRight: Radius.circular(20),
                ),
                child: Image.asset(
                  "assets/images/Mosque-02.png",
                  fit: BoxFit.fill,
                ),
              ),
            ),
            Container(
              width: 390,
              height: 75,
              padding: const EdgeInsets.symmetric(horizontal: 85, vertical: 20),
              child: Text(
                textAlign: TextAlign.center,
                title,
                style: const TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Colors.black),
              ),
            ),
            const Positioned(
              bottom: 15,
              right: 15,
              left: 15,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    Icons.favorite_rounded,
                    size: 35,
                  ),
                  Icon(Icons.play_arrow_rounded, size: 50),
                  Icon(
                    Icons.volume_up,
                    size: 35,
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
