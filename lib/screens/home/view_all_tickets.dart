import 'package:flutter/material.dart';
import 'package:ticket_app/base/utils/app_json.dart';
import 'package:ticket_app/base/widgets/ticket_view.dart';

import '../../base/res/styles/app_styles.dart';

class ViewAllTickets extends StatelessWidget {
  const ViewAllTickets({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppStyles.bgColor,
      appBar: AppBar(
        title: const Text("All Tickets"),
      ),
      body: ListView(
        children: [
          SingleChildScrollView(
            child: Container(
              margin: const EdgeInsets.only(top: 20),
              child: Column(
                  children: ticketList
                      .map((singleTicket) => Container(
                          margin: const EdgeInsets.only(bottom: 10),
                          child: TicketView(
                            ticket: singleTicket,
                            wholeScreen: true,
                          )))
                      .toList()),
            ),
          ),
        ],
      ),
    );
  }
}
