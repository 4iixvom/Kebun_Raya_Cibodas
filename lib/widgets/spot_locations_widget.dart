import 'package:flutter/material.dart';

class SpotLocationsWidget extends StatelessWidget {
  final List<Map<String, String>> spots = [
    {"name": "Taman Sakura", "description": "Tempat foto yang indah."},
    {"name": "Air Terjun Cibeureum", "description": "Air terjun alami."},
    {"name": "Taman Lumut", "description": "Koleksi lumut unik."},
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: spots.length,
      itemBuilder: (context, index) {
        final spot = spots[index];
        return Card(
          margin: EdgeInsets.all(8),
          child: ListTile(
            leading: Icon(Icons.place, color: Colors.green),
            title: Text(spot['name']!),
            subtitle: Text(spot['description']!),
          ),
        );
      },
    );
  }
}