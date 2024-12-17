import 'package:flutter/material.dart';
import 'package:wisata_kuliner/screens/gallery_and_events_screen.dart';
import 'package:wisata_kuliner/screens/settings_screen.dart';
import 'package:wisata_kuliner/widgets/about_widget.dart';
import 'package:wisata_kuliner/widgets/language_settings_widget.dart';
import 'screens/home_screen.dart';
import 'screens/interactive_map_screen.dart';
import 'screens/tourist_info_screen.dart';
import 'screens/local_culinary_screen.dart';
import 'screens/route_guide_screen.dart';
import 'screens/weather_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int _selectedIndex = 0;

  final List<Widget> _pages = [
    HomeScreen(),
    InteractiveMapScreen(),
    TouristInfoScreen(),
    LocalCulinaryScreen(),
    RouteGuideScreen(),
    GalleryAndEventsScreen(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Wisata Kebun Raya Cibodas',
      theme: ThemeData(
        primarySwatch: Colors.green,
        scaffoldBackgroundColor: Color(0xFFE8F5E9),
      ),
      home: Scaffold(
        appBar: AppBar(
          flexibleSpace: Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [
                  Color.fromARGB(255, 9, 172, 159),
                  Color.fromARGB(255, 73, 164, 153)
                ], // Gradien warna mint
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
              ),
            ),
          ),
          leading: Builder(
            builder: (context) => IconButton(
              icon: Icon(Icons.menu),
              onPressed: () {
                Scaffold.of(context).openDrawer();
              },
            ),
          ),
          title: Text('Wisata Kebun Raya Cibodas'),
          centerTitle: true,
          backgroundColor: Colors.transparent,
          elevation: 0,
        ),
        drawer: Drawer(
          child: ListView(
            padding: EdgeInsets.zero,
            children: [
              DrawerHeader(
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    colors: [Color(0xFFB2DFDB), Color(0xFF00796B)],
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                  ),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    CircleAvatar(
                      radius: 30,
                      backgroundImage: AssetImage('images/s.jpeg'),
                    ),
                    SizedBox(height: 10),
                    Text(
                      'Profile Name',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),
              ListTile(
                leading: Icon(Icons.settings),
                title: Text('Pengaturan'),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) =>
                            SettingScreen()), // Arahkan ke Settings Screen
                  );
                },
              ),
              ListTile(
                leading: Icon(Icons.language),
                title: Text('Bahasa'),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) =>
                            LanguageSettingWidget()), // Arahkan ke Language Setting
                  );
                },
              ),
              ListTile(
                leading: Icon(Icons.cloud),
                title: Text('Cuaca'),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) =>
                            WeatherScreen()), // Arahkan ke Weather Screen
                  );
                },
              ),
              ListTile(
                leading: Icon(Icons.info),
                title: Text('Tentang'),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) =>
                            AboutWidget()), // Arahkan ke About Widget
                  );
                },
              ),
            ],
          ),
        ),
        body: _pages[_selectedIndex],
        bottomNavigationBar: BottomNavigationBar(
          items: const [
            BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
            BottomNavigationBarItem(icon: Icon(Icons.map), label: 'Map'),
            BottomNavigationBarItem(icon: Icon(Icons.info), label: 'Info'),
            BottomNavigationBarItem(
                icon: Icon(Icons.restaurant), label: 'Kuliner'),
            BottomNavigationBarItem(icon: Icon(Icons.route), label: 'Rute'),
            BottomNavigationBarItem(icon: Icon(Icons.photo), label: 'Gallery'),
          ],
          currentIndex: _selectedIndex,
          selectedItemColor: Colors.green.shade700,
          unselectedItemColor: Colors.grey,
          onTap: _onItemTapped,
        ),
      ),
    );
  }
}
