import 'package:flutter/material.dart';
import 'package:flutter_smarththings/pages/fingerprint_page.dart';

void main() {
  runApp(NavicuryApp());
}

class NavicuryApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Navicury',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: FingerprintPage(),
    );
  }
}