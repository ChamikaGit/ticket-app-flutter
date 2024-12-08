import 'package:flutter/material.dart';
import 'package:ticket_app/base/res/styles/app_styles.dart';

class AppTextIcon extends StatelessWidget {
  const AppTextIcon({super.key, this.appText = "", required this.icon});

  final String appText;
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 12),
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),
        color: Colors.white,
      ),
      child:  Row(
        children: [
          Icon(
            icon,
            color: AppStyles.iconColor,
          ),
          const SizedBox(width: 5),
          Text(appText, style: AppStyles.headLineStyle4),
        ],
      ),
    );
  }
}
