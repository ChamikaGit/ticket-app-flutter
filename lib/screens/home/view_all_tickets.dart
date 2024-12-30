import 'package:flutter/material.dart';
import 'package:ticket_app/base/utils/app_json.dart';
import 'package:ticket_app/base/widgets/ticket_view.dart';

import '../../base/res/styles/app_styles.dart';
import '../../routes/app_routes.dart';

class ViewAllTickets extends StatelessWidget {
  const ViewAllTickets({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppStyles.bgColor,
      appBar: AppBar(
        title: const Text("All Tickets"),
        backgroundColor: AppStyles.bgColor,
      ),
      body: ListView(
        children: [
          SingleChildScrollView(
            child: Container(
              margin: const EdgeInsets.only(top: 20),
              child: Column(
                  children: ticketList
                      .map((singleTicket) => GestureDetector(
                            onTap: () {
                              var index = ticketList.indexOf(singleTicket);
                              print("I'm tapped on the ticket $index");

                              Navigator.pushNamed(
                                  context, AppRoutes.ticketScreen,
                                  arguments: {"index": index});
                              //passed arguments as a map {} like this
                            },
                            child: Container(
                                margin: const EdgeInsets.only(bottom: 10),
                                child: TicketView(
                                  ticket: singleTicket,
                                  wholeScreen: true,
                                )),
                          ))
                      .toList()),
            ),
          ),
        ],
      ),
    );
  }
}
