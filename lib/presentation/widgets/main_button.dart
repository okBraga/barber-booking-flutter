import 'package:firebase_login/core/theme/app_text_style.dart';
import 'package:flutter/material.dart';

class MainButton extends StatelessWidget {
  final Function() onTap;
  final String text;
  final String? image;
  final Color? textColor;
  final Color buttonColor;

  const MainButton({
    super.key,
    required this.onTap,
    required this.text,
    this.image,
    this.textColor,
    required this.buttonColor,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15.0),
      child: Material(
        color: Colors.transparent,
        child: InkWell(
          onTap: onTap,
          borderRadius: BorderRadius.circular(20.0),
          child: Ink(
            decoration: BoxDecoration(
              color: buttonColor,
              borderRadius: BorderRadius.circular(20.0),
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withOpacity(0.2),
                  blurRadius: 6.0,
                  offset: const Offset(0, 4),
                ),
              ],
            ),
            height: 70.0,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                if (image != null)
                  Padding(
                    padding: const EdgeInsets.only(right: 10.0),
                    child: Image.asset(
                      'assets/image/$image',
                      height: 25.0,
                      width: 60.0,
                    ),
                  ),
                Text(
                  text,
                  style: textColor != null ? AppTextStyles.displayMedium.copyWith(color: textColor) : AppTextStyles.displayMedium,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
