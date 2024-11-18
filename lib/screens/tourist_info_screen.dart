import 'package:flutter/material.dart';
import '../widgets/place_descriptions_widget.dart';
import '../widgets/flora_education_widget.dart';
import '../widgets/operating_hours_widget.dart';

class TouristInfoScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          title: Text("Informasi Wisata"),
          bottom: TabBar(
            tabs: [
              Tab(text: "Deskripsi Tempat"),
              Tab(text: "Edukasi Flora"),
              Tab(text: "Jam Operasional"),
            ],
          ),
        ),
        body: TabBarView(
          children: [
            PlaceDescriptionsWidget(),
            FloraEducationWidget(),
            OperatingHoursWidget(),
          ],
        ),
      ),
    );
  }
}