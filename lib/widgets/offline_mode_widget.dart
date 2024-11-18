import 'package:flutter/material.dart';

class OfflineModeWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SwitchListTile(
      title: Text('Mode Offline'),
      subtitle: Text('Aktifkan untuk menggunakan aplikasi tanpa internet.'),
      value: false, // Ganti dengan state yang sesuai
      onChanged: (bool value) {
        // Tambahkan logika untuk mengaktifkan/mematikan mode offline
      },
    );
  }
}