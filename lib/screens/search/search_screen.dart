import 'package:flutter/material.dart';
import 'package:ticket_app/base/res/styles/app_styles.dart';
import 'package:ticket_app/base/widgets/app_double_text.dart';
import 'package:ticket_app/routes/app_routes.dart';
import 'package:ticket_app/screens/search/widget/app_button.dart';
import 'package:ticket_app/screens/search/widget/app_text_icon.dart';
import 'package:ticket_app/screens/search/widget/app_ticket_tabs.dart';
import 'package:ticket_app/screens/search/widget/ticket_promotion.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: AppStyles.bgColor,
      body: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
        children: [
          Text("What are \nyou looking for?", style: AppStyles.headLineStyle2),
          const SizedBox(height: 20),
          const AppTicketTabs(),
          const SizedBox(height: 40),
          const AppTextIcon(
              appText: "Departure Time", icon: Icons.flight_takeoff_rounded),
          const SizedBox(height: 20),
          const AppTextIcon(
              appText: "Arrival Time", icon: Icons.flight_land_rounded),
          const SizedBox(height: 20),
          AppButton(
              buttonText: "Find Tickets",
              buttonColor: AppStyles.blueButtonColor),
          const SizedBox(height: 40),
          AppDoubleText(
              bigText: "UpComing Flights",
              smallText: "View All",
              onTap: () {
                Navigator.pushNamed(context, AppRoutes.allTickets);
              }),
          const SizedBox(height: 20),
          const TicketPromotion()
        ],
      ),
    );
  }
}
