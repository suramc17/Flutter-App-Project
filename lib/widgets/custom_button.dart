import 'package:flutter/material.dart';


class CustomButton extends StatelessWidget {
  final String buttonText; 
  final VoidCallback
      onPressed; 
  final Color color; 
  final Color textColor; 

  
  const CustomButton({super.key, 
    required this.buttonText,
    required this.onPressed,
    this.color = Colors.blue, 
    this.textColor = Colors.white, 
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ButtonStyle(
        backgroundColor: WidgetStateProperty.all(color), 
        padding: WidgetStateProperty.all(const EdgeInsets.symmetric(
            vertical: 14.0, horizontal: 24.0)), 
        shape: WidgetStateProperty.all(RoundedRectangleBorder(
          
          borderRadius: BorderRadius.circular(10.0),
        )),
      ),
      child: Text(
        buttonText,
        style: TextStyle(
          fontSize: 18.0,
          color: textColor, 
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}
