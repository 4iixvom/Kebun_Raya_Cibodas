import 'package:flutter/material.dart';

class LocalCulinaryScreen extends StatelessWidget {
  final List<Map<String, dynamic>> restaurants = [
    {"name": "Sate Maranggi", "image": "images/sate.jpeg", "rating": 4.8},
    {
      "name": "Nasi Liwet Cianjur",
      "image": "images/nasi-liwet-sunda.jpg",
      "rating": 4.5
    },
    {"name": "Kue cubir", "image": "images/kuecubir.jpg", "rating": 4.7},
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: restaurants.length,
      itemBuilder: (context, index) {
        final restaurant = restaurants[index];
        return Card(
          margin: EdgeInsets.all(8),
          child: ListTile(
            leading: Image.network(
              restaurant['image'],
              fit: BoxFit.cover,
              width: 50,
            ),
            title: Text(restaurant['name']),
            subtitle: Row(
              children: List.generate(
                5,
                (i) => Icon(
                  i < restaurant['rating'].round()
                      ? Icons.star
                      : Icons.star_border,
                  color: Colors.amber,
                  size: 16,
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}
