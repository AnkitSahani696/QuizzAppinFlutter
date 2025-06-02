import 'package:flutter/material.dart';
import 'package:movie_app/quiz_screen.dart';
import 'models.dart';
import 'home_screen.dart';

class ResultScreen extends StatelessWidget {
  final Category category;
  final int score;
  final int totalQuestions;
  final List<int> userAnswers;

  const ResultScreen({
    required this.category,
    required this.score,
    required this.totalQuestions,
    required this.userAnswers,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final percentage = (score / totalQuestions) * 100;
    String resultMessage;
    Color resultColor;
    IconData resultIcon;

    if (percentage >= 80) {
      resultMessage = 'Excellent!';
      resultColor = Colors.green;
      resultIcon = Icons.emoji_events;
    } else if (percentage >= 60) {
      resultMessage = 'Good Job!';
      resultColor = Colors.blue;
      resultIcon = Icons.thumb_up;
    } else if (percentage >= 40) {
      resultMessage = 'Not Bad!';
      resultColor = Colors.orange;
      resultIcon = Icons.sentiment_neutral;
    } else {
      resultMessage = 'Keep Learning!';
      resultColor = Colors.red;
      resultIcon = Icons.school;
    }

    int correctAnswers = score;
    int wrongAnswers = totalQuestions - score - userAnswers.where((a) => a == -1).length;
    int skippedQuestions = userAnswers.where((a) => a == -1).length;

    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [
              category.color.withOpacity(0.6),
              category.color.withOpacity(0.3),
            ],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          ),
        ),
        child: SafeArea(
          child: Column(
            children: [
              AppBar(
                title: const Text('Quiz Results'),
                backgroundColor: Colors.transparent,
                centerTitle: true,
                elevation: 0,
              ),
              Expanded(
                child: Center(
                  child: Padding(
                    padding: const EdgeInsets.all(16),
                    child: Card(
                      elevation: 8,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(24),
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            CircleAvatar(
                              radius: 50,
                              backgroundColor: resultColor.withOpacity(0.2),
                              child: Icon(
                                resultIcon,
                                size: 60,
                                color: resultColor,
                              ),
                            ),
                            const SizedBox(height: 16),
                            Text(
                              resultMessage,
                              style: TextStyle(
                                fontSize: 28,
                                fontWeight: FontWeight.bold,
                                color: resultColor,
                              ),
                            ),
                            const SizedBox(height: 24),
                            Text(
                              'Your Score',
                              style: TextStyle(
                                fontSize: 18,
                                color: Colors.grey[700],
                              ),
                            ),
                            const SizedBox(height: 8),
                            Text(
                              '$score / $totalQuestions',
                              style: const TextStyle(
                                fontSize: 36,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            const SizedBox(height: 32),
                            // Statistics
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                _buildStatItem(
                                  context,
                                  correctAnswers,
                                  'Correct',
                                  Colors.green,
                                  Icons.check_circle,
                                ),
                                _buildStatItem(
                                  context,
                                  wrongAnswers,
                                  'Wrong',
                                  Colors.red,
                                  Icons.cancel,
                                ),
                                _buildStatItem(
                                  context,
                                  skippedQuestions,
                                  'Skipped',
                                  Colors.grey,
                                  Icons.skip_next,
                                ),
                              ],
                            ),
                            const SizedBox(height: 32),
                            ElevatedButton(
                              onPressed: () {
                                Navigator.pushAndRemoveUntil(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => const HomeScreen(),
                                  ),
                                      (route) => false,
                                );
                              },
                              style: ElevatedButton.styleFrom(
                                foregroundColor: Colors.white,
                                backgroundColor: category.color,
                                padding: const EdgeInsets.symmetric(
                                  horizontal: 32,
                                  vertical: 12,
                                ),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(30),
                                ),
                              ),
                              child: const Text(
                                'Back to Home',
                                style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                            const SizedBox(height: 16),
                            TextButton(
                              onPressed: () {
                                Navigator.pushReplacement(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => QuizScreen(category: category),
                                  ),
                                );
                              },
                              child: const Text(
                                'Try Again',
                                style: TextStyle(
                                  fontSize: 16,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildStatItem(
      BuildContext context,
      int value,
      String label,
      Color color,
      IconData icon,
      ) {
    return Column(
      children: [
        Icon(
          icon,
          color: color,
          size: 28,
        ),
        const SizedBox(height: 8),
        Text(
          value.toString(),
          style: TextStyle(
            fontSize: 22,
            fontWeight: FontWeight.bold,
            color: color,
          ),
        ),
        const SizedBox(height: 4),
        Text(
          label,
          style: TextStyle(
            fontSize: 14,
            color: Colors.grey[600],
          ),
        ),
      ],
    );
  }
}