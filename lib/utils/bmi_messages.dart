class BmiMessages {
  static String getBmiMessage(double bmi) {
    if (bmi < 18.5) {
      return "Underweight: You are below the healthy weight range. Please consult your doctor for proper advice.";
    } else if (bmi >= 18.5 && bmi < 24.9) {
      return "Normal: Your BMI is within the healthy range. Keep maintaining a balanced diet and regular exercise.";
    } else if (bmi >= 25 && bmi < 29.9) {
      return "Overweight: You are above the healthy weight range. Consider adjusting your diet and increasing physical activity.";
    } else {
      return "Obese: Your BMI is in the obese range. It's important to consult a healthcare professional for guidance.";
    }
  }
}
