import 'package:flutter/material.dart';

class AdjustPage extends StatefulWidget {
  @override
  _AdjustPageState createState() => _AdjustPageState();
}

class _AdjustPageState extends State<AdjustPage> {
  double lightValue1 = 50;
  double lightValue2 = 50;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Ajustar'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            Text('Luz 1'),
            Slider(
              value: lightValue1,
              min: 0,
              max: 100,
              onChanged: (value) {
                setState(() {
                  lightValue1 = value;
                });
              },
            ),
            Text('Luz 2'),
            Slider(
              value: lightValue2,
              min: 0,
              max: 100,
              onChanged: (value) {
                setState(() {
                  lightValue2 = value;
                });
              },
            ),
          ],
        ),
      ),
    );
  }
}