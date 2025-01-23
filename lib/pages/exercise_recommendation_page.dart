import 'package:flutter/material.dart';
import 'package:mamsafe/widgets/custom_button.dart';
import 'package:mamsafe/widgets/video_card.dart';
import 'package:mamsafe/utils/recommendations.dart';

class ExerciseRecommendationPage extends StatefulWidget {
  const ExerciseRecommendationPage({super.key});

  @override
  State<ExerciseRecommendationPage> createState() =>
      _ExerciseRecommendationPageState();
}

class _ExerciseRecommendationPageState
    extends State<ExerciseRecommendationPage> {
  final TextEditingController _bmiController = TextEditingController();
  final TextEditingController _trimesterController = TextEditingController();

  String recommendationMessage = '';
  List<String> videos = [];

  void _getRecommendations() {
    double bmi = double.tryParse(_bmiController.text) ?? 0.0;
    int trimester = int.tryParse(_trimesterController.text) ?? 0;

    if (bmi > 0 && trimester > 0 && trimester <= 3) {
      final recommendation = getExerciseRecommendation(bmi, trimester);

      setState(() {
        recommendationMessage = recommendation['description'];
        videos = recommendation['videos'];
      });
    } else {
      setState(() {
        recommendationMessage = 'Please enter valid BMI and trimester values.';
        videos = [];
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xFF6C63FF),
        title: const Text(
          'Exercise Recommendations',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
      ),
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [Color(0xFFE8F5E9), Color(0xFFF3E5F5)],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          ),
        ),
        child: Column(
          children: [
            Expanded(
              child: SingleChildScrollView(
                padding: const EdgeInsets.symmetric(horizontal: 16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    const SizedBox(height: 20.0),
                    Text(
                      'Input Details',
                      style: TextStyle(
                        fontSize: 24.0,
                        fontWeight: FontWeight.bold,
                        color: Colors.teal.shade700,
                      ),
                    ),
                    const SizedBox(height: 16.0),
                    _buildInputField(
                      controller: _bmiController,
                      labelText: 'Enter your BMI',
                      hintText: 'E.g., 24.5',
                      icon: Icons.monitor_weight,
                    ),
                    const SizedBox(height: 16.0),
                    _buildInputField(
                      controller: _trimesterController,
                      labelText: 'Trimester (1, 2, or 3)',
                      hintText: 'E.g., 2',
                      icon: Icons.pregnant_woman,
                    ),
                    const SizedBox(height: 20.0),
                    CustomButton(
                      buttonText: 'Get Recommendations',
                      onPressed: _getRecommendations,
                    ),
                    const SizedBox(height: 24.0),
                    if (recommendationMessage.isNotEmpty) ...[
                      const Divider(
                        thickness: 1.5,
                        color: Colors.teal,
                      ),
                      const SizedBox(height: 16.0),
                      Text(
                        'Recommendation',
                        style: TextStyle(
                          fontSize: 20.0,
                          fontWeight: FontWeight.bold,
                          color: Colors.teal.shade800,
                        ),
                      ),
                      const SizedBox(height: 8.0),
                      Text(
                        recommendationMessage,
                        style: TextStyle(
                          fontSize: 16.0,
                          color: recommendationMessage ==
                                  'Please enter valid BMI and trimester values.'
                              ? Colors.red
                              : Colors.black87,
                        ),
                      ),
                      const SizedBox(height: 16.0),
                      if (videos.isNotEmpty) ...[
                        const Text(
                          'Recommended Videos:',
                          style: TextStyle(
                            fontSize: 18.0,
                            fontWeight: FontWeight.w600,
                            color: Colors.deepPurple,
                          ),
                        ),
                        const SizedBox(height: 8.0),
                        ListView.builder(
                          shrinkWrap: true,
                          physics: const NeverScrollableScrollPhysics(),
                          itemCount: videos.length,
                          itemBuilder: (context, index) {
                            return VideoCard(videoUrl: videos[index]);
                          },
                        ),
                      ],
                    ],
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildInputField({
    required TextEditingController controller,
    required String labelText,
    required String hintText,
    required IconData icon,
  }) {
    return TextField(
      controller: controller,
      decoration: InputDecoration(
        labelText: labelText,
        hintText: hintText,
        prefixIcon: Icon(icon, color: Colors.teal),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(15.0),
        ),
        filled: true,
        fillColor: Colors.white,
        contentPadding: const EdgeInsets.symmetric(
          vertical: 16.0,
          horizontal: 12.0,
        ),
      ),
      keyboardType: TextInputType.number,
    );
  }
}
