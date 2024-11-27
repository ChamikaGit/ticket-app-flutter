import 'package:flutter/material.dart';
import 'package:ticket_app/base/res/styles/app_styles.dart';
import 'package:ticket_app/base/widgets/text_style_fourth.dart';
import 'package:ticket_app/base/widgets/text_style_third.dart';

import 'app_column_text_layout.dart';
import 'app_layoutbuilder_widget.dart';
import 'big_circle.dart';
import 'big_dot.dart';

class TicketView extends StatelessWidget {
  final Map<String, dynamic> ticket;
  final bool wholeScreen;

  const TicketView({super.key, required this.ticket, this.wholeScreen = false});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context)
        .size; //get the device size it's different for every screen
    print(size.width);

    return SizedBox(
      //reason for use size box instead of container is it's params size is less only have width,height,and child
      width: size.width * 0.85,
      height: 189,
      child: Container(
        margin: EdgeInsets.only(right: wholeScreen == true ? 0 : 16),
        child: Column(
          children: [
            //blue part of the ticket
            Container(
              padding: const EdgeInsets.all(16),
              decoration: BoxDecoration(
                  color: AppStyles.ticketBlue,
                  borderRadius: const BorderRadius.only(
                      topLeft: Radius.circular(21),
                      topRight: Radius.circular(21))),
              child: Column(
                children: [
                  //top layout
                  Row(
                    // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      TextStyleThird(text: ticket["from"]["code"]),
                      Expanded(child: Container()),
                      //this widget used for moving items in evenly spacing
                      const BigDot(),
                      //stack widget use for stack the layout of it's children
                      Expanded(
                          child: Stack(
                        children: [
                          const SizedBox(
                              height: 24,
                              child: AppLayoutBuilderWidget(randomDiver: 6)),
                          Center(
                              child: Transform.rotate(
                            angle: 1.57,
                            //angle is use clockwise 1.5 means 90 degrees
                            child: const Icon(
                              Icons.local_airport_rounded,
                              color: Colors.white,
                            ),
                          ))
                        ],
                      )),
                      const BigDot(),
                      Expanded(child: Container()),
                      TextStyleThird(text: ticket["to"]["code"])
                    ],
                  ),
                  const SizedBox(height: 3),
                  //bottom layout
                  Row(
                    // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      SizedBox(
                          width: 100,
                          child: TextStyleFourth(text: ticket["from"]["name"])),
                      Expanded(child: Container()),
                      TextStyleFourth(text: ticket["flying_time"]),
                      Expanded(child: Container()),
                      SizedBox(
                          width: 100,
                          child: TextStyleFourth(
                            text: ticket["to"]["name"],
                            align: TextAlign.end,
                          ))
                    ],
                  ),
                ],
              ),
            ),
            //circles and dots
            Container(
              height: 20,
              color: AppStyles.ticketOrange,
              child: const Row(
                children: [
                  BigCircle(isRight: true),
                  Expanded(
                      child: AppLayoutBuilderWidget(randomDiver: 16, width: 6)),
                  BigCircle(isRight: false),
                ],
              ),
            ),
            //orange part of the ticket
            Container(
              padding: const EdgeInsets.all(16),
              decoration: BoxDecoration(
                  color: AppStyles.ticketOrange,
                  borderRadius: const BorderRadius.only(
                      bottomLeft: Radius.circular(21),
                      bottomRight: Radius.circular(21))),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  AppColumnTextLayout(
                      topText: ticket["date"],
                      bottomText: "Date",
                      alignment: CrossAxisAlignment.start),
                  AppColumnTextLayout(
                    topText: ticket["departure_time"],
                    bottomText: "Departure Time",
                    alignment: CrossAxisAlignment.center,
                  ),
                  AppColumnTextLayout(
                    topText: ticket["number"].toString(),
                    bottomText: "Number",
                    alignment: CrossAxisAlignment.end,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
