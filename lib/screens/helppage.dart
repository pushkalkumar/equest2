import 'package:flutter/material.dart';

class HelpPage extends StatelessWidget {
  // List of question-answer pairs
  final List<Map<String, String>> faq = [
    {
      'question': 'What is the purpose of this app?',
      'answer': 'This app helps you learn and track progress across various subjects like math, science, and more.',
    },
    {
      'question': 'How can I track my progress?',
      'answer': 'You can use the app’s features to monitor your study sessions, quizzes, and more.',
    },
    {
      'question': 'How do I scan my notes?',
      'answer': 'Simply click the Scan tab, take a picture of your notes, and the app will help you generate a study plan.',
    },
    {
      'question': 'How do I access the profile page?',
      'answer': 'Tap the Profile tab in the bottom navigation bar to view or edit your user profile.',
    },
    {
      'question': 'Can I switch between subjects?',
      'answer': 'Yes, you can choose different subjects to study and track your progress across them.',
    },
    {
      'question': 'How do I sign out?',
      'answer': 'Click the signout button in the top part of every page',
    },
    {
      'question': 'What should I do if I forget my password?',
      'answer': 'You can reset your password by going to the login page and clicking on the "Forgot Password" link.',
    },
    {
      'question': 'Is the app free?',
      'answer': 'Yes, the app is free to use, but some premium features may be available in future updates.',
    },
    {
      'question': 'How can I contact support?',
      'answer': 'Please reach out to us at example@gmail.com for further support',
    },
    {
      'question': 'Where can I find the terms and conditions?',
      'answer': 'The terms and conditions can be found in the app settings under "Legal."',
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Help Page'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView.builder(
          itemCount: faq.length,
          itemBuilder: (context, index) {
            return ExpansionTile(
              title: Text(
                faq[index]['question']!,
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    faq[index]['answer']!,
                    style: TextStyle(fontSize: 16),
                  ),
                ),
              ],
              trailing: Icon(Icons.arrow_drop_down),
            );
          },
        ),
      ),
    );
  }
}
