import 'dart:async';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final List<String> imagePaths = [
    'images/at.jpg',
    'images/ts.jpg',
    'images/du.jpg', // Tambahkan gambar tambahan
  ];

  final List<String> imageDescriptions = [
    'Air Terjun Cibeureum - Tempat yang indah untuk foto dan menikmati alam.',
    'Taman Sakura - Nikmati keindahan bunga sakura di kebun raya.',
    'Danau - Tempat yang tenang untuk beristirahat dan menikmati pemandangan.',
  ];

  final PageController _pageController = PageController();
  int _currentIndex = 0;

  @override
  void initState() {
    super.initState();
    _startAutoSlide();
  }

  void _startAutoSlide() {
    Timer.periodic(Duration(seconds: 3), (timer) {
      if (_currentIndex < imagePaths.length - 1) {
        _currentIndex++;
      } else {
        _currentIndex = 0;
      }
      _pageController.animateToPage(
        _currentIndex,
        duration: Duration(milliseconds: 300),
        curve: Curves.easeInOut,
      );
    });
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Slider Gambar
            _buildImageSlider(imagePaths),
            SizedBox(height: 16),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Text(
                'Selamat Datang di Wisata Kebun Raya Cibodas',
                style: TextStyle(
                  fontSize: 26,
                  fontWeight: FontWeight.bold,
                  color: Colors.green.shade800,
                ),
                textAlign: TextAlign.center,
              ),
            ),
            SizedBox(height: 8),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Text(
                'Nikmati keindahan alam, kuliner khas, dan berbagai spot menarik di Kebun Raya Cibodas.',
                style: TextStyle(fontSize: 16, height: 1.5),
                textAlign: TextAlign.center,
              ),
            ),
            SizedBox(height: 20),
            // List Harga Masuk
            _buildPriceList(),
            SizedBox(height: 20),
            // Daftar Fasilitas dan cara pesan tiket
            _buildTicketBooking(),
          ],
        ),
      ),
    );
  }

  Widget _buildImageSlider(List<String> imagePaths) {
    return SizedBox(
      height: 200, // Ukuran slider lebih kecil
      child: PageView.builder(
        controller: _pageController,
        itemCount: imagePaths.length,
        itemBuilder: (context, index) {
          return _buildImageCard(imagePaths[index], imageDescriptions[index]);
        },
      ),
    );
  }

  Widget _buildImageCard(String imagePath, String description) {
    return GestureDetector(
      onTap: () {
        // Tampilkan deskripsi gambar saat diklik
        _showImageDescription(description);
      },
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(20),
          child: Image.asset(
            imagePath,
            fit: BoxFit.cover,
            errorBuilder: (context, error, stackTrace) {
              return Container(
                color: Colors.grey.shade200,
                child: Center(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Icon(Icons.broken_image, color: Colors.red, size: 50),
                      SizedBox(height: 8),
                      Text(
                        'Gambar tidak ditemukan',
                        style: TextStyle(color: Colors.red, fontSize: 16),
                      ),
                    ],
                  ),
                ),
              );
            },
          ),
        ),
      ),
    );
  }

  void _showImageDescription(String description) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text('Deskripsi Gambar'),
          content: Text(description),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: Text('Tutup'),
            ),
          ],
        );
      },
    );
  }

  // Widget List Harga Tiket Masuk
  Widget _buildPriceList() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Harga Tiket Masuk',
            style: TextStyle(
              fontSize: 22,
              fontWeight: FontWeight.bold,
              color: Colors.green.shade800,
            ),
          ),
          SizedBox(height: 10),
          Table(
            border: TableBorder.all(color: Colors.grey),
            columnWidths: {
              0: FixedColumnWidth(150),
              1: FlexColumnWidth(),
            },
            children: [
              _buildTableRow('Dewasa', 'Rp 25.000'),
              _buildTableRow('Anak-anak', 'Rp 15.000'),
              _buildTableRow('Turis Asing', 'Rp 50.000'),
              _buildTableRow('Parkir Motor', 'Rp 5.000'),
              _buildTableRow('Parkir Mobil', 'Rp 10.000'),
            ],
          ),
        ],
      ),
    );
  }

  TableRow _buildTableRow(String title, String price) {
    return TableRow(
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(
            title,
            style: TextStyle(fontSize: 16),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(
            price,
            style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
          ),
        ),
      ],
    );
  }

  // Widget untuk memesan tiket
  Widget _buildTicketBooking() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Pesan Tiket',
            style: TextStyle(
              fontSize: 22,
              fontWeight: FontWeight.bold,
              color: Colors.green.shade800,
            ),
          ),
          SizedBox(height: 10),
          ElevatedButton(
            onPressed: () {
              _showTicketBookingDialog();
            },
            child: Text('Pesan Tiket'),
            style: ElevatedButton.styleFrom(
              iconColor: Colors.green.shade700,
            ),
          ),
        ],
      ),
    );
  }

  void _showTicketBookingDialog() {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text('Pesan Tiket'),
          content: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text('Jumlah Pengunjung:'),
              TextField(
                keyboardType: TextInputType.number,
                decoration: InputDecoration(hintText: 'Masukkan jumlah orang'),
              ),
              SizedBox(height: 10),
              Text('Parkir Kendaraan:'),
              DropdownButton<String>(
                hint: Text('Pilih jenis parkir'),
                items: <String>['Motor', 'Mobil'].map((String value) {
                  return DropdownMenuItem<String>(
                    value: value,
                    child: Text(value),
                  );
                }).toList(),
                onChanged: (_) {},
              ),
            ],
          ),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.of(context).pop();
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(content: Text('Tiket berhasil dipesan!')),
                );
              },
              child: Text('Pesan'),
            ),
            TextButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: Text('Batal'),
            ),
          ],
        );
      },
    );
  }
}
