import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class NavigationWidget extends StatelessWidget {
  final String _url =
      "https://www.bing.com/maps?osid=7f886573-dd79-4c0c-a7c3-1e8bc318f653&cp=-6.725814~107.018133&lvl=17&pi=0&imgid=094ee5d7-7b91-4f00-ad2e-38b22fe16990&v=2&sV=2&form=S00027";

  Future<void> _launchURL() async {
    final Uri uri = Uri.parse(_url);
    if (await canLaunchUrl(uri)) {
      await launchUrl(uri, mode: LaunchMode.externalApplication);
    } else {
      throw 'Could not launch $_url';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: ElevatedButton.icon(
        onPressed: _launchURL,
        icon: Icon(Icons.navigation),
        label: Text("Navigasi ke Lokasi"),
        style: ElevatedButton.styleFrom(
          backgroundColor: Colors.green,
          foregroundColor: Colors.white,
        ),
      ),
    );
  }
}
