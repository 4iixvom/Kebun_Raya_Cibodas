import 'package:flutter/material.dart';

class EventScheduleWidget extends StatelessWidget {
  final List<Map<String, String>> events = [
    {
      "title": "Festival Sakura",
      "date": "12 Maret 2024",
      "description":
          "Nikmati keindahan bunga sakura yang sedang mekar di Kebun Raya Cibodas.",
      "ticket": "Rp 50.000",
    },
    {
      "title": "Konser Alam",
      "date": "15 April 2024",
      "description":
          "Rasakan harmoni musik yang berpadu dengan suasana alam terbuka.",
      "ticket": "Rp 75.000",
    },
    {
      "title": "Pameran Flora",
      "date": "20 Mei 2024",
      "description":
          "Lihat berbagai jenis flora unik dari berbagai penjuru dunia.",
      "ticket": "Rp 30.000",
    },
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      padding: const EdgeInsets.all(8),
      itemCount: events.length,
      itemBuilder: (context, index) {
        final event = events[index];
        return Card(
          elevation: 3,
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
          child: ListTile(
            leading: Icon(Icons.event, color: Colors.green),
            title: Text(event['title']!,
                style: TextStyle(fontWeight: FontWeight.bold)),
            subtitle: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("Tanggal: ${event['date']}"),
                Text("Tiket Masuk: ${event['ticket']}"),
              ],
            ),
            trailing: ElevatedButton(
              onPressed: () {
                _showTicketDialog(context, event['title']!, event['ticket']!);
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.green,
                foregroundColor: Colors.white,
              ),
              child: Text("Pesan Tiket"),
            ),
            onTap: () {
              _showEventDetails(
                  context, event['title']!, event['description']!);
            },
          ),
        );
      },
    );
  }

  // Menampilkan detail event
  void _showEventDetails(
      BuildContext context, String title, String description) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text(title, style: TextStyle(color: Colors.green)),
          content: Text(description),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: Text("Tutup", style: TextStyle(color: Colors.green)),
            ),
          ],
        );
      },
    );
  }

  // Menampilkan dialog pemesanan tiket
  void _showTicketDialog(
      BuildContext context, String eventTitle, String ticketPrice) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text("Pesan Tiket - $eventTitle",
              style: TextStyle(color: Colors.green)),
          content: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text("Harga Tiket: $ticketPrice"),
              SizedBox(height: 10),
              Text(
                "Klik tombol di bawah ini untuk memesan tiket.",
                style: TextStyle(height: 1.5),
              ),
            ],
          ),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: Text("Tutup", style: TextStyle(color: Colors.green)),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.of(context).pop(); // Menutup dialog
                _showSuccessSnackbar(context); // Menampilkan notifikasi sukses
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.green,
                foregroundColor: Colors.white,
              ),
              child: Text("Pesan Sekarang"),
            ),
          ],
        );
      },
    );
  }

  // Menampilkan Snackbar sebagai notifikasi berhasil
  void _showSuccessSnackbar(BuildContext context) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text(
          "Pesan Tiket Berhasil!",
          style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
        ),
        backgroundColor: Colors.green,
        duration: Duration(seconds: 2),
        behavior: SnackBarBehavior.floating,
        margin: EdgeInsets.all(16),
      ),
    );
  }
}
