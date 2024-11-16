import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:flutter_gemini/flutter_gemini.dart';

import 'screens/loginpage_new.dart';
import 'screens/learn_page.dart';
import 'screens/scan_page.dart';
import 'screens/profile_page.dart';
import 'screens/helppage.dart';  // Import HelpPage

void main() async {
  Gemini.init(
    apiKey:'AIzaSyD2_yFs_mPIU-oJ_NakJJzMV815EWsEnyY', 
  );
  WidgetsFlutterBinding.ensureInitialized();
  await Hive.initFlutter();
  await Hive.openBox('userProgress'); // Open the box before accessing it in the app
  await Hive.openBox('userBox'); // Box to store login status (userBox)

  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.white,
      ),
      initialRoute: '/login',
      routes: {
        '/login': (context) => LoginPage(),
        '/home': (context) => MainNavigationController(),
        '/learn': (context) => LearnPage(),
        '/scan': (context) => ScanPage(),
        '/profile': (context) => ProfilePage(),
        '/signup': (context) => LoginPage(),
        '/help': (context) => HelpPage(), // Add the route for HelpPage
      },
    );
  }
}

class MainNavigationController extends StatefulWidget {
  @override
  _MainNavigationControllerState createState() =>
      _MainNavigationControllerState();
}

class _MainNavigationControllerState extends State<MainNavigationController> {
  int _selectedIndex = 0;

  final List<Widget> _pages = [
    LearnPage(),
    ScanPage(),
    ProfilePage(),
    HelpPage(), // Add HelpPage to the list of pages
  ];

  void _onTabChange(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[_selectedIndex],
      bottomNavigationBar: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.2),
              spreadRadius: 1,
              blurRadius: 8,
            ),
          ],
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
          child: GNav(
            backgroundColor: Colors.white,
            color: Colors.grey[600],
            activeColor: Colors.blue,
            tabBackgroundColor: Colors.blue.withOpacity(0.1),
            gap: 8,
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
            selectedIndex: _selectedIndex,
            onTabChange: _onTabChange,
            tabs: const [
              GButton(
                icon: Icons.school,
                text: 'Learn',
              ),
              GButton(
                icon: Icons.document_scanner,
                text: 'Scan',
              ),
              GButton(
                icon: Icons.person,
                text: 'Profile',
              ),
              GButton(
                icon: Icons.help_outline, // Icon for Help tab
                text: 'Help',
              ),
            ],
          ),
        ),
      ),
    );
  }
}
