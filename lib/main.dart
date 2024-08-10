import 'package:estado_tiempo/widget/card.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: WeatherScreen(),
    );
  }
}

class WeatherScreen extends StatefulWidget {
  const WeatherScreen({super.key});

  @override
  _WeatherScreenState createState() => _WeatherScreenState();
}

class _WeatherScreenState extends State<WeatherScreen> {
  bool showToday = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Weather"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              "Agosto 9",
              style: TextStyle(fontSize: 16)
            ),
            const Text(
            "La Ceiba",
            style: TextStyle(
            fontSize: 30,
            fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 16),
            const Text(
              "21°C",
              style: TextStyle(fontSize: 20),
            ),
            const Text(
              "Totalmente nublado",
              style: TextStyle(fontSize: 20),
            ),
            const SizedBox(height: 16),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                GestureDetector(
                  onTap: () {
                    setState(() {
                      showToday = true;
                    });
                  },
                  child: Text(
                    "Hoy",
                    style: TextStyle(
                      fontSize: 18,
                      color: showToday ? Colors.blue : Colors.black,
                      fontWeight: showToday ? FontWeight.bold : FontWeight.normal,
                    ),
                  ),
                ),
                const SizedBox(width: 20),
                GestureDetector(
                  onTap: () {
                    setState(() {
                      showToday = false;
                    });
                  },
                  child: Text(
                    "Semana",
                    style: TextStyle(
                      fontSize: 18,
                      color: !showToday ? Colors.blue : Colors.black,
                      fontWeight: !showToday ? FontWeight.bold : FontWeight.normal,
                    ),
                  ),
                ),
              ],
            ),
            const Divider(),
            const SizedBox(height: 16),
            if (showToday) ...[
              const Text("Temperatura", style: TextStyle(fontSize: 18)),
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("8pm", style: TextStyle(fontSize: 18)),
                  Text("11pm", style: TextStyle(fontSize: 18)),
                ],
              ),
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Icon(Icons.cloud, size: 40),
                  Icon(Icons.cloud, size: 40),
                ],
              ),
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("21°C", style: TextStyle(fontSize: 18)),
                  Text("22°C", style: TextStyle(fontSize: 18)),
                ],
              ),
              const SizedBox(height: 16),
              const Text(
                "Detalles",
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              const Divider(),
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Mínima", style: TextStyle(fontSize: 18)),
                  Text("Máxima", style: TextStyle(fontSize: 18)),
                ],
              ),
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("21°C", style: TextStyle(fontSize: 18)),
                  Text("22°C", style: TextStyle(fontSize: 18)),
                ],
              ),
              const Divider(),
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Presión", style: TextStyle(fontSize: 18)),
                  Text("Humedad", style: TextStyle(fontSize: 18)),
                ],
              ),
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("1020 Pa", style: TextStyle(fontSize: 18)),
                  Text("41%", style: TextStyle(fontSize: 18)),
                ],
              ),
            ] else ...[
  const SizedBox(height: 16),
  const Row(
    mainAxisAlignment: MainAxisAlignment.spaceAround,
    children: [
      DayCard(day: "Lunes", icon: Icons.wb_sunny, tempMin: "25°C", tempMax: "29°C"),
      DayCard(day: "Martes", icon: Icons.cloud, tempMin: "22°C", tempMax: "26°C"),
      DayCard(day: "Miércoles", icon: Icons.wb_sunny, tempMin: "24°C", tempMax: "30°C"),

    ],
  ),
  const SizedBox(height: 16),
  const Row(
    mainAxisAlignment: MainAxisAlignment.spaceAround,
    children: [
      DayCard(day: "Jueves", icon: Icons.cloud, tempMin: "21°C", tempMax: "25°C"),
      DayCard(day: "Viernes", icon: Icons.wb_sunny, tempMin: "26°C", tempMax: "32°C"),
      DayCard(day: "Sábado", icon: Icons.cloud, tempMin: "23°C", tempMax: "28°C"),
    ],
  ),
  const SizedBox(height: 16),
  const Row(
    mainAxisAlignment: MainAxisAlignment.spaceAround,
    children: [
      DayCard(day: "Domingo", icon: Icons.wb_sunny, tempMin: "27°C", tempMax: "33°C"),
    ],
  ),
]
          ],
        ),
      ),
    );
  }
}
