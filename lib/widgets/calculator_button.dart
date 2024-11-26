import 'package:flutter/material.dart';

class CalculatorButton extends StatelessWidget {
  final String text;
  final VoidCallback onTap;

  CalculatorButton({required this.text, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        margin: const EdgeInsets.all(8),
        decoration: BoxDecoration(
          color: isOperator(text) ? Colors.orange : Colors.grey[200],
          borderRadius: BorderRadius.circular(10),
        ),
        child: Center(
          child: Text(
            text,
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
              color: isOperator(text) ? Colors.white : Colors.black,
            ),
          ),
        ),
      ),
    );
  }

  bool isOperator(String value) {
    return ['/', '*', '-', '+', '='].contains(value);
  }
}
