import 'package:flutter/material.dart';

class OperatingHoursWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        'Jam Operasional: 08:00 - 16:00',
        style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
      ),
    );
  }
}