import 'package:flutter/material.dart';

class RecommendedRoutesWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        'Rute yang Direkomendasikan: \n1. Taman Sakura -> Air Terjun Cibeureum\n2. Taman Lumut -> Area Parkir',
        style: TextStyle(fontSize: 16),
      ),
    );
  }
}