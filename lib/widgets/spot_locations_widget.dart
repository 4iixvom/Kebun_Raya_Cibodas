import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class SpotLocationsWidget extends StatelessWidget {
  final List<Map<String, String>> spots = [
    {
      "name": "Taman Sakura",
      "description": "Tempat foto yang indah.",
      "latitude": "6.6819",
      "longitude": "106.5734"
    },
    {
      "name": "Air Terjun Cibeureum",
      "description": "Air terjun alami.",
      "latitude": "6.7419",
      "longitude": "106.6645"
    },
    {
      "name": "Taman Lumut",
      "description": "Koleksi lumut unik.",
      "latitude": "6.7094",
      "longitude": "106.5567"
    },
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
            onTap: () {
              _openMap(spot['latitude']!, spot['longitude']!);
            },
          ),
        );
      },
    );
  }

  // Fungsi untuk membuka Google Maps dengan koordinat tertentu
  void _openMap(String latitude, String longitude) async {
    final url = 'https://www.google.com/maps?q=$latitude,$longitude';
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }
}

void main() => runApp(MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SpotLocationsWidget(),
    ));
