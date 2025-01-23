import 'package:flutter/material.dart';

class ProhibitedMedsPage extends StatelessWidget {
  final List<Map<String, String>> prohibitedMeds = [
    {
      'name': 'Isotretinoin (Accutane)',
      'reason':
          'Used to treat severe acne, but it can cause serious birth defects if taken during pregnancy.',
      'damage':
          'Can lead to malformations of the baby’s brain, heart, face, and other organs.',
    },
    {
      'name': 'Warfarin',
      'reason':
          'Blood thinner that crosses the placenta and can harm the baby.',
      'damage': 'Can cause developmental issues, bleeding, and birth defects.',
    },
    {
      'name': 'Methotrexate',
      'reason':
          'Used for cancer and autoimmune diseases, but it’s highly toxic to fetal development.',
      'damage':
          'Can lead to miscarriage, severe birth defects, and developmental problems.',
    },
    {
      'name': 'Misoprostol',
      'reason': 'Used for ulcers but can induce labor or miscarriage.',
      'damage':
          'May cause uterine contractions, premature labor, or fetal abnormalities.',
    },
    {
      'name': 'Aspirin (in high doses)',
      'reason':
          'May interfere with fetal blood flow and increase the risk of complications.',
      'damage':
          'Can lead to premature closure of a vital vessel in the baby’s heart.',
    },
    {
      'name': 'ACE inhibitors',
      'reason':
          'Used for blood pressure control but harmful to kidney development in babies.',
      'damage': 'Can cause kidney damage, skull abnormalities, or stillbirth.',
    },
    {
      'name': 'Tetracycline antibiotics',
      'reason': 'Used for infections but harmful to fetal bone growth.',
      'damage': 'Can cause discoloration of teeth and slow bone development.',
    },
    {
      'name': 'Thalidomide',
      'reason':
          'Previously used for nausea but now known to cause severe birth defects.',
      'damage':
          'Can cause limb abnormalities, organ malformations, and other severe defects.',
    },
  ];

  ProhibitedMedsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xFFB71C1C),
        title: const Text(
          'Prohibited Medications',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
      ),
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [Color(0xFFFFEBEE), Color(0xFFFFCDD2)],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                'Pregnancy Alert 🚨',
                style: TextStyle(
                  fontSize: 24.0,
                  fontWeight: FontWeight.bold,
                  color: Colors.redAccent,
                ),
              ),
              const SizedBox(height: 10.0),
              const Text(
                'The following medications should be avoided during pregnancy as they may pose risks to you or your baby. Tap on each medication to learn more.',
                style: TextStyle(
                  fontSize: 16.0,
                  fontWeight: FontWeight.w500,
                  color: Colors.black87,
                ),
              ),
              const SizedBox(height: 20.0),
              Expanded(
                child: ListView.builder(
                  itemCount: prohibitedMeds.length,
                  itemBuilder: (context, index) {
                    final med = prohibitedMeds[index];
                    return Card(
                      margin: const EdgeInsets.symmetric(vertical: 8.0),
                      elevation: 5.0,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15.0),
                      ),
                      child: ExpansionTile(
                        leading: const Icon(
                          Icons.warning_amber_rounded,
                          color: Colors.red,
                          size: 30.0,
                        ),
                        title: Text(
                          med['name']!,
                          style: const TextStyle(
                            fontSize: 18.0,
                            fontWeight: FontWeight.bold,
                            color: Colors.black87,
                          ),
                        ),
                        subtitle: const Text(
                          'Tap to view details',
                          style: TextStyle(
                            fontSize: 14.0,
                            color: Colors.grey,
                          ),
                        ),
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(12.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Reason:',
                                  style: TextStyle(
                                    fontSize: 16.0,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.red.shade900,
                                  ),
                                ),
                                const SizedBox(height: 4.0),
                                Text(
                                  med['reason']!,
                                  style: const TextStyle(
                                    fontSize: 14.0,
                                    color: Colors.black87,
                                  ),
                                ),
                                const SizedBox(height: 12.0),
                                Text(
                                  'Potential Damage:',
                                  style: TextStyle(
                                    fontSize: 16.0,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.red.shade900,
                                  ),
                                ),
                                const SizedBox(height: 4.0),
                                Text(
                                  med['damage']!,
                                  style: const TextStyle(
                                    fontSize: 14.0,
                                    color: Colors.black87,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
