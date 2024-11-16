import 'package:flutter/material.dart';
import 'package:hive/hive.dart';
import 'quiz_page.dart';
import 'loginpage_new.dart';

class LearnPage extends StatefulWidget {
  const LearnPage({super.key});

  @override
  State<LearnPage> createState() => _LearnPageState();
}

class _LearnPageState extends State<LearnPage> {
  static const Map<String, List<String>> subjects = {
    'Math': ['Algebra', 'Geometry', 'Calculus', 'Statistics'],
    'Science': ['Physics', 'Chemistry', 'Biology', 'Earth Science'],
    'History': ['Ancient Civilizations', 'World War I', 'Modern History', 'U.S. History'],
    'Language Arts': ['Grammar', 'Literature', 'Writing', 'Vocabulary'],
  };

  static const Map<String, List<String>> activityTypes = {
    'Quiz': ['Multiple Choice', 'True/False', 'Fill in the Blank'],
    'Game': ['Puzzle', 'Memory', 'Match the Pairs'],
  };

  late final Box userProgressBox;
  late final Map<String, String?> selectedSubtopics = {};
  late final Map<String, String?> selectedActivities = {};

  @override
  void initState() {
    super.initState();
    userProgressBox = Hive.box('userProgress');
  }

  void saveProgress(String subject, String subtopic, String activity) {
    final progressKey = '${subject}_$subtopic';
    userProgressBox.put(progressKey, activity);
  }

  String? getProgress(String subject, String subtopic) {
    final progressKey = '${subject}_$subtopic';
    return userProgressBox.get(progressKey);
  }

  // Handle activity selection and defer state update using WidgetsBinding
  void _handleActivitySelection(String subject, String activity) {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      setState(() {
        selectedActivities[subject] = activity;

        if (activity == 'Quiz' && selectedSubtopics[subject] != null) {
          // Pass the selected subtopic to the QuizPage
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => QuizPage(
                subtopic: selectedSubtopics[subject]!),
            ),
          );
        }
      });
    });
  }

  // Logout function
  void _logout() {
    // Clear any saved user data or session info
    Hive.box('userProgress').clear(); // Clear the user progress box (or use any other logout logic)

    // Navigate to the Login Page
    Navigator.pushReplacement(
      context,
      MaterialPageRoute(builder: (context) => LoginPage()), // Replace with your actual LoginScreen widget
    );
  }

  Widget buildSubjectDropdown(String subject) {
    return Card(
      elevation: 2,
      margin: const EdgeInsets.symmetric(vertical: 8.0),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              subject,
              style: const TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Colors.blue,
              ),
            ),
            const SizedBox(height: 12),
            DropdownButtonFormField<String>(
              decoration: InputDecoration(
                filled: true,
                fillColor: Colors.grey[100],
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide: const BorderSide(color: Colors.blue),
                ),
                contentPadding: const EdgeInsets.symmetric(
                  vertical: 12,
                  horizontal: 15,
                ),
              ),
              value: selectedSubtopics[subject],
              hint: const Text('Select Subtopic'),
              isExpanded: true,
              items: subjects[subject]?.map((String subtopic) {
                final savedActivity = getProgress(subject, subtopic);
                return DropdownMenuItem<String>( 
                  value: subtopic,
                  child: Text('$subtopic (Last: ${savedActivity ?? "None"})'),
                );
              }).toList(),
              onChanged: (String? newValue) {
                setState(() {
                  selectedSubtopics[subject] = newValue;
                  selectedActivities.remove(subject);
                });
              },
            ),
            if (selectedSubtopics[subject] != null)
              buildActivityDropdown(subject),
          ],
        ),
      ),
    );
  }

  Widget buildActivityDropdown(String subject) {
    return Padding(
      padding: const EdgeInsets.only(top: 16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            'Choose an Activity',
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
              color: Colors.blue,
            ),
          ),
          const SizedBox(height: 8),
          DropdownButtonFormField<String>(
            decoration: InputDecoration(
              filled: true,
              fillColor: Colors.grey[100],
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
                borderSide: const BorderSide(color: Colors.blue),
              ),
              contentPadding: const EdgeInsets.symmetric(
                vertical: 12,
                horizontal: 15,
              ),
            ),
            value: selectedActivities[subject],
            hint: const Text('Select Activity'),
            isExpanded: true,
            items: activityTypes.keys.map((String activity) {
              return DropdownMenuItem<String>(
                value: activity,
                child: Text(activity),
              );
            }).toList(),
            onChanged: (String? newValue) {
              if (newValue != null) {
                _handleActivitySelection(subject, newValue);
              }
            },
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Learn'),
        backgroundColor: Colors.blue,
        leading: IconButton(
          icon: Icon(Icons.logout), // Logout icon
          onPressed: _logout, // Trigger logout on press
        ),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: subjects.keys.map(buildSubjectDropdown).toList(),
        ),
      ),
    );
  }
}
