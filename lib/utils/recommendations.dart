import 'package:flutter/material.dart';

Map<String, dynamic> getExerciseRecommendation(double bmi, int trimester) {
  if (bmi < 18.5 && trimester == 1) {
    return {
      'description':
          'For the sake of safety consult your doctor before performing the exercises!\nHere are some exercises that are generally considered safe and beneficial for pregnant women in their first trimester, particularly those who are underweight: \nPrenatal Yoga: Focus on gentle stretches and poses that improve balance and flexibility.\nSwimming: Low-impact exercise that is easy on joints and helps improve circulation.\nWalking: A simple and effective way to increase cardiovascular fitness and build endurance.\nPerforming those exercises in low intensity and duration is advisable',
      'videos': [
        'https://youtu.be/zmUJWKM98hM',
        'https://youtu.be/VyF5J5yXTxI'
      ],
    };
  } else if (bmi < 18.5 && trimester == 2) {
    return {
      'description':
          'For the sake of safety consult your doctor before performing the exercises!\nFocus: Strength, flexibility, and endurance while avoiding exercises that put stress on the abdomen.\nStationary Cycling: Provides a low-impact cardio workout.\nKegel Exercises: Strengthen pelvic floor muscles, which helps during delivery.\nWalking: A brisk 20–30 minutes daily walk helps improve cardiovascular fitness without stressing the joints.\nSwimming or Water Aerobics: Reduces pressure on joints, improves circulation, and supports the growing belly.\nPerforming those exercises in low intensity and relatively short duration is advisable',
      'videos': ['https://youtu.be/TsyvlIsWnKw', 'https://youtu.be/Ilg-gQY2Rxc']
    };
  } else if (bmi < 18.5 && trimester == 3) {
    return {
      'description':
          'For the sake of safety consult your doctor before performing the exercises!\nFocus: Low-impact exercises that reduce joint strain, improve circulation, and promote mental relaxation.\nPelvic Tilts: Strengthen the back and abdominal muscles.\nStretching:Cat-Cow stretch for spine flexibility and Hip circles while seated on a stability ball.\nDeep Breathing Exercises: Practice diaphragmatic breathing to prepare for labor.\nSo it is recommended to do gentle exercises such as pelvic tilts and deep breathing.\nPerforming those exercises in low intensity and moderate duration is advisable',
      'videos': [
        'https://youtu.be/moa4h-rjuNE',
        'https://youtu.be/cGmqz-sko94',
        'https://youtu.be/1eW-T6vtO7k'
      ]
    };
  } else if ((bmi >= 18.5 && bmi <= 24.9) && trimester == 1) {
    return {
      'description':
          'For the sake of safety consult your doctor before performing the exercises!\nHere are some exercises that are generally considered safe and beneficial for pregnant women in their first trimester, particularly those who are underweight: \n Prenatal Yoga: Focus on gentle stretches and poses that improve balance and flexibility.\nSwimming: Low-impact exercise that is easy on joints and helps improve circulation.\nWalking: A simple and effective way to increase cardiovascular fitness and build endurance.\nPerforming those exercises in moderate intensity and duration is advisable',
      'videos': ['https://youtu.be/zmUJWKM98hM', 'https://youtu.be/VyF5J5yXTxI']
    };
  } else if ((bmi >= 18.5 && bmi <= 24.9) && trimester == 2) {
    return {
      'description':
          'For the sake of safety consult your doctor before performing the exercises!\nFocus: Strength, flexibility, and endurance while avoiding exercises that put stress on the abdomen.\nStationary Cycling: Provides a low-impact cardio workout.\nKegel Exercises: Strengthen pelvic floor muscles, which helps during delivery.\nWalking: A brisk 20–30 minutes daily walk helps improve cardiovascular fitness without stressing the joints.\nSwimming or Water Aerobics: Reduces pressure on joints, improves circulation, and supports the growing belly.\n',
      'videos': ['https://youtu.be/TsyvlIsWnKw', 'https://youtu.be/Ilg-gQY2Rxc']
    };
  } else if ((bmi >= 18.5 && bmi <= 24.9) && trimester == 3) {
    return {
      'description':
          'For the sake of safety consult your doctor before performing the exercises!\nFocus: Low-impact exercises that reduce joint strain, improve circulation, and promote mental relaxation.\nPelvic Tilts: Strengthen the back and abdominal muscles.\nStretching:Cat-Cow stretch for spine flexibility and Hip circles while seated on a stability ball.\nDeep Breathing Exercises: Practice diaphragmatic breathing to prepare for labor.\nSo it is recommended to do gentle exercises such as pelvic tilts and deep breathing.',
      'videos': [
        'https://youtu.be/moa4h-rjuNE',
        'https://youtu.be/cGmqz-sko94',
        'https://youtu.be/1eW-T6vtO7k'
      ]
    };
  } else if (bmi >= 25 && trimester == 1) {
    return {
      'description':
          'For the sake of safety consult your doctor before performing the exercises!\nHere are some exercises that are generally considered safe and beneficial for pregnant women in their first trimester, particularly those who are underweight: \n Prenatal Yoga: Focus on gentle stretches and poses that improve balance and flexibility.\nSwimming: Low-impact exercise that is easy on joints and helps improve circulation.\nWalking: A simple and effective way to increase cardiovascular fitness and build endurance.\n Performing those exercises in moderate intensity and relatively long duration is advisable',
      'videos': ['https://youtu.be/zmUJWKM98hM', 'https://youtu.be/VyF5J5yXTxI']
    };
  } else if (bmi >= 25 && trimester == 2) {
    return {
      'description':
          'For the sake of safety consult your doctor before performing the exercises!\nFocus: Strength, flexibility, and endurance while avoiding exercises that put stress on the abdomen.\nStationary Cycling: Provides a low-impact cardio workout.\nKegel Exercises: Strengthen pelvic floor muscles, which helps during delivery.\n Walking: A brisk 20–30 minutes daily walk helps improve cardiovascular fitness without stressing the joints.\nSwimming or Water Aerobics: Reduces pressure on joints, improves circulation, and supports the growing belly.\nPerforming those exercises in moderate intensity and relatively long duration is advisable',
      'videos': ['https://youtu.be/TsyvlIsWnKw', 'https://youtu.be/Ilg-gQY2Rxc']
    };
  } else if (bmi >= 25 && trimester == 3) {
    return {
      'description':
          'For the sake of safety consult your doctor before performing the exercises!\nFocus: Low-impact exercises that reduce joint strain, improve circulation, and promote mental relaxation.\nPelvic Tilts: Strengthen the back and abdominal muscles.\nStretching:Cat-Cow stretch for spine flexibility and Hip circles while seated on a stability ball.\nDeep Breathing Exercises: Practice diaphragmatic breathing to prepare for labor.\nSo it is recommended to do gentle exercises such as pelvic tilts and deep breathing.',
      'videos': [
        'https://youtu.be/moa4h-rjuNE',
        'https://youtu.be/cGmqz-sko94',
        'https://youtu.be/1eW-T6vtO7k'
      ]
    };
  } else {
    return {
      'description': 'Please consult your doctor for personalized exercises.',
      'videos': []
    };
  }
}

List<Widget> getDietRecommendation(double bmi, int trimester) {
  if (bmi < 18.5 && trimester == 1) {
    return [
      const Text(
        'Focus: Support weight gain and ensure adequate intake of calories, protein, and nutrients to promote healthy fetal development.\n',
        style:
            TextStyle(fontSize: 20, height: 1.5, fontWeight: FontWeight.bold),
      ),
      const SizedBox(height: 10),
      Image.asset(
        'assets/76d4c5e8dc919335f1c0104b033ee737.jpg',
        width: 1700,
        height: 600,
        fit: BoxFit.contain,
      ),
      const SizedBox(height: 10),
      Text.rich(
        TextSpan(
          style: TextStyle(fontSize: 17, height: 1.5),
          children: <TextSpan>[
            TextSpan(
                text: 'High-Calorie Nutrient-Dense Foods:\n',
                style: TextStyle(fontWeight: FontWeight.bold)),
            TextSpan(
                text: 'Whole Grains: \n',
                style: TextStyle(fontWeight: FontWeight.bold)),
            TextSpan(
                text: 'Brown rice, quinoa, oats, and whole-wheat bread.\n'),
            TextSpan(
                text: 'Healthy Fats: \n',
                style: TextStyle(fontWeight: FontWeight.bold)),
            TextSpan(
                text:
                    'Avocados, nuts, seeds (flaxseeds, chia seeds), and olive oil.\n'),
            TextSpan(
                text: 'Dairy: \n',
                style: TextStyle(fontWeight: FontWeight.bold)),
            TextSpan(
                text:
                    'Whole milk, full-fat yogurt, and cheese for added calories and calcium.\n'),
            TextSpan(
                text: 'Lean Proteins:\n',
                style: TextStyle(fontWeight: FontWeight.bold)),
            TextSpan(
                text:
                    'Eggs, chicken, turkey, fish (low in mercury), tofu, and legumes (lentils, chickpeas).\n'),
            TextSpan(
                text: 'Complex Carbohydrates:\n',
                style: TextStyle(fontWeight: FontWeight.bold)),
            TextSpan(
                text:
                    'Sweet potatoes, starchy vegetables, and legumes for sustained energy.\n'),
            TextSpan(
                text: 'Vitamin and Mineral Supplements:\n',
                style: TextStyle(fontWeight: FontWeight.bold)),
            TextSpan(
                text:
                    'Ensure adequate folic acid (400–600 mcg daily), iron (27 mg daily), and calcium (1,000 mg daily) through diet or supplements.\n'),
            TextSpan(
                text: 'Frequent Meals:\n',
                style: TextStyle(fontWeight: FontWeight.bold)),
            TextSpan(
                text:
                    'Eat 5–6 small meals throughout the day to increase caloric intake without discomfort.'),
          ],
        ),
      )
    ];
  } else if (bmi < 18.5 && trimester == 2) {
    return [
      const Text(
        'Focus: Support weight gain and ensure adequate intake of calories, protein, and nutrients to promote healthy fetal development.\n',
        style:
            TextStyle(fontSize: 20, height: 1.5, fontWeight: FontWeight.bold),
      ),
      const SizedBox(height: 10),
      Image.asset(
        'assets/76d4c5e8dc919335f1c0104b033ee737.jpg',
        width: 1700,
        height: 600,
        fit: BoxFit.contain,
      ),
      const SizedBox(height: 10),
      Text.rich(
        TextSpan(
          style: TextStyle(fontSize: 17, height: 1.5),
          children: <TextSpan>[
            TextSpan(
                text: 'High-Calorie Nutrient-Dense Foods:\n',
                style: TextStyle(fontWeight: FontWeight.bold)),
            TextSpan(
                text: 'Whole Grains: \n',
                style: TextStyle(fontWeight: FontWeight.bold)),
            TextSpan(
                text: 'Brown rice, quinoa, oats, and whole-wheat bread.\n'),
            TextSpan(
                text: 'Healthy Fats: \n',
                style: TextStyle(fontWeight: FontWeight.bold)),
            TextSpan(
                text:
                    'Avocados, nuts, seeds (flaxseeds, chia seeds), and olive oil.\n'),
            TextSpan(
                text: 'Dairy: \n',
                style: TextStyle(fontWeight: FontWeight.bold)),
            TextSpan(
                text:
                    'Whole milk, full-fat yogurt, and cheese for added calories and calcium.\n'),
            TextSpan(
                text: 'Lean Proteins:\n',
                style: TextStyle(fontWeight: FontWeight.bold)),
            TextSpan(
                text:
                    'Eggs, chicken, turkey, fish (low in mercury), tofu, and legumes (lentils, chickpeas).\n'),
            TextSpan(
                text: 'Complex Carbohydrates:\n',
                style: TextStyle(fontWeight: FontWeight.bold)),
            TextSpan(
                text:
                    'Sweet potatoes, starchy vegetables, and legumes for sustained energy.\n'),
            TextSpan(
                text: 'Vitamin and Mineral Supplements:\n',
                style: TextStyle(fontWeight: FontWeight.bold)),
            TextSpan(
                text:
                    'Ensure adequate folic acid (400–600 mcg daily), iron (27 mg daily), and calcium (1,000 mg daily) through diet or supplements.\n'),
            TextSpan(
                text: 'Frequent Meals:\n',
                style: TextStyle(fontWeight: FontWeight.bold)),
            TextSpan(
                text:
                    'Eat 5–6 small meals throughout the day to increase caloric intake without discomfort.'),
          ],
        ),
      )
    ];
  } else if (bmi < 18.5 && trimester == 3) {
    return [
      const Text(
        'Focus: Support weight gain and ensure adequate intake of calories, protein, and nutrients to promote healthy fetal development.\n',
        style:
            TextStyle(fontSize: 20, height: 1.5, fontWeight: FontWeight.bold),
      ),
      const SizedBox(height: 10),
      Image.asset(
        'assets/76d4c5e8dc919335f1c0104b033ee737.jpg',
        width: 1700,
        height: 600,
        fit: BoxFit.contain,
      ),
      const SizedBox(height: 10),
      Text.rich(
        TextSpan(
          style: TextStyle(fontSize: 17, height: 1.5),
          children: <TextSpan>[
            TextSpan(
                text: 'High-Calorie Nutrient-Dense Foods:\n',
                style: TextStyle(fontWeight: FontWeight.bold)),
            TextSpan(
                text: 'Whole Grains: \n',
                style: TextStyle(fontWeight: FontWeight.bold)),
            TextSpan(
                text: 'Brown rice, quinoa, oats, and whole-wheat bread.\n'),
            TextSpan(
                text: 'Healthy Fats: \n',
                style: TextStyle(fontWeight: FontWeight.bold)),
            TextSpan(
                text:
                    'Avocados, nuts, seeds (flaxseeds, chia seeds), and olive oil.\n'),
            TextSpan(
                text: 'Dairy: \n',
                style: TextStyle(fontWeight: FontWeight.bold)),
            TextSpan(
                text:
                    'Whole milk, full-fat yogurt, and cheese for added calories and calcium.\n'),
            TextSpan(
                text: 'Lean Proteins:\n',
                style: TextStyle(fontWeight: FontWeight.bold)),
            TextSpan(
                text:
                    'Eggs, chicken, turkey, fish (low in mercury), tofu, and legumes (lentils, chickpeas).\n'),
            TextSpan(
                text: 'Complex Carbohydrates:\n',
                style: TextStyle(fontWeight: FontWeight.bold)),
            TextSpan(
                text:
                    'Sweet potatoes, starchy vegetables, and legumes for sustained energy.\n'),
            TextSpan(
                text: 'Vitamin and Mineral Supplements:\n',
                style: TextStyle(fontWeight: FontWeight.bold)),
            TextSpan(
                text:
                    'Ensure adequate folic acid (400–600 mcg daily), iron (27 mg daily), and calcium (1,000 mg daily) through diet or supplements.\n'),
            TextSpan(
                text: 'Frequent Meals:\n',
                style: TextStyle(fontWeight: FontWeight.bold)),
            TextSpan(
                text:
                    'Eat 5–6 small meals throughout the day to increase caloric intake without discomfort.'),
          ],
        ),
      )
    ];
  } else if ((bmi >= 18.5 && bmi < 25) && trimester == 1) {
    return [
      const Text(
        'Focus: Maintain healthy weight gain (approximately 25–35 lbs during pregnancy) and meet increased nutritional needs.\n',
        style:
            TextStyle(fontSize: 20, height: 1.5, fontWeight: FontWeight.bold),
      ),
      const SizedBox(height: 10),
      Image.asset(
        'assets/76d4c5e8dc919335f1c0104b033ee737.jpg',
        width: 1700,
        height: 600,
        fit: BoxFit.contain,
      ),
      const SizedBox(height: 10),
      Text.rich(
        TextSpan(
          style: TextStyle(fontSize: 17, height: 1.5),
          children: <TextSpan>[
            TextSpan(
                text: 'Balanced Macronutrients:\n',
                style: TextStyle(fontWeight: FontWeight.bold)),
            TextSpan(
                text:
                    'Carbohydrates (50-60%): Include whole grains, fruits, vegetables, and legumes.\n'),
            TextSpan(
                text: 'Proteins (20-25%): \n',
                style: TextStyle(fontWeight: FontWeight.bold)),
            TextSpan(text: 'Lean meats, fish, eggs, dairy, tofu, and nuts.\n'),
            TextSpan(
                text: 'Fats (20-30%):\n',
                style: TextStyle(fontWeight: FontWeight.bold)),
            TextSpan(
                text:
                    'Sources include fatty fish (salmon), olive oil, and avocados.\n'),
            TextSpan(
                text: 'Fruits and Vegetables:\n',
                style: TextStyle(fontWeight: FontWeight.bold)),
            TextSpan(
                text:
                    'Aim for 5 servings per day, including dark leafy greens (spinach, kale) for folate and vitamin C.\n'),
            TextSpan(
                text: 'Iron-Rich Foods:\n',
                style: TextStyle(fontWeight: FontWeight.bold)),
            TextSpan(
                text:
                    'Beef, poultry, fortified cereals, and legumes to support increased blood volume.Pair with vitamin C-rich foods (citrus, bell peppers) for better absorption.\n'),
            TextSpan(
                text: 'Calcium Sources:\n',
                style: TextStyle(fontWeight: FontWeight.bold)),
            TextSpan(
                text:
                    'Milk, cheese, yogurt, fortified plant milk, or leafy greens like broccoli.\n'),
            TextSpan(
                text: 'Omega-3 Fatty Acids:\n',
                style: TextStyle(fontWeight: FontWeight.bold)),
            TextSpan(
                text:
                    'Fatty fish (low mercury options like salmon, sardines) or supplements for brain development.\n'),
          ],
        ),
      )
    ];
  } else if ((bmi >= 18.5 && bmi < 25) && trimester == 2) {
    return [
      const Text(
        'Focus: Maintain healthy weight gain (approximately 25–35 lbs during pregnancy) and meet increased nutritional needs.\n',
        style:
            TextStyle(fontSize: 20, height: 1.5, fontWeight: FontWeight.bold),
      ),
      const SizedBox(height: 10),
      Image.asset(
        'assets/76d4c5e8dc919335f1c0104b033ee737.jpg',
        width: 1700,
        height: 600,
        fit: BoxFit.contain,
      ),
      const SizedBox(height: 10),
      Text.rich(
        TextSpan(
          style: TextStyle(fontSize: 17, height: 1.5),
          children: <TextSpan>[
            TextSpan(
                text: 'Balanced Macronutrients:\n',
                style: TextStyle(fontWeight: FontWeight.bold)),
            TextSpan(
                text:
                    'Carbohydrates (50-60%): Include whole grains, fruits, vegetables, and legumes.\n'),
            TextSpan(
                text: 'Proteins (20-25%): \n',
                style: TextStyle(fontWeight: FontWeight.bold)),
            TextSpan(text: 'Lean meats, fish, eggs, dairy, tofu, and nuts.\n'),
            TextSpan(
                text: 'Fats (20-30%):\n',
                style: TextStyle(fontWeight: FontWeight.bold)),
            TextSpan(
                text:
                    'Sources include fatty fish (salmon), olive oil, and avocados.\n'),
            TextSpan(
                text: 'Fruits and Vegetables:\n',
                style: TextStyle(fontWeight: FontWeight.bold)),
            TextSpan(
                text:
                    'Aim for 5 servings per day, including dark leafy greens (spinach, kale) for folate and vitamin C.\n'),
            TextSpan(
                text: 'Iron-Rich Foods:\n',
                style: TextStyle(fontWeight: FontWeight.bold)),
            TextSpan(
                text:
                    'Beef, poultry, fortified cereals, and legumes to support increased blood volume.Pair with vitamin C-rich foods (citrus, bell peppers) for better absorption.\n'),
            TextSpan(
                text: 'Calcium Sources:\n',
                style: TextStyle(fontWeight: FontWeight.bold)),
            TextSpan(
                text:
                    'Milk, cheese, yogurt, fortified plant milk, or leafy greens like broccoli.\n'),
            TextSpan(
                text: 'Omega-3 Fatty Acids:\n',
                style: TextStyle(fontWeight: FontWeight.bold)),
            TextSpan(
                text:
                    'Fatty fish (low mercury options like salmon, sardines) or supplements for brain development.\n'),
          ],
        ),
      )
    ];
  } else if ((bmi >= 18.5 && bmi < 25) && trimester == 3) {
    return [
      const Text(
        'Focus: Maintain healthy weight gain (approximately 25–35 lbs during pregnancy) and meet increased nutritional needs.\n',
        style:
            TextStyle(fontSize: 20, height: 1.5, fontWeight: FontWeight.bold),
      ),
      const SizedBox(height: 10),
      Image.asset(
        'assets/76d4c5e8dc919335f1c0104b033ee737.jpg',
        width: 1700,
        height: 600,
        fit: BoxFit.contain,
      ),
      const SizedBox(height: 10),
      Text.rich(
        TextSpan(
          style: TextStyle(fontSize: 17, height: 1.5),
          children: <TextSpan>[
            TextSpan(
                text: 'Balanced Macronutrients:\n',
                style: TextStyle(fontWeight: FontWeight.bold)),
            TextSpan(
                text:
                    'Carbohydrates (50-60%): Include whole grains, fruits, vegetables, and legumes.\n'),
            TextSpan(
                text: 'Proteins (20-25%): \n',
                style: TextStyle(fontWeight: FontWeight.bold)),
            TextSpan(text: 'Lean meats, fish, eggs, dairy, tofu, and nuts.\n'),
            TextSpan(
                text: 'Fats (20-30%):\n',
                style: TextStyle(fontWeight: FontWeight.bold)),
            TextSpan(
                text:
                    'Sources include fatty fish (salmon), olive oil, and avocados.\n'),
            TextSpan(
                text: 'Fruits and Vegetables:\n',
                style: TextStyle(fontWeight: FontWeight.bold)),
            TextSpan(
                text:
                    'Aim for 5 servings per day, including dark leafy greens (spinach, kale) for folate and vitamin C.\n'),
            TextSpan(
                text: 'Iron-Rich Foods:\n',
                style: TextStyle(fontWeight: FontWeight.bold)),
            TextSpan(
                text:
                    'Beef, poultry, fortified cereals, and legumes to support increased blood volume.Pair with vitamin C-rich foods (citrus, bell peppers) for better absorption.\n'),
            TextSpan(
                text: 'Calcium Sources:\n',
                style: TextStyle(fontWeight: FontWeight.bold)),
            TextSpan(
                text:
                    'Milk, cheese, yogurt, fortified plant milk, or leafy greens like broccoli.\n'),
            TextSpan(
                text: 'Omega-3 Fatty Acids:\n',
                style: TextStyle(fontWeight: FontWeight.bold)),
            TextSpan(
                text:
                    'Fatty fish (low mercury options like salmon, sardines) or supplements for brain development.\n'),
          ],
        ),
      )
    ];
  } else if (bmi >= 25 && trimester == 1) {
    return [
      const Text(
        'Focus: Control weight gain (approximately 15–25 lbs) while ensuring nutrient adequacy and minimizing the risk of gestational diabetes or hypertension.\n',
        style:
            TextStyle(fontSize: 20, height: 1.5, fontWeight: FontWeight.bold),
      ),
      const SizedBox(height: 10),
      Image.asset(
        'assets/76d4c5e8dc919335f1c0104b033ee737.jpg',
        width: 1700,
        height: 600,
        fit: BoxFit.contain,
      ),
      const SizedBox(height: 10),
      Text.rich(
        TextSpan(
          style: TextStyle(fontSize: 17, height: 1.5),
          children: <TextSpan>[
            TextSpan(
                text: 'Low-Calorie Nutrient-Dense Foods:\n',
                style: TextStyle(fontWeight: FontWeight.bold)),
            TextSpan(
                text:
                    'Non-Starchy Vegetables: Broccoli, spinach, zucchini, and cauliflower.\n'),
            TextSpan(
                text: 'Fruits: \n',
                style: TextStyle(fontWeight: FontWeight.bold)),
            TextSpan(
                text:
                    'Focus on low-sugar options like berries, apples, and pears.\n'),
            TextSpan(
                text: 'Lean Proteins:\n',
                style: TextStyle(fontWeight: FontWeight.bold)),
            TextSpan(
                text:
                    'Skinless poultry, fish, eggs, tofu, legumes, and low-fat dairy products.\n'),
            TextSpan(
                text: 'Avoid Processed Foods:\n',
                style: TextStyle(fontWeight: FontWeight.bold)),
            TextSpan(
                text:
                    'Limit high-sugar, high-fat, and high-sodium foods like chips, sugary drinks, pastries, and fast food.\n'),
            TextSpan(
                text: 'Vitamin and Mineral Intake:\n',
                style: TextStyle(fontWeight: FontWeight.bold)),
            TextSpan(
                text:
                    'Prioritize prenatal vitamins with folic acid, iron, calcium, and vitamin D.\n'),
            TextSpan(
                text: 'Omega-3 Fatty Acids:\n',
                style: TextStyle(fontWeight: FontWeight.bold)),
            TextSpan(
                text:
                    'Fatty fish (low mercury options like salmon, sardines) or supplements for brain development.\n'),
          ],
        ),
      )
    ];
  } else if (bmi >= 25 && trimester == 2) {
    return [
      const Text(
        'Focus: Control weight gain (approximately 15–25 lbs) while ensuring nutrient adequacy and minimizing the risk of gestational diabetes or hypertension.\n',
        style:
            TextStyle(fontSize: 20, height: 1.5, fontWeight: FontWeight.bold),
      ),
      const SizedBox(height: 10),
      Image.asset(
        'assets/76d4c5e8dc919335f1c0104b033ee737.jpg',
        width: 1700,
        height: 600,
        fit: BoxFit.contain,
      ),
      const SizedBox(height: 10),
      Text.rich(
        TextSpan(
          style: TextStyle(fontSize: 17, height: 1.5),
          children: <TextSpan>[
            TextSpan(
                text: 'Low-Calorie Nutrient-Dense Foods:\n',
                style: TextStyle(fontWeight: FontWeight.bold)),
            TextSpan(
                text:
                    'Non-Starchy Vegetables: Broccoli, spinach, zucchini, and cauliflower.\n'),
            TextSpan(
                text: 'Fruits: \n',
                style: TextStyle(fontWeight: FontWeight.bold)),
            TextSpan(
                text:
                    'Focus on low-sugar options like berries, apples, and pears.\n'),
            TextSpan(
                text: 'Lean Proteins:\n',
                style: TextStyle(fontWeight: FontWeight.bold)),
            TextSpan(
                text:
                    'Skinless poultry, fish, eggs, tofu, legumes, and low-fat dairy products.\n'),
            TextSpan(
                text: 'Avoid Processed Foods:\n',
                style: TextStyle(fontWeight: FontWeight.bold)),
            TextSpan(
                text:
                    'Limit high-sugar, high-fat, and high-sodium foods like chips, sugary drinks, pastries, and fast food.\n'),
            TextSpan(
                text: 'Vitamin and Mineral Intake:\n',
                style: TextStyle(fontWeight: FontWeight.bold)),
            TextSpan(
                text:
                    'Prioritize prenatal vitamins with folic acid, iron, calcium, and vitamin D.\n'),
            TextSpan(
                text: 'Omega-3 Fatty Acids:\n',
                style: TextStyle(fontWeight: FontWeight.bold)),
            TextSpan(
                text:
                    'Fatty fish (low mercury options like salmon, sardines) or supplements for brain development.\n'),
          ],
        ),
      )
    ];
  } else if (bmi >= 25 && trimester == 3) {
    return [
      const Text(
        'Focus: Control weight gain (approximately 15–25 lbs) while ensuring nutrient adequacy and minimizing the risk of gestational diabetes or hypertension.\n',
        style:
            TextStyle(fontSize: 20, height: 1.5, fontWeight: FontWeight.bold),
      ),
      const SizedBox(height: 10),
      Image.asset(
        'assets/76d4c5e8dc919335f1c0104b033ee737.jpg',
        width: 1700,
        height: 600,
        fit: BoxFit.contain,
      ),
      const SizedBox(height: 10),
      Text.rich(
        TextSpan(
          style: TextStyle(fontSize: 17, height: 1.5),
          children: <TextSpan>[
            TextSpan(
                text: 'Low-Calorie Nutrient-Dense Foods:\n',
                style: TextStyle(fontWeight: FontWeight.bold)),
            TextSpan(
                text:
                    'Non-Starchy Vegetables: Broccoli, spinach, zucchini, and cauliflower.\n'),
            TextSpan(
                text: 'Fruits: \n',
                style: TextStyle(fontWeight: FontWeight.bold)),
            TextSpan(
                text:
                    'Focus on low-sugar options like berries, apples, and pears.\n'),
            TextSpan(
                text: 'Lean Proteins:\n',
                style: TextStyle(fontWeight: FontWeight.bold)),
            TextSpan(
                text:
                    'Skinless poultry, fish, eggs, tofu, legumes, and low-fat dairy products.\n'),
            TextSpan(
                text: 'Avoid Processed Foods:\n',
                style: TextStyle(fontWeight: FontWeight.bold)),
            TextSpan(
                text:
                    'Limit high-sugar, high-fat, and high-sodium foods like chips, sugary drinks, pastries, and fast food.\n'),
            TextSpan(
                text: 'Vitamin and Mineral Intake:\n',
                style: TextStyle(fontWeight: FontWeight.bold)),
            TextSpan(
                text:
                    'Prioritize prenatal vitamins with folic acid, iron, calcium, and vitamin D.\n'),
            TextSpan(
                text: 'Omega-3 Fatty Acids:\n',
                style: TextStyle(fontWeight: FontWeight.bold)),
            TextSpan(
                text:
                    'Fatty fish (low mercury options like salmon, sardines) or supplements for brain development.\n'),
          ],
        ),
      )
    ];
  }
  return [const Text('Consult your doctor for a personalized diet plan.')];
}
