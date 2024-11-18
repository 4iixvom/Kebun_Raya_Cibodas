import 'package:flutter/material.dart';

class RestaurantListWidget extends StatelessWidget {
  final List<String> restaurants = [
    "Restoran A",
    "Restoran B",
    "Restoran C",
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: restaurants.length,
      itemBuilder: (context, index) {
        return ListTile(
          leading: Icon(Icons.restaurant, color: Colors.green),
          title: Text(restaurants[index]),
        );
      },
    );
  }
}