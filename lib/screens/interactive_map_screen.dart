import 'package:flutter/material.dart';
import '../widgets/spot_locations_widget.dart';
import '../widgets/facility_locations_widget.dart';
import '../widgets/navigation_widget.dart';

class InteractiveMapScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          title: Text("Peta Interaktif"),
          bottom: TabBar(
            tabs: [
              Tab(icon: Icon(Icons.location_on), text: "Lokasi Spot Wisata"),
              Tab(icon: Icon(Icons.local_hotel), text: "Lokasi Fasilitas"),
              Tab(icon: Icon(Icons.navigation), text: "Navigasi (GPS)"),
            ],
          ),
        ),
        body: TabBarView(
          children: [
            SpotLocationsWidget(),
            FacilityLocationsWidget(),
            NavigationWidget(),
          ],
        ),
      ),
    );
  }
}