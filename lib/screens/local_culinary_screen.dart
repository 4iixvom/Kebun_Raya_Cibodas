import 'package:flutter/material.dart';

class LocalCulinaryScreen extends StatelessWidget {
  final List<Map<String, dynamic>> foods = [
    {
      "name": "Sate Maranggi",
      "image": "images/sate.jpeg",
      "rating": 4.8,
      "price": "Rp 30.000",
      "orderInfo": "Pesan lewat aplikasi kami atau di lokasi."
    },
    {
      "name": "Nasi Liwet Cianjur",
      "image": "images/nasi-liwet-sunda.jpg",
      "rating": 4.5,
      "price": "Rp 25.000",
      "orderInfo": "Tersedia di gerai utama, atau pesan di tempat makan."
    },
    {
      "name": "Kue Cubir",
      "image": "images/kuecubir.jpg",
      "rating": 4.7,
      "price": "Rp 10.000",
      "orderInfo": "Pesan langsung di warung atau melalui aplikasi."
    },
    {
      "name": "Es Cendol",
      "image": "images/escendol.jpg",
      "rating": 5.0,
      "price": "Rp 15.000",
      "orderInfo": "Tersedia di gerai es dan kios sekitar."
    },
    {
      "name": "Gorengan",
      "image": "images/gorengan.jpg",
      "rating": 4.0,
      "price": "Rp 5.000",
      "orderInfo": "Pesan langsung di kios atau bisa ambil sendiri."
    },
    {
      "name": "Jus Buah",
      "image": "images/jusbuah.jpg",
      "rating": 4.5,
      "price": "Rp 12.000",
      "orderInfo": "Tersedia di toko jus atau kios sekitar taman."
    },
    {
      "name": "Kopi Cibodas",
      "image": "images/kopicibodas.jpg",
      "rating": 4.5,
      "price": "Rp 20.000",
      "orderInfo": "Pesan di kedai kopi atau melalui aplikasi."
    },
    {
      "name": "Pepes Ikan",
      "image": "images/resep-pepes-ikan-cue.jpg",
      "rating": 4.6,
      "price": "Rp 40.000",
      "orderInfo": "Tersedia di restoran atau pesan langsung."
    },
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: foods.length,
      itemBuilder: (context, index) {
        final food = foods[index];
        return Card(
          margin: EdgeInsets.all(8),
          child: ListTile(
            leading: Image.asset(
              food['image'],
              fit: BoxFit.cover,
              width: 50,
            ),
            title: Text(food['name']),
            subtitle: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: List.generate(
                    5,
                    (i) => Icon(
                      i < food['rating'].round()
                          ? Icons.star
                          : Icons.star_border,
                      color: Colors.amber,
                      size: 16,
                    ),
                  ),
                ),
                SizedBox(height: 4),
                Text('Harga: ${food['price']}'),
                Text('Cara Pesan: ${food['orderInfo']}'),
              ],
            ),
            onTap: () {
              _showFoodDetail(context, food);
            },
          ),
        );
      },
    );
  }

  void _showFoodDetail(BuildContext context, Map<String, dynamic> food) {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => FoodDetailScreen(food: food),
      ),
    );
  }
}

class FoodDetailScreen extends StatelessWidget {
  final Map<String, dynamic> food;

  FoodDetailScreen({required this.food});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(food['name']),
        backgroundColor: Colors.green,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.asset(
              food['image'],
              fit: BoxFit.cover,
              width: double.infinity,
              height: 250,
            ),
            SizedBox(height: 16),
            Text(
              food['name'],
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 8),
            Text(
              'Harga: ${food['price']}',
              style: TextStyle(fontSize: 18, color: Colors.green.shade700),
            ),
            SizedBox(height: 8),
            Text(
              'Rating: ${food['rating']} ⭐',
              style: TextStyle(fontSize: 18),
            ),
            SizedBox(height: 16),
            Text(
              'Cara Pesan:',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 8),
            Text(
              food['orderInfo'],
              style: TextStyle(fontSize: 16),
            ),
            SizedBox(height: 32),
            ElevatedButton(
              onPressed: () {
                // Logic to handle ordering the food can go here
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(content: Text('Tiket Pesanan berhasil dilakukan!')),
                );
              },
              child: Text('Pesan Sekarang'),
              style: ElevatedButton.styleFrom(
                iconColor: Colors.green,
                padding: EdgeInsets.symmetric(horizontal: 40, vertical: 12),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

void main() => runApp(MaterialApp(
      debugShowCheckedModeBanner: false,
      home: LocalCulinaryScreen(),
    ));
