import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class RecommendedRoutesWidget extends StatelessWidget {
  final List<Map<String, dynamic>> routes = [
    {
      'title': 'Rute 1',
      'description': 'Taman Sakura -> Air Terjun Cibeureum',
      'url':
          'https://www.google.com/maps/dir/?api=1&destination=-6.737346,107.013835'
    },
    {
      'title': 'Rute 2',
      'description': 'Taman Lumut -> Area Parkir',
      'url':
          'https://www.google.com/maps/dir/?api=1&destination=-6.735421,107.010752'
    },
    {
      'title': 'Rute 3',
      'description': 'Danau Telaga Biru -> Jembatan Gantung',
      'url':
          'https://www.google.com/maps/dir/?api=1&destination=-6.732521,107.012333'
    },
    {
      'title': 'Rute 4',
      'description': 'Kebun Kaktus -> Area Piknik Keluarga',
      'url':
          'https://www.google.com/maps/dir/?api=1&destination=-6.736254,107.015410'
    },
    {
      'title': 'Rute 5',
      'description': 'Puncak Bukit -> Menara Pandang',
      'url':
          'https://www.google.com/maps/dir/?api=1&destination=-6.733789,107.011987'
    },
    {
      'title': 'Rute 6',
      'description': 'Area Parkir Utama -> Kolam Pemancingan',
      'url':
          'https://www.google.com/maps/dir/?api=1&destination=-6.738621,107.014621'
    },
    {
      'title': 'Rute 7',
      'description': 'Jalur Pendakian -> Air Terjun Kecil',
      'url':
          'https://www.google.com/maps/dir/?api=1&destination=-6.739987,107.011432'
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.all(16.0),
          child: Text(
            'Rute yang Direkomendasikan',
            style: TextStyle(
              fontSize: 22,
              fontWeight: FontWeight.bold,
              color: Colors.green.shade800,
            ),
          ),
        ),
        // List View untuk menampilkan rute dalam Card
        Expanded(
          child: ListView.builder(
            itemCount: routes.length,
            itemBuilder: (context, index) {
              return _buildRouteCard(
                routes[index]['title']!,
                routes[index]['description']!,
                routes[index]['url']!,
              );
            },
          ),
        ),
      ],
    );
  }

  // Card untuk menampilkan setiap rute
  Widget _buildRouteCard(String title, String description, String url) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
      child: GestureDetector(
        onTap: () => _launchMap(url),
        child: Card(
          elevation: 3,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          ),
          child: ListTile(
            leading: Icon(
              Icons.map,
              color: Colors.green.shade700,
              size: 30,
            ),
            title: Text(
              title,
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            subtitle: Text(
              description,
              style: TextStyle(fontSize: 14, height: 1.5),
            ),
            trailing: Icon(Icons.arrow_forward_ios, color: Colors.green),
          ),
        ),
      ),
    );
  }

  // Fungsi untuk membuka URL peta
  Future<void> _launchMap(String url) async {
    final Uri uri = Uri.parse(url);
    if (!await launchUrl(uri, mode: LaunchMode.externalApplication)) {
      throw 'Tidak dapat membuka URL: $url';
    }
  }
}
