import 'package:flutter/material.dart';
import 'dart:async';
import 'models.dart';
import 'result_screen.dart';

class QuizScreen extends StatefulWidget {
  final Category category;

  const QuizScreen({
    required this.category,
    super.key,
  });

  @override
  State<QuizScreen> createState() => _QuizScreenState();
}

class _QuizScreenState extends State<QuizScreen> {
  int _currentQuestionIndex = 0;
  int _score = 0;
  bool _answered = false;
  int? _selectedAnswerIndex;
  List<int> _userAnswers = [];

  // Timer related variables
  late Timer _timer;
  int _timeLeft = 30;

  @override
  void initState() {
    super.initState();
    _startTimer();
    _userAnswers = List.filled(widget.category.questions.length, -1);
  }

  void _startTimer() {
    _timeLeft = 30; // Reset timer for each question
    _timer = Timer.periodic(const Duration(seconds: 1), (timer) {
      setState(() {
        if (_timeLeft > 0) {
          _timeLeft--;
        } else {
          _timer.cancel();
          _goToNextQuestion();
        }
      });
    });
  }

  void _selectAnswer(int answerIndex) {
    if (_answered) return;

    setState(() {
      _answered = true;
      _selectedAnswerIndex = answerIndex;

      // Save user answer
      _userAnswers[_currentQuestionIndex] = answerIndex;

      // Check if answer is correct
      if (answerIndex == widget.category.questions[_currentQuestionIndex].correctAnswerIndex) {
        _score++;
      }
    });

    // Delay moving to next question to show correct/incorrect feedback
    Future.delayed(const Duration(seconds: 1), () {
      _goToNextQuestion();
    });
  }

  void _goToNextQuestion() {
    _timer.cancel();

    if (_currentQuestionIndex < widget.category.questions.length - 1) {
      setState(() {
        _currentQuestionIndex++;
        _answered = false;
        _selectedAnswerIndex = null;
      });
      _startTimer();
    } else {
      // End of quiz, navigate to results
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(
          builder: (context) => ResultScreen(
            category: widget.category,
            score: _score,
            totalQuestions: widget.category.questions.length,
            userAnswers: _userAnswers,
          ),
        ),
      );
    }
  }

  @override
  void dispose() {
    _timer.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final question = widget.category.questions[_currentQuestionIndex];

    return Scaffold(
      appBar: AppBar(
        title: Text(widget.category.name),
        backgroundColor: widget.category.color,
        foregroundColor: Colors.white,
        centerTitle: true,
        elevation: 0,
      ),
      body: Column(
        children: [
          // Progress indicator and timer
          Container(
            width: double.infinity,
            padding: const EdgeInsets.all(16),
            decoration: BoxDecoration(
              color: widget.category.color.withOpacity(0.2),
            ),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Question ${_currentQuestionIndex + 1}/${widget.category.questions.length}',
                      style: const TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 16,
                      ),
                    ),
                    Row(
                      children: [
                        const Icon(Icons.timer, size: 20),
                        const SizedBox(width: 4),
                        Text(
                          '$_timeLeft sec',
                          style: const TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 16,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                const SizedBox(height: 8),
                LinearProgressIndicator(
                  value: (_currentQuestionIndex + 1) / widget.category.questions.length,
                  backgroundColor: Colors.grey[300],
                  color: widget.category.color,
                  minHeight: 8,
                  borderRadius: BorderRadius.circular(4),
                ),
              ],
            ),
          ),

          // Question
          Padding(
            padding: const EdgeInsets.all(24),
            child: Text(
              question.questionText,
              style: const TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.bold,
              ),
              textAlign: TextAlign.center,
            ),
          ),

          // Options
          Expanded(
            child: ListView.builder(
              padding: const EdgeInsets.all(16),
              itemCount: question.options.length,
              itemBuilder: (context, index) {
                final isCorrect = index == question.correctAnswerIndex;
                final isSelected = _selectedAnswerIndex == index;

                Color backgroundColor = Colors.white;
                Color borderColor = Colors.grey;

                if (_answered) {
                  if (isCorrect) {
                    backgroundColor = Colors.green.withOpacity(0.2);
                    borderColor = Colors.green;
                  } else if (isSelected) {
                    backgroundColor = Colors.red.withOpacity(0.2);
                    borderColor = Colors.red;
                  }
                } else if (isSelected) {
                  backgroundColor = widget.category.color.withOpacity(0.2);
                  borderColor = widget.category.color;
                }

                return GestureDetector(
                  onTap: () => _selectAnswer(index),
                  child: Container(
                    margin: const EdgeInsets.only(bottom: 12),
                    padding: const EdgeInsets.all(16),
                    decoration: BoxDecoration(
                      color: backgroundColor,
                      border: Border.all(color: borderColor),
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: Row(
                      children: [
                        Container(
                          width: 32,
                          height: 32,
                          alignment: Alignment.center,
                          decoration: BoxDecoration(
                            color: widget.category.color.withOpacity(0.1),
                            borderRadius: BorderRadius.circular(16),
                          ),
                          child: Text(
                            ['A', 'B', 'C', 'D'][index],
                            style: TextStyle(
                              color: widget.category.color,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        const SizedBox(width: 16),
                        Expanded(
                          child: Text(
                            question.options[index],
                            style: const TextStyle(
                              fontSize: 16,
                            ),
                          ),
                        ),
                        if (_answered)
                          Icon(
                            isCorrect ? Icons.check_circle : (isSelected ? Icons.cancel : null),
                            color: isCorrect ? Colors.green : Colors.red,
                          ),
                      ],
                    ),
                  ),
                );
              },
            ),
          ),

          // Skip button
          if (!_answered)
            Padding(
              padding: const EdgeInsets.all(16),
              child: TextButton(
                onPressed: () {
                  setState(() {
                    _userAnswers[_currentQuestionIndex] = -1; // Mark as skipped
                  });
                  _goToNextQuestion();
                },
                child: const Text('Skip Question'),
              ),
            ),
        ],
      ),
    );
  }
}
