import 'package:flutter/material.dart';

class DevicePage extends StatefulWidget {
  @override
  _DevicePageState createState() => _DevicePageState();
}

class _DevicePageState extends State<DevicePage> {
  bool isOn = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Navicury'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Fabricante: TP-KNT'),
            Text('Modelo: 30-40F-C30P-FT40'),
            Text('MAC: 30:40:F:C30P:FT40'),
            SizedBox(height: 20),
            Center(
              child: ElevatedButton(
                onPressed: () {
                  setState(() {
                    isOn = !isOn;
                  });
                },
                child: Text(isOn ? 'Apagar' : 'Encender'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}