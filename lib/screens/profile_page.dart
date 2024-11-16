import 'package:flutter/material.dart';
import 'package:share_plus/share_plus.dart'; // Import the share package
import 'loginpage_new.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  // Function to handle sharing
  void _shareProfile() {
    // This is the content that will be shared
    String contentToShare = """
    Check out my profile on EduQuest:
    - Name: User Name
    - Email: email@example.com
    - Join me in learning and growing with EduQuest! #EduQuest #Learning #SocialLearning
    """;

    // Share the content to social media or any available apps
    Share.share(contentToShare);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Profile Page"),
        leading: IconButton(
          icon: Icon(Icons.logout),
          onPressed: () {
            // Navigate to login page when logout is pressed
            Navigator.pushReplacement(
              context,
              MaterialPageRoute(builder: (context) => LoginPage()), // Redirect to LoginPage
            );
          },
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            CircleAvatar(
              radius: 80,  // Controls the size of the profile image
              backgroundImage: NetworkImage('https://example.com/path_to_image.jpg'), // Replace with valid image URL
              backgroundColor: Colors.grey[200], // Color of the background if image fails to load
            ),
            SizedBox(height: 20), // Adds space between the image and text
            Text(
              'User Name',  // Replace with dynamic username or profile name
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 10),
            Text(
              'email@example.com',  // Replace with dynamic email or other profile information
              style: TextStyle(fontSize: 16, color: Colors.grey),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: _shareProfile,  // Share action
              child: Text('Share My Profile'),
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.blue, // Button color
                padding: EdgeInsets.symmetric(horizontal: 30, vertical: 15),
                textStyle: TextStyle(fontSize: 16),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
