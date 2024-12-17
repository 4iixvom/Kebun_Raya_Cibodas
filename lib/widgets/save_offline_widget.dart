import 'package:flutter/material.dart';

class SaveOfflineWidget extends StatelessWidget {
  void _showSuccessNotification(BuildContext context) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text(
          "Simpan Offline Sukses!",
          style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
        ),
        duration: Duration(seconds: 2),
        backgroundColor: Colors.green.shade700,
        behavior: SnackBarBehavior.floating,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
        margin: EdgeInsets.all(16),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // Pastikan ada Scaffold
      appBar: AppBar(
        title: Text("Simpan Rute Offline"),
        backgroundColor: Colors.green,
      ),
      body: Center(
        child: ElevatedButton.icon(
          onPressed: () {
            _showSuccessNotification(context);
          },
          icon: Icon(Icons.download, color: Colors.white),
          label: Text(
            "Simpan Rute Offline",
            style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
          ),
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.green,
            foregroundColor: Colors.white,
            padding: EdgeInsets.symmetric(horizontal: 20, vertical: 12),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
            ),
          ),
        ),
      ),
    );
  }
}
