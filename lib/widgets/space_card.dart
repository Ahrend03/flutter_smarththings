import 'package:flutter/material.dart';
import 'package:flutter_smarththings/pages/adjust_page.dart';

class SpaceCard extends StatelessWidget {
  final String title;

  SpaceCard({required this.title});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => AdjustPage()),
        );
      },
      child: Card(
        child: Center(
          child: Text(
            title,
            style: TextStyle(fontSize: 24),
          ),
        ),
      ),
    );
  }
}
