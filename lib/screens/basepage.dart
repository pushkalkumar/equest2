import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'scan_page.dart';
import 'profile_page.dart';

class BasePage extends StatefulWidget {
  final Widget child; // This is the page content

  const BasePage({super.key, required this.child});

  @override
  State<BasePage> createState() => _BasePageState();
}

class _BasePageState extends State<BasePage> {
  int _selectedIndex = 0;

  void _onTabChange(int index) {
    setState(() {
      _selectedIndex = index;
    });

    // Handle navigation based on tab selection
    switch (index) {
      case 1: // Scan
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(builder: (context) =>  ScanPage()),
        );
        break;
      case 2: // Profile
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(builder: (context) => const ProfilePage()),
        );
        break;
      default:
        break;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: widget.child, // Display the page content here
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
              GButton(icon: Icons.school, text: 'Learn'),
              GButton(icon: Icons.document_scanner, text: 'Scan'),
              GButton(icon: Icons.person, text: 'Profile'),
              GButton(icon: Icons.question_answer, text: "Help"),
            ],
          ),
        ),
      ),
    );
  }
}
