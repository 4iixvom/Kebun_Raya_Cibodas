import 'package:flutter/material.dart';

class FloraEducationWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Text(
        'Kebun Raya Cibodas memiliki koleksi flora unik, termasuk berbagai jenis '
        'tanaman lumut dan bunga sakura.',
        style: TextStyle(fontSize: 16),
      ),
    );
  }
}