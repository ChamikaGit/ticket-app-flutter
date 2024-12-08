import 'package:flutter/material.dart';
import 'package:ticket_app/base/res/styles/app_styles.dart';

class TicketScreen extends StatelessWidget {
  const TicketScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        padding: const EdgeInsets.symmetric(vertical: 20,horizontal: 20),
        children: [
          const SizedBox(height: 40),
          Text("Tickets",style: AppStyles.headLineStyle1),

        ],
      ),
    );
  }
}
