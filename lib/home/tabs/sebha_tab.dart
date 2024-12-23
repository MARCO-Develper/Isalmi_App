import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SebhaTab extends StatefulWidget {
  const SebhaTab({super.key});

  @override
  State<SebhaTab> createState() => _SebhaTabState();
}

class _SebhaTabState extends State<SebhaTab> {
  int _counter = 0;
  String _displayText = "سبحان الله";
  double _rotation = 0.0;

  void _incrementCounter() {
    setState(() {
      _rotation += 1 / 33;
      if (_counter < 33) {
        _counter++;
      } else {
        _displayText =
            _displayText == "سبحان الله" ? "الله أكبر" : "سبحان الله";
        _counter = 1;
        _rotation = 0;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 16),
            child: Text(
              "سَبِّحِ اسْمَ رَبِّكَ الأعلى",
              style: GoogleFonts.elMessiri(
                fontSize: 36,
                fontWeight: FontWeight.w700,
                color: Colors.white,
              ),
            ),
          ),
          Image.asset(
            "assets/images/Mask group.png",
            fit: BoxFit.cover,
          ),
          InkWell(
            onTap:_incrementCounter ,
            child: Stack(
              alignment: Alignment.center,
              children: [
                AnimatedRotation(
                  turns: _rotation,
                  duration: const Duration(milliseconds: 500),
                  child: Image.asset(
                    "assets/images/SebhaBody 1.png",
                    fit: BoxFit.cover,
                  ),
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      _displayText,
                      style: GoogleFonts.elMessiri(
                        fontSize: 36,
                        fontWeight: FontWeight.w700,
                        color: Colors.white,
                      ),
                    ),
                    const SizedBox(height: 8),
                    Text(
                      "$_counter",
                      style: GoogleFonts.elMessiri(
                        fontSize: 36,
                        fontWeight: FontWeight.w700,
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
