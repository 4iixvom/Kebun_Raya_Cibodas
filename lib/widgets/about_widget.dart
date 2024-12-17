import 'package:flutter/material.dart';

class AboutWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Tentang')),
      body: Center(
        child: Text('Halaman Tentang'),
      ),
    );
  }
}
