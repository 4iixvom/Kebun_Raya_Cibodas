import 'package:flutter/material.dart';


class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.network(
              'https://busbluestar.co.id/wp-content/uploads/2018/05/taman-sakura-cibodas.jpg',
              height: 200,
              // fit: BoxFit.cover,
              // loadingBuilder: (context, child, loadingProgress) {
              //   if (loadingProgress == null) return child;
              //   return Center(
              //     child: CircularProgressIndicator(
              //       value: loadingProgress.expectedTotalBytes != null
              //           ? loadingProgress.cumulativeBytesLoaded /
              //               loadingProgress.expectedTotalBytes!
              //           : null,
              //     ),
              //   );
              // },
              
            ),
            SizedBox(height: 16),
            Text(
              'Selamat Datang di Wisata Kebun Raya Cibodas',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 8),
            Text(
              'Nikmati keindahan alam, kuliner khas, dan berbagai spot menarik di Kebun Raya Cibodas.',
              style: TextStyle(fontSize: 16),
            ),
            SizedBox(height: 16),
            // Gambar kedua dari asset lokal
            Center(
              child: Image.asset(
                'images/tamansakura.jpeg', // Path gambar lokal sesuai pubspec.yaml
                height: 200,
                // fit: BoxFit.cover,
                // errorBuilder: (context, error, stackTrace) {
                //   return Column(
                //     children: [
                //       Icon(Icons.broken_image, color: Colors.red, size: 50),
                //       Text(
                //         'Gambar tidak ditemukan',
                //         style: TextStyle(color: Colors.red, fontSize: 16),
                //       ),
                //     ],
                //   );
                // },
              ),
            ),
            SizedBox(height: 20),
            // Menambahkan tombol
            Center(
              child: ElevatedButton(
                onPressed: () {
                  // Tindakan saat tombol ditekan
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(content: Text('Tombol ditekan!')),
                  );
                },
                child: Text('Lihat Selengkapnya'),
                style: ElevatedButton.styleFrom(
                  padding: EdgeInsets.symmetric(horizontal: 30, vertical: 15),
                  textStyle: TextStyle(fontSize: 18),
                  backgroundColor: Colors.blue, // Warna latar belakang tombol
                  foregroundColor: Colors.white, // Warna teks tombol
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
