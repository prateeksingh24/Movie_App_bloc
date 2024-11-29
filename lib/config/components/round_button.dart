import 'package:flutter/material.dart';
import 'package:movie_app_bloc/config/color/colors.dart';

class RoundButton extends StatelessWidget {
  final String title;
  final VoidCallback onPressed;
  final double height;
  final Color color;
  const RoundButton(
      {super.key,
      required this.title,
      required this.onPressed,
      this.height = 40,
      this.color = AppColors.buttonColor});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPressed,
      child: Container(
        height: height,
        width: 80,
        decoration: BoxDecoration(
          color: color,
        ),
        child: Center(
          child: Text(title),
        ),
      ),
    );
  }
}
