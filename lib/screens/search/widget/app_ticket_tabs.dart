import 'package:flutter/material.dart';
import 'package:ticket_app/base/res/styles/app_styles.dart';

class AppTicketTabs extends StatelessWidget {
  const AppTicketTabs({super.key, required this.firstTab, required this.secondTab});

  final String firstTab;
  final String secondTab;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(50),
          color: AppStyles.ticketTabColor),
      child: Row(
        children: [
          AppTabs(
            tabTexts:firstTab,
            tabBorder: false,
            tabColor: true,
          ),
          AppTabs(
            tabTexts: secondTab,
            tabBorder: true,
            tabColor: false,
          )
        ],
      ),
    );
  }
}

class AppTabs extends StatelessWidget {
  final String tabTexts;
  final bool tabBorder;
  final bool tabColor;

  const AppTabs(
      {super.key,
      this.tabTexts = "",
      this.tabBorder = false,
      this.tabColor = false});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Container(
        decoration: BoxDecoration(
            borderRadius: tabBorder == false
                ? const BorderRadius.horizontal(left: Radius.circular(50))
                : const BorderRadius.horizontal(right: Radius.circular(50)),
            color: tabColor== true?Colors.white:Colors.transparent),
        width: size.width * 0.44,
        padding: const EdgeInsets.symmetric(vertical: 10),
        child: Center(child: Text(tabTexts)));
  }
}
