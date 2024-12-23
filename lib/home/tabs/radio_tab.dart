import 'package:flutter/material.dart';
import 'package:islami_c13_friday/radio_details/reciters_card.dart';
import 'package:toggle_switch/toggle_switch.dart';

import '../../radio_details/radio_card.dart';

class RadioTab extends StatefulWidget {
  const RadioTab({super.key});

  @override
  State<RadioTab> createState() => _RadioTabState();
}

class _RadioTabState extends State<RadioTab> {

  final List<Map<String, String>> radioStations = [
    {'name': 'Radio Ibrahim Al-Akdar'},
    {'name': 'Radio Al-Qaria Yassen'},
    {'name': 'Radio Ahmed Al-trabulsi'},
    {'name': 'Radio Addokali Mohammad Alalim'},
  ];

  final List<Map<String, String>> recitersCard = [
    {'name': 'Ibrahim Al-Akdar'},
    {'name': 'Akram Alalaqmi'},
    {'name': 'Majed Al-Enezi'},
    {'name': 'Malik shaibat Alhamed'},
  ];

  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          ToggleSwitch(
            minWidth: 150.0,
            initialLabelIndex: selectedIndex,
            cornerRadius: 12.0,
            activeFgColor: Colors.white,
            inactiveBgColor: Colors.grey,
            inactiveFgColor: Colors.white,
            totalSwitches: 2,
            labels: const ['Radio', 'Reciters'],
            activeBgColors: const [
              [Color(0xffE2BE7F)],
              [Color(0xffE2BE7F)],
            ],
            onToggle: (index) {
              setState(() {
                selectedIndex = index!;
              });
            },
          ),
          Expanded(
            child: ListView.builder(
              itemCount: selectedIndex == 0
                  ? radioStations.length
                  : recitersCard.length,
              itemBuilder: (context, index) {

                if (selectedIndex == 0) {
                  return RadioCard(title: radioStations[index]['name']!);
                } else {
                  return RecitersCard(title: recitersCard[index]['name']!);
                }
              },
            ),
          ),
        ],
      ),
    );
  }
}
