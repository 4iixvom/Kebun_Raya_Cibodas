import 'package:flutter/material.dart';

class ProfileDataWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: Text('Profile Data'),
      content: ListTile(
        leading: CircleAvatar(
          backgroundImage: NetworkImage('https://example.com/user_avatar.jpg'),
        ),
        title: Text('Nama Pengguna'),
        subtitle: Text('email@example.com'),
      ),
      actions: [
        TextButton(
          onPressed: () => Navigator.of(context).pop(),
          child: Text('Close'),
        ),
      ],
    );
  }
}