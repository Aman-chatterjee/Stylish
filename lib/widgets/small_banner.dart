import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SmallBanner extends StatelessWidget {
  final String title;
  final String description;
  final String iconPath;
  final Color textColor;
  final Color backgroundColor;
  final double borderRadius;
  final Widget actionButton;

  const SmallBanner({
    super.key,
    required this.title,
    required this.description,
    required this.iconPath,
    this.textColor = Colors.white,
    this.backgroundColor = Colors.white,
    this.borderRadius = 12.0,
    required this.actionButton,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15),
      child: Container(
        padding: const EdgeInsets.all(16.0),
        decoration: BoxDecoration(
          color: backgroundColor,
          borderRadius: BorderRadius.circular(borderRadius),
          boxShadow: const [
            BoxShadow(
              color: Colors.black12,
              blurRadius: 5.0,
              offset: Offset(0, 2),
            ),
          ],
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            // Left Section
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: textColor,
                    ),
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                  ),
                  const SizedBox(height: 8.0),
                  Row(
                    children: [
                      SvgPicture.asset(
                        iconPath,
                        color: Colors.white,
                        width: 24,
                        height: 24,
                      ),
                      const SizedBox(width: 8.0),
                      Expanded(
                        child: Text(
                          description,
                          style: TextStyle(
                            fontSize: 14,
                            color: textColor,
                          ),
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            const SizedBox(width: 8.0),
            // Right Section (Action Button)
            actionButton,
          ],
        ),
      ),
    );
  }
}
