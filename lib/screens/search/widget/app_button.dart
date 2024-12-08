import 'package:flutter/material.dart';
import 'package:ticket_app/base/res/styles/app_styles.dart';

class AppButton extends StatelessWidget {
  const AppButton({super.key, required this.buttonText, required this.buttonColor});

  final String buttonText;
  final Color buttonColor;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 18),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: buttonColor
      ),
      child: Center(
        child: Text(
          buttonText,
          style: AppStyles.headLineStyle4.copyWith(color: Colors.white),
        ),
      ),
    );
  }
}
