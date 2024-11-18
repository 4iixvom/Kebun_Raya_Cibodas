import 'package:flutter/material.dart';

class PlaceDescriptionsWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Text(
        'Kebun Raya Cibodas menawarkan keindahan alam yang luar biasa. '
        'Terdapat berbagai spot menarik seperti Taman Sakura dan Air Terjun Cibeureum.',
        style: TextStyle(fontSize: 16),
      ),
    );
  }
}