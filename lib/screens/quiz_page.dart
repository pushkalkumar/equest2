import 'package:flutter/material.dart';
import 'quiz_data.dart';

class QuizPage extends StatefulWidget {
  final String subtopic;

  const QuizPage({Key? key, required this.subtopic}) : super(key: key);

  @override
  _QuizPageState createState() => _QuizPageState();
}

class _QuizPageState extends State<QuizPage> {
  late List<QuizQuestion> quizQuestions;

  @override
  void initState() {
    super.initState();
    quizQuestions = getQuizQuestions(widget.subtopic);
  }

  int currentQuestionIndex = 0;
  String selectedAnswer = '';
  bool showResult = false;

  // Method to check the answer and go to the next question
  void checkAnswer(String answer) {
    if (answer == quizQuestions[currentQuestionIndex].correctAnswer) {
      setState(() {
        selectedAnswer = 'Correct';
      });
    } else {
      setState(() {
        selectedAnswer = 'Incorrect';
      });
    }

    // Move to the next question after a delay
    Future.delayed(Duration(seconds: 1), () {
      setState(() {
        if (currentQuestionIndex < quizQuestions.length - 1) {
          currentQuestionIndex++;
          selectedAnswer = ''; // Reset answer for the next question
        } else {
          showResult = true; // Show result after the last question
        }
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Quiz on ${widget.subtopic}', style: TextStyle(fontSize: 24)),
        backgroundColor: Colors.blue, // Blue theme for the app bar
        elevation: 0,
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: showResult
              ? Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      'Quiz Over!',
                      style: TextStyle(
                        fontSize: 36, // Larger text size
                        fontWeight: FontWeight.bold,
                        color: Colors.blue,
                      ),
                    ),
                    SizedBox(height: 20),
                    ElevatedButton(
                      onPressed: () {
                        setState(() {
                          currentQuestionIndex = 0;
                          showResult = false;
                        });
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.orange, // Orange button for restart
                        padding: EdgeInsets.symmetric(horizontal: 40, vertical: 15),
                      ),
                      child: Text(
                        'Restart Quiz',
                        style: TextStyle(fontSize: 20), // Larger text size
                      ),
                    ),
                  ],
                )
              : Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      quizQuestions[currentQuestionIndex].question,
                      style: TextStyle(
                        fontSize: 28, // Larger text size for question
                        fontWeight: FontWeight.bold,
                        color: Colors.blue,
                      ),
                      textAlign: TextAlign.center,
                    ),
                    SizedBox(height: 30),
                    ...quizQuestions[currentQuestionIndex]
                        .options
                        .map(
                          (option) => Padding(
                            padding: const EdgeInsets.symmetric(vertical: 12.0),
                            child: ElevatedButton(
                              onPressed: () => checkAnswer(option),
                              style: ElevatedButton.styleFrom(
                                backgroundColor: Colors.orange, // Orange buttons
                                padding: EdgeInsets.symmetric(horizontal: 40, vertical: 15),
                              ),
                              child: Text(
                                option,
                                style: TextStyle(
                                  fontSize: 22, // Larger font for options
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                            ),
                          ),
                        )
                        .toList(),
                    SizedBox(height: 20),
                    if (selectedAnswer.isNotEmpty)
                      Padding(
                        padding: const EdgeInsets.only(top: 16.0),
                        child: Text(
                          selectedAnswer,
                          style: TextStyle(
                            color: selectedAnswer == 'Correct'
                                ? Colors.green
                                : Colors.red,
                            fontSize: 24, // Larger text size for feedback
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                  ],
                ),
        ),
      ),
    );
  }
}
