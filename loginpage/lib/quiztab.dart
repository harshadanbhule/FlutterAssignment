import 'package:flutter/material.dart';

class QuizScreen extends StatefulWidget {
  const QuizScreen({super.key});

  @override
  _QuizScreenState createState() => _QuizScreenState();
}

class _QuizScreenState extends State<QuizScreen> {
  String ?_selectedOption  ; // Initialize it to the first option
  final String _correctOption = 'Lina'; // Replace with your correct option
  bool _showAnswer = false;

  void _checkAnswer() {
    setState(() {
      _showAnswer = true;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Quiz'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              'Who is harshad anbhule girlFriend ?',
              style: TextStyle(fontSize: 20.0),
            ),
            const SizedBox(height: 20.0),
            Column(
              children: [
                _buildOption('Shanaya'),
                _buildOption('veedhi'),
                _buildOption('Lina'),
                _buildOption('Mrudula'),
              ],
            ),
            const SizedBox(height: 20.0),
            ElevatedButton(
              onPressed: () => _checkAnswer(),
              child: const Text('Submit'),
            ),
            const SizedBox(height: 20.0),
            _showAnswer
                ? _selectedOption == _correctOption
                    ? _buildFeedback(true)
                    : _buildFeedback(false)
                : const SizedBox.shrink(),
          ],
        ),
      ),
    );
  }

  Widget _buildOption(String option) {
    return RadioListTile(
      title: Text(option),
      value: option,
      groupValue: _selectedOption,
      onChanged: (value) {
        setState(() {
          _selectedOption = value;
        });
      },
    );
  }

  Widget _buildFeedback(bool isCorrect) {
    return Column(
      children: [
        Icon(
          isCorrect ? Icons.check_circle : Icons.cancel,
          color: isCorrect ? Colors.green : Colors.red,
          size: 50.0,
        ),
        const SizedBox(height: 10.0),
        Text(
          isCorrect ? 'Correct!' : 'Wrong!',
          style: TextStyle(
            color: isCorrect ? Colors.green : Colors.red,
            fontSize: 20.0,
            fontWeight: FontWeight.bold,
          ),
        ),
        const SizedBox(height: 10.0),
        Text(
          'Correct Option: $_correctOption',
          style: const TextStyle(
            color: Colors.green,
            fontSize: 18.0,
          ),
        ),
      ],
    );
  }
}
