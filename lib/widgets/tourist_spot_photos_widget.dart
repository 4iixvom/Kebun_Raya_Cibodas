import 'package:flutter/material.dart';

class TouristSpotPhotosWidget extends StatelessWidget {
  final List<Map<String, String>> photos = [
    {
      "path": "images/c.png",
      "description":
          "Taman Cibodas adalah destinasi wisata alam yang sempurna untuk liburan akhir pekan. Terletak di kaki Gunung Gede Pangrango, taman ini menawarkan suasana yang asri dan udara sejuk, yang membuatnya menjadi pilihan ideal bagi keluarga yang ingin melepas penat dari rutinitas perkotaan."
    },
    {
      "path": "images/d.jpg",
      "description":
          "Kebun Raya Cibodas (aksara Sunda: ᮊᮨᮘᮥᮔ᮪ ᮛᮚ ᮎᮤᮘᮧᮓᮞ᮪) (bahasa Inggris: Cibodas Botanical Garden), terletak di Kompleks Hutan Gunung Gede dan Gunung Pangrango, Desa Cimacan, Cipanas, Cianjur, Jawa Barat. Topografi lapangannya bergelombang dan berbukit-bukit dengan ketinggian kurang lebih 1.300 s.d. 1.425 meter di atas permukaan laut dengan luas 84,99 hektar. Temperatur rata-rata 20,06 °C, kelembaban 80,82 % dan rata-rata curah hujan 2.950 mm per tahun.."
    },
    {
      "path": "images/e.jpg",
      "description":
          "Nikmati sensasi liburan bersama keluarga dikebun raya cibodas cianjur,banyak spot instramble."
    },
    {
      "path": "images/f.jpg",
      "description": "Spot piknik favorit pengunjung di Kebun Raya."
    },
  ];

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      padding: const EdgeInsets.all(8),
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        crossAxisSpacing: 8,
        mainAxisSpacing: 8,
      ),
      itemCount: photos.length,
      itemBuilder: (context, index) {
        final photo = photos[index];
        return GestureDetector(
          onTap: () {
            _showPhotoDescription(
                context, photo['path']!, photo['description']!);
          },
          child: ClipRRect(
            borderRadius: BorderRadius.circular(8),
            child: Image.asset(
              photo['path']!,
              fit: BoxFit.cover,
              errorBuilder: (context, error, stackTrace) {
                return Container(
                  color: Colors.grey.shade200,
                  child: Center(
                    child:
                        Icon(Icons.broken_image, size: 40, color: Colors.red),
                  ),
                );
              },
            ),
          ),
        );
      },
    );
  }

  void _showPhotoDescription(
      BuildContext context, String imagePath, String description) {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => PhotoDescriptionScreen(
          imagePath: imagePath,
          description: description,
        ),
      ),
    );
  }
}

class PhotoDescriptionScreen extends StatelessWidget {
  final String imagePath;
  final String description;

  const PhotoDescriptionScreen({
    Key? key,
    required this.imagePath,
    required this.description,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Detail Foto'),
        backgroundColor: Colors.green,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(12),
                child: Image.asset(
                  imagePath,
                  fit: BoxFit.cover,
                  width: double.infinity,
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Text(
              description,
              style: TextStyle(fontSize: 16, height: 1.5),
              textAlign: TextAlign.center,
            ),
          ),
          SizedBox(height: 16),
        ],
      ),
    );
  }
}
