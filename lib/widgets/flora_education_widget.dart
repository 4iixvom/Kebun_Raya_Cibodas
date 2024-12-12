import 'package:flutter/material.dart';

class FloraEducationWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Edukasi Flora di Kebun Raya Cibodas',
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
              color: Colors.green.shade800,
            ),
          ),
          SizedBox(height: 16),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Icon(Icons.spa, color: Colors.green, size: 28),
              SizedBox(width: 10),
              Expanded(
                child: Text(
                  'Tanaman Lumut: Kebun Raya Cibodas memiliki koleksi tanaman lumut yang menjadi salah satu koleksi terbesar di Asia Tenggara. Lumut ini tumbuh di lingkungan yang lembab dan sejuk.',
                  style: TextStyle(fontSize: 16, height: 1.5),
                ),
              ),
            ],
          ),
          SizedBox(height: 16),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Icon(Icons.local_florist, color: Colors.pink, size: 28),
              SizedBox(width: 10),
              Expanded(
                child: Text(
                  'Bunga Sakura: Salah satu daya tarik utama Kebun Raya Cibodas adalah bunga sakura yang bisa dinikmati pada musim tertentu. Sakura ini berasal dari Jepang dan tumbuh subur di iklim sejuk Cibodas.',
                  style: TextStyle(fontSize: 16, height: 1.5),
                ),
              ),
            ],
          ),
          SizedBox(height: 16),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Icon(Icons.eco, color: Colors.blue, size: 28),
              SizedBox(width: 10),
              Expanded(
                child: Text(
                  'Tanaman Obat: Selain estetika, Kebun Raya Cibodas juga memiliki berbagai jenis tanaman obat yang digunakan untuk penelitian dan pengobatan tradisional.',
                  style: TextStyle(fontSize: 16, height: 1.5),
                ),
              ),
            ],
          ),
          SizedBox(height: 16),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Icon(Icons.park, color: Colors.orange, size: 28),
              SizedBox(width: 10),
              Expanded(
                child: Text(
                  'Koleksi Pohon Langka: Berbagai pohon besar dan langka dari berbagai penjuru dunia juga menjadi koleksi utama di kebun ini, memberikan edukasi tentang keanekaragaman hayati.',
                  style: TextStyle(fontSize: 16, height: 1.5),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
