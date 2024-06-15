import 'package:flutter/material.dart';
import 'package:flutter_smarththings/pages/home_page.dart';

class FingerprintPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GestureDetector(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => HomePage()),
          );
        },
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Navicury',
                style: TextStyle(fontSize: 32, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 20),
              Icon(Icons.fingerprint, size: 100),
              SizedBox(height: 10),
              Text('Presione la pantalla con su dedo'),
            ],
          ),
        ),
      ),
    );
  }
}