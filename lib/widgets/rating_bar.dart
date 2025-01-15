import 'package:flutter/material.dart';

class RatingBar extends StatelessWidget {
  final double rating; // The rating value, e.g., 4.5
  final double size; // The size of the stars
  final Color color; // The color of the stars

  const RatingBar({
    super.key,
    required this.rating,
    this.size = 16,
    this.color = const Color(0xFFEDB310),
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: List.generate(5, (index) {
        if (index < rating.floor()) {
          return Icon(Icons.star, color: color, size: size);
        } else if (index < rating) {
          return Icon(Icons.star_half, color: color, size: size);
        } else {
          return Icon(Icons.star_border, color: color, size: size);
        }
      }),
    );
  }
}
