import 'package:flutter/material.dart';

class ReviewsRatingsWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        'Ulasan: Sangat baik! \nRating: 4.8/5',
        style: TextStyle(fontSize: 16),
      ),
    );
  }
}