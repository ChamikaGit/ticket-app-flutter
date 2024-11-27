import 'package:flutter/material.dart';
import 'package:ticket_app/base/widgets/text_style_fourth.dart';
import 'package:ticket_app/base/widgets/text_style_third.dart';

class AppColumnTextLayout extends StatelessWidget {
  final String topText;
  final String bottomText;
  final CrossAxisAlignment alignment;

  const AppColumnTextLayout(
      {super.key, required this.topText, required this.bottomText, this.alignment = CrossAxisAlignment
          .start});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: alignment,
      children: [
        TextStyleThird(text: topText),
        const SizedBox(height: 3),
        TextStyleFourth(text: bottomText)
      ],
    );
  }
}