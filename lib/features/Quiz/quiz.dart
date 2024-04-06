import 'package:flutter/material.dart';

class QuizPage extends StatefulWidget {
  @override
  _QuizPageState createState() => _QuizPageState();
}

class _QuizPageState extends State<QuizPage> {
  List<Map<String, dynamic>> questions = [
    {
      'question': 'What is the capital of France?',
      'options': ['London', 'Paris', 'Berlin', 'Madrid'],
      'correctAnswer': 'Paris',
      'marks': 3,
    },
    {
      'question': 'What is the largest planet in our solar system?',
      'options': ['Jupiter', 'Saturn', 'Earth', 'Mars'],
      'correctAnswer': 'Jupiter',
      'marks': 3,
    },
    {
      'question': 'What is the capital of Japan?',
      'options': ['Tokyo', 'Beijing', 'Seoul', 'Bangkok'],
      'correctAnswer': 'Tokyo',
      'marks': 3,
    },
    {
      'question': 'Who painted the Mona Lisa?',
      'options': ['Leonardo da Vinci', 'Vincent van Gogh', 'Pablo Picasso', 'Michelangelo'],
      'correctAnswer': 'Leonardo da Vinci',
      'marks': 3,
    },
    {
      'question': 'Who wrote "Romeo and Juliet"?',
      'options': ['William Shakespeare', 'Jane Austen', 'Charles Dickens', 'F. Scott Fitzgerald'],
      'correctAnswer': 'William Shakespeare',
      'marks': 3,
    },
    {
      'question': 'Which planet is known as the "Red Planet"?',
      'options': ['Mars', 'Venus', 'Jupiter', 'Mercury'],
      'correctAnswer': 'Mars',
      'marks': 3,
    },
    {
      'question': 'What is the chemical symbol for water?',
      'options': ['H2O', 'CO2', 'NaCl', 'O2'],
      'correctAnswer': 'H2O',
      'marks': 3,
    },
    // Add more questions here
  ];

  int currentIndex = 0;
  int totalMarks = 0;
  String? selectedOption;

  void checkAnswer() {
    String correctAnswer = questions[currentIndex]['correctAnswer'];
    if (selectedOption == correctAnswer) {
      totalMarks += questions[currentIndex]['marks'] as int;
    }
    goToNextQuestion();
  }

  void goToNextQuestion() {
    setState(() {
      if (currentIndex < questions.length - 1) {
        currentIndex++;
        selectedOption = null;
      } else {
        // Quiz finished, show total marks
        showDialog(
          context: context,
          builder: (BuildContext context) {
            return AlertDialog(
              backgroundColor: Colors.blue.shade100,
              title: Text('Congratulations!'),
              content: Text('Total Marks: $totalMarks'),
              actions: [
                ElevatedButton(
                  onPressed: () {
                    Navigator.of(context).pop();
                    setState(() {
                      currentIndex = 0;
                      totalMarks = 0;
                    });
                  },
                  child: Text('Restart'),
                )
              ],
            );
          },
        );
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    // Check if the screen size requires scrolling
    final bool needScrolling = MediaQuery.of(context).size.height < MediaQuery.of(context).size.width;

    return needScrolling
        ? SingleChildScrollView(
      child: buildQuizPage(),
    )
        : buildQuizPage();
  }

  Widget buildQuizPage() {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue.shade900,
        foregroundColor: Colors.white,
        title: Text('Quiz'),
      ),
      body: Container(
        padding: EdgeInsets.all(20.0),
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [Colors.blue.shade50, Colors.blue.shade200],
          ),
        ),
        child: ListView(
          children: [
            Text(
              'Question ${currentIndex + 1}/${questions.length}',
              style: TextStyle(fontSize: 20.0),
            ),
            SizedBox(height: 20.0),
            Container(
              padding: EdgeInsets.all(20.0),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(15.0),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.5),
                    spreadRadius: 3,
                    blurRadius: 7,
                    offset: Offset(0, 3),
                  ),
                ],
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    questions[currentIndex]['question'],
                    style: TextStyle(fontSize: 24.0),
                  ),
                  SizedBox(height: 20.0),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      for (var option in questions[currentIndex]['options'])
                        Container(
                          margin: EdgeInsets.symmetric(vertical: 5.0),
                          decoration: BoxDecoration(
                            color: Colors.blue.shade100,
                            borderRadius: BorderRadius.circular(10.0),
                          ),
                          child: RadioListTile(
                            title: Text(option),
                            value: option,
                            groupValue: selectedOption,
                            onChanged: (value) {
                              setState(() {
                                selectedOption = value;
                              });
                            },
                          ),
                        ),
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(height: 20.0),
            Container(
              width: double.infinity, // Take up the maximum available width
              margin: EdgeInsets.symmetric(vertical: 10.0),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10.0),
                gradient: LinearGradient(
                  colors: [
                    Colors.blue.shade900,
                    Colors.blue.shade700,
                  ],
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                ),
              ),
              child: ElevatedButton(
                onPressed: selectedOption != null ? checkAnswer : null,
                style: ButtonStyle(
                  shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                  ),
                  backgroundColor: MaterialStateProperty.all<Color>(Colors.transparent),
                  elevation: MaterialStateProperty.all<double>(0), // No shadow
                ),
                child: Padding(
                  padding: EdgeInsets.symmetric(vertical: 15.0),
                  child: Text(
                    currentIndex == questions.length - 1 ? 'See Total Marks' : 'Submit',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 18.0,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
