import 'package:flutter/material.dart';

class RoundedButton extends StatelessWidget {
  final VoidCallback onPressed;
  final String text;
  final double radius;
  final Color borderColor;
  final Color backgroundColor;
  final Color textColor;
  final Color iconColor;

  const RoundedButton({
    super.key,
    required this.onPressed,
    this.text = 'Shop Now',
    this.radius = 20,
    this.borderColor = Colors.white,
    this.backgroundColor = Colors.transparent,
    this.textColor = Colors.white,
    this.iconColor = Colors.white,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        backgroundColor: backgroundColor,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(radius),
          side: BorderSide(color: borderColor, width: 2),
        ),
        elevation: 0,
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 12),
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            text,
            style: TextStyle(
              color: textColor,
              fontSize: 16,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(width: 8),
          Icon(
            Icons.arrow_forward,
            color: iconColor,
          ),
        ],
      ),
    );
  }
}
