import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class TimeTab extends StatelessWidget {
  const TimeTab({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 20.0,
        ),
        child: Column(
          children: [
            Stack(
              children: [
                Image.asset("assets/images/Rectangle 138.png",
                    fit: BoxFit.fill),
                Stack(
                  children: [
                    Image.asset(
                      "assets/images/Group 35.png",
                      fit: BoxFit.contain,
                    ),
                    Center(
                      child: Padding(
                        padding: const EdgeInsets.all(12.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            const Text(
                              textAlign: TextAlign.center,
                              "16 Jul,\n2024",
                              style: TextStyle(
                                color: Color(0xffFFFFFF),
                                fontSize: 16,
                              ),
                            ),
                            Column(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                const Text(
                                  textAlign: TextAlign.center,
                                  "Pray Time",
                                  style: TextStyle(
                                    color: Color(0xB5202020),
                                    fontSize: 20,
                                    fontWeight: FontWeight.w700,
                                  ),
                                ),
                                const SizedBox(height: 4),
                                Text(
                                  "Tuesday",
                                  style: GoogleFonts.inter(
                                    fontSize: 18,
                                    fontWeight: FontWeight.w700,
                                    color: const Color(0xe6202020),
                                  ),
                                ),
                              ],
                            ),
                            const Text(
                              textAlign: TextAlign.center,
                              "09 Muh,\n1446",
                              style: TextStyle(
                                color: Color(0xffFFFFFF),
                                fontSize: 16,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
                // Carousel Slider Section
                Column(
                  children: [
                    Container(
                      margin: const EdgeInsets.only(top: 100),
                      child: Center(
                        child: CarouselSlider(
                          options: CarouselOptions(
                            height: 128.0,
                            viewportFraction: 0.3,
                            enableInfiniteScroll: true,
                            enlargeCenterPage: true,
                          ),
                          items: [
                            {
                              "name": "Sunrise",
                              "time": "06:04",
                              "meridiem": "AM"
                            },
                            {
                              "name": "Dhuhur",
                              "time": "01:01",
                              "meridiem": "PM"
                            },
                            {"name": "ASR", "time": "04:38", "meridiem": "PM"},
                            {
                              "name": "Maghrib",
                              "time": "07:57",
                              "meridiem": "PM"
                            },
                            {"name": "Isha", "time": "09:15", "meridiem": "PM"},
                          ].map((item) {
                            return Builder(
                              builder: (BuildContext context) {
                                return Container(
                                  width: 110,
                                  margin: const EdgeInsets.symmetric(
                                      horizontal: 2.0),
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(16.0),
                                    gradient: const LinearGradient(
                                      begin: Alignment.topLeft,
                                      end: Alignment.bottomRight,
                                      colors: [
                                        Color(0xFF202020),
                                        Color(0xFFB19768),
                                      ],
                                    ),
                                  ),
                                  child: Padding(
                                    padding: const EdgeInsets.symmetric(
                                        vertical: 2.0, horizontal: 5.0),
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Text(
                                          item["name"]!,
                                          style: GoogleFonts.poppins(
                                            fontSize: 16.0,
                                            fontWeight: FontWeight.w600,
                                            color: Colors.white,
                                          ),
                                        ),
                                        const SizedBox(height: 8.0),
                                        Text(
                                          item["time"]!,
                                          style: GoogleFonts.poppins(
                                            fontSize: 32.0,
                                            fontWeight: FontWeight.bold,
                                            color: Colors.white,
                                          ),
                                        ),
                                        const SizedBox(height: 8.0),
                                        Text(
                                          item["meridiem"]!,
                                          style: GoogleFonts.poppins(
                                            fontSize: 14.0,
                                            color: Colors.white,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                );
                              },
                            );
                          }).toList(),
                        ),
                      ),
                    ),
                    const SizedBox(height: 20),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 72.0),
                          child: Text(
                            "Next Pray - 02:32",
                            style: GoogleFonts.poppins(
                              fontSize: 18.0,
                              fontWeight: FontWeight.w600,
                              color: const Color(0xFF202020),
                            ),
                          ),
                        ),
                        const Icon(
                          Icons.volume_off,
                          color: Color(0xFF202020),
                          size: 24.0,
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
            const SizedBox(height: 20),
            const Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Azkar",
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 20),
            Row(
              children: [
                Expanded(
                  child: Container(
                    width: 185,
                    height: 259,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        border: Border.all(width: 1, color: const Color(0xffE2BE7F)),
                        color: const Color(0xff202020)),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(vertical: 16.0),
                      child: Column(
                        children: [
                          Image.asset(
                            "assets/images/Evening Azkar.png",
                          ),
                          const SizedBox(height: 10),
                          const Text(
                            "Evening Azkar",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.w700,
                              color: Color(0xffFFFFFF),
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
                const SizedBox(width: 20,),
                Expanded(
                  child: Container(
                    width: 185,
                    height: 259,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        border: Border.all(width: 1, color: const Color(0xffE2BE7F)),
                        color: const Color(0xff202020)),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(vertical: 16.0),
                      child: Column(
                        children: [
                          Image.asset(
                            "assets/images/Morning Azkar.png",
                          ),
                          const SizedBox(height: 10),
                          const Text(
                            "Morning Azkar",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.w700,
                              color: Color(0xffFFFFFF),
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
