import 'package:flutter/material.dart';
import '../../../base/res/styles/app_styles.dart';

class TicketPositionedCircle extends StatelessWidget {
  const TicketPositionedCircle({super.key, this.pos});

  final bool? pos;

  @override
  Widget build(BuildContext context) {
    return Positioned(
        left: pos==true?24:null,
        right: pos==true?null:24,
        top: 246,
        child: Container(
          padding: const EdgeInsets.all(3),
          decoration: BoxDecoration(
              shape: BoxShape.circle,
              border: Border.all(width: 2, color: AppStyles.textColor)),
          child: CircleAvatar(
            maxRadius: 4,
            backgroundColor: AppStyles.textColor,
          ),
        ));
  }
}
