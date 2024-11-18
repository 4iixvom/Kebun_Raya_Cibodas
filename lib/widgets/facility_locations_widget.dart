import 'package:flutter/material.dart';

class FacilityLocationsWidget extends StatelessWidget {
  final List<Map<String, String>> facilities = [
    {"name": "Mushola", "description": "Tempat ibadah."},
    {"name": "Toilet", "description": "Fasilitas toilet umum."},
    {"name": "Parkir", "description": "Lahan parkir luas."},
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: facilities.length,
      itemBuilder: (context, index) {
        final facility = facilities[index];
        return Card(
          margin: EdgeInsets.all(8),
          child: ListTile(
            leading: Icon(Icons.build, color: Colors.blue),
            title: Text(facility['name']!),
            subtitle: Text(facility['description']!),
          ),
        );
      },
    );
  }
}