import 'package:flutter/material.dart';
import '../widgets/recommended_routes_widget.dart';
import '../widgets/save_offline_widget.dart';

class RouteGuideScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          title: Text(" Panduan Rute "),
          bottom: TabBar(
            tabs: [
              Tab(text: "Rute Yang Disarankan"),
              Tab(text: "Simpan Offline"),
            ],
          ),
        ),
        body: TabBarView(
          children: [
            RecommendedRoutesWidget(),
            SaveOfflineWidget(),
          ],
        ),
      ),
    );
  }
}