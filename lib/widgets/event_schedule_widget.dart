import 'package:flutter/material.dart';

class EventScheduleWidget extends StatelessWidget {
  final List<Map<String, String>> events = [
    {"title": "Festival Sakura", "date": "12 Maret 2024"},
    {"title": "Konser Alam", "date": "15 April 2024"},
    {"title": "Pameran Flora", "date": "20 Mei 2024"},
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      padding: const EdgeInsets.all(8),
      itemCount: events.length,
      itemBuilder: (context, index) {
        final event = events[index];
        return Card(
          child: ListTile(
            leading: Icon(Icons.event, color: Colors.green),
            title: Text(event['title']!),
            subtitle: Text(event['date']!),
          ),
        );
      },
    );
  }
}