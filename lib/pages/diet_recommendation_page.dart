import 'package:flutter/material.dart';
import '../utils/recommendations.dart';

class DietRecommendationPage extends StatefulWidget {
  const DietRecommendationPage({super.key});

  @override
  _DietRecommendationPageState createState() => _DietRecommendationPageState();
}

class _DietRecommendationPageState extends State<DietRecommendationPage> {
  final TextEditingController bmiController = TextEditingController();
  final TextEditingController trimesterController = TextEditingController();
  List<Widget> _recommendationWidgets = [];
  void _getRecommendation() {
    final bmi = double.tryParse(bmiController.text);
    final trimester = int.tryParse(trimesterController.text);

    if (bmi != null && trimester != null) {
      final recommendations = getDietRecommendation(bmi, trimester);

      setState(() {
        _recommendationWidgets = recommendations;
      });
    } else {
      setState(() {
        _recommendationWidgets = [
          const Text(
            'Invalid input. Please try again.',
            style: TextStyle(
              fontSize: 16.0,
              color: Colors.red,
            ),
          ),
        ];
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xFF6C63FF),
        title: const Text(
          'Diet Recommendations',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
      ),
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [Color(0xFFFFF8E1), Color(0xFFFFEBEE)],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                const SizedBox(height: 20.0),
                Text(
                  'Input Details',
                  style: TextStyle(
                    fontSize: 24.0,
                    fontWeight: FontWeight.bold,
                    color: Colors.deepPurple.shade700,
                  ),
                ),
                const SizedBox(height: 16.0),
                _buildInputField(
                  controller: bmiController,
                  labelText: 'Enter your BMI',
                  hintText: 'E.g., 22.5',
                  icon: Icons.monitor_weight_outlined,
                ),
                const SizedBox(height: 16.0),
                _buildInputField(
                  controller: trimesterController,
                  labelText: 'Trimester (1, 2, or 3)',
                  hintText: 'E.g., 1',
                  icon: Icons.pregnant_woman_outlined,
                ),
                const SizedBox(height: 20.0),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color(0xFF6C63FF),
                    padding: const EdgeInsets.symmetric(
                      vertical: 14.0,
                      horizontal: 20.0,
                    ),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15.0),
                    ),
                  ),
                  onPressed: _getRecommendation,
                  child: const Text(
                    'Get Recommendation',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 18.0,
                      fontWeight: FontWeight.bold,
                      letterSpacing: 1.2,
                    ),
                  ),
                ),
                const SizedBox(height: 16.0),
                if (_recommendationWidgets.isNotEmpty) ...[
                  const Divider(
                    thickness: 1.5,
                    color: Colors.deepPurple,
                  ),
                  const SizedBox(height: 16.0),
                  const Text(
                    'Recommendations:',
                    style: TextStyle(
                      fontSize: 20.0,
                      fontWeight: FontWeight.bold,
                      color: Colors.deepPurple,
                    ),
                  ),
                  const SizedBox(height: 10.0),
                  ..._recommendationWidgets,
                ],
              ],
            ),
          ),
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
        prefixIcon: Icon(icon, color: Colors.deepPurple),
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
