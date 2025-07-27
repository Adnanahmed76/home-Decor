import 'package:flutter/material.dart';


class CustomButton extends StatelessWidget {
  final String label;
  final VoidCallback onPressed;
  final Color backgroundColor;
  const CustomButton({super.key, required this.label, required this.onPressed, required this.backgroundColor});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        height: 60,
        width: double.infinity,
        decoration: BoxDecoration(
          color: backgroundColor,
          borderRadius: BorderRadius.circular(30)
        ),
        child: Center(
          child: Text(label,style: TextStyle(fontSize: 20,color: Colors.black)),),
        ),
      
    );
  }
}