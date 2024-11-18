import 'package:flutter/material.dart';
import '../widgets/tourist_spot_photos_widget.dart';
import '../widgets/event_schedule_widget.dart';

class GalleryAndEventsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          title: Text('Gallery & Events'),
          bottom: TabBar(
            tabs: [
              Tab(icon: Icon(Icons.photo), text: 'Photos'),
              Tab(icon: Icon(Icons.event), text: 'Events'),
            ],
          ),
        ),
        body: TabBarView(
          children: [
            TouristSpotPhotosWidget(),
            EventScheduleWidget(),
          ],
        ),
      ),
    );
  }
}