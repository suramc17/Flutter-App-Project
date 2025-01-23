import 'package:flutter/material.dart';
import 'package:mamsafe/pages/doctor_schedule_page.dart';
import 'package:mamsafe/pages/bmi_calculator_page.dart';
import 'package:mamsafe/pages/exercise_recommendation_page.dart';
import 'package:mamsafe/pages/diet_recommendation_page.dart';
import 'package:mamsafe/pages/prohibited_meds_page.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';

class HomePage extends StatelessWidget {
  final FlutterLocalNotificationsPlugin notificationsPlugin;

  const HomePage({super.key, required this.notificationsPlugin});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize:
            Size.fromHeight(MediaQuery.of(context).size.height * 0.15),
        child: AppBar(
          backgroundColor: const Color.fromARGB(255, 188, 19, 19),
          flexibleSpace: Center(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: FittedBox(
                fit: BoxFit.scaleDown,
                child: Text(
                  'MomSafe',
                  style: TextStyle(
                    fontFamily: 'Billabong',
                    fontSize: 60,
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    letterSpacing: 1.5,
                  ),
                ),
              ),
            ),
          ),
          centerTitle: true,
          elevation: 0,
        ),
      ),
      body: Stack(
        children: [
          Positioned.fill(
            child: Image.asset(
              'assets/pregnant-woman.jpg',
              fit: BoxFit.cover,
            ),
          ),
          // Content
          Center(
            child: SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: Column(
                  children: [
                    const SizedBox(height: 10),
                    _buildFeatureCard(
                      context,
                      title: 'BMI Calculator',
                      icon: Icons.calculate,
                      color: Colors.blueAccent,
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const BMICalculatorPage(),
                          ),
                        );
                      },
                    ),
                    const SizedBox(height: 16),
                    _buildFeatureCard(
                      context,
                      title: 'Exercise Recommendation',
                      icon: Icons.fitness_center,
                      color: Colors.green,
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) =>
                                const ExerciseRecommendationPage(),
                          ),
                        );
                      },
                    ),
                    const SizedBox(height: 16),
                    _buildFeatureCard(
                      context,
                      title: 'Diet Recommendation',
                      icon: Icons.restaurant,
                      color: Colors.orange,
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => DietRecommendationPage(),
                          ),
                        );
                      },
                    ),
                    const SizedBox(height: 16),
                    _buildFeatureCard(
                      context,
                      title: 'Prohibited Medications',
                      icon: Icons.medication,
                      color: Colors.redAccent,
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => ProhibitedMedsPage(),
                          ),
                        );
                      },
                    ),
                    const SizedBox(height: 16),
                    _buildFeatureCard(
                      context,
                      title: 'Doctor Schedule',
                      icon: Icons.calendar_today,
                      color: Colors.purple,
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => DoctorSchedulePage(
                              notificationsPlugin: notificationsPlugin,
                            ),
                          ),
                        );
                      },
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildFeatureCard(
    BuildContext context, {
    required String title,
    required IconData icon,
    required Color color,
    required VoidCallback onTap,
  }) {
    return GestureDetector(
      onTap: onTap,
      child: Card(
        elevation: 5,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
        child: Container(
          height: 80,
          padding: const EdgeInsets.all(12.0),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
            gradient: LinearGradient(
              colors: [color.withOpacity(0.8), color],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ),
          ),
          child: Row(
            children: [
              Icon(icon, size: 40, color: Colors.white),
              const SizedBox(width: 20),
              Expanded(
                child: Text(
                  title,
                  style: const TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
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
