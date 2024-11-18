import 'package:flutter/material.dart';

class SaveOfflineWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: ElevatedButton.icon(
        onPressed: () {
          // Tambahkan logika untuk menyimpan offline
        },
        icon: Icon(Icons.download),
        label: Text("Simpan Rute Offline"),
        style: ElevatedButton.styleFrom(
          backgroundColor: Colors.green,  // Change from primary to backgroundColor
        ),
      ),
    );
  }
}