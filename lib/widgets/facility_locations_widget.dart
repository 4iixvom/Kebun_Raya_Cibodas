import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class FacilityLocationsWidget extends StatelessWidget {
  final List<Map<String, String>> facilities = [
    {
      "name": "Mushola",
      "description": "Tempat ibadah.",
      "latitude": "6.7353",
      "longitude": "106.1320"
    },
    {
      "name": "Toilet",
      "description": "Fasilitas toilet umum.",
      "latitude": "6.7370",
      "longitude": "106.1335"
    },
    {
      "name": "Parkir",
      "description": "Lahan parkir luas.",
      "latitude": "6.7360",
      "longitude": "106.1340"
    },
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
            onTap: () {
              _openMap(facility['latitude']!, facility['longitude']!);
            },
          ),
        );
      },
    );
  }

  // Fungsi untuk membuka lokasi di Google Maps menggunakan koordinat
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
      home: FacilityLocationsWidget(),
    ));
