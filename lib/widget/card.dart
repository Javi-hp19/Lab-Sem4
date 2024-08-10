import 'package:flutter/material.dart';

class DayCard extends StatelessWidget {
  final String day;
  final IconData icon;
  final String tempMin;
  final String tempMax;

  const DayCard({
    Key? key,
    required this.day,
    required this.icon,
    required this.tempMin,
    required this.tempMax,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        color: Colors.grey[200],
      ),
      child: Column(
        children: [
          Text(day, style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
          const SizedBox(height: 8),
          Icon(icon, size: 30),
          const SizedBox(height: 8),
          Text("$tempMin / $tempMax", style: const TextStyle(fontSize: 14)),
        ],
      ),
    );
  }
}
