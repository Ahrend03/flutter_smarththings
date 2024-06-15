import 'package:flutter/material.dart';
import 'package:flutter_smarththings/pages/device_page.dart';
import 'package:flutter_smarththings/widgets/device_card.dart';
import 'package:flutter_smarththings/widgets/space_card.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Navicury'),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              'Espacios',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
          ),
          Container(
            height: 150,
            child: GridView.count(
              crossAxisCount: 3,
              children: [
                SpaceCard(title: 'A'),
                SpaceCard(title: 'B'),
                SpaceCard(title: 'C'),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Text(
              'Equipos Conectados',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
          ),
          Expanded(
            child: GridView.count(
              crossAxisCount: 2,
              children: [
                DeviceCard(
                  icon: Icons.tv,
                  title: 'TV Cuarto',
                  onTap: () {
                    // Navigate to TV settings
                  },
                ),
                DeviceCard(
                  icon: Icons.kitchen,
                  title: 'Refrigeradora',
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => DevicePage()),
                    );
                  },
                ),
                DeviceCard(
                  icon: Icons.door_back_door,
                  title: 'Puerta Sala',
                  onTap: () {
                    // Navigate to door settings
                  },
                ),
                DeviceCard(
                  icon: Icons.garage,
                  title: 'Cochera',
                  onTap: () {
                    // Navigate to garage settings
                  },
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}