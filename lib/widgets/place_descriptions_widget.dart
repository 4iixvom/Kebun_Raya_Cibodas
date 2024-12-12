import 'package:flutter/material.dart';

class PlaceDescriptionsWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Keindahan Kebun Raya Cibodas',
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
              Icon(Icons.nature, color: Colors.green, size: 28),
              SizedBox(width: 10),
              Expanded(
                child: Text(
                  'Kebun Raya Cibodas terkenal dengan keindahan alam yang memukau. '
                  'Pemandangan hijau yang asri memberikan suasana yang sejuk dan menyegarkan.',
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
                  'Taman Sakura adalah salah satu daya tarik utama. Anda bisa menikmati keindahan bunga sakura yang mekar pada musim tertentu.',
                  style: TextStyle(fontSize: 16, height: 1.5),
                ),
              ),
            ],
          ),
          SizedBox(height: 16),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Icon(Icons.waterfall_chart, color: Colors.blue, size: 28),
              SizedBox(width: 10),
              Expanded(
                child: Text(
                  'Air Terjun Cibeureum memberikan pengalaman yang menyegarkan dengan aliran air yang jernih dan udara yang segar.',
                  style: TextStyle(fontSize: 16, height: 1.5),
                ),
              ),
            ],
          ),
          SizedBox(height: 16),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Icon(Icons.restaurant, color: Colors.orange, size: 28),
              SizedBox(width: 10),
              Expanded(
                child: Text(
                  'Nikmati juga kuliner khas yang tersedia di area wisata, seperti sate maranggi dan es goyobod.',
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
