import 'package:flutter/material.dart';
import 'package:ticket_app/base/res/styles/app_styles.dart';
import 'package:ticket_app/base/widgets/text_style_fourth.dart';
import 'package:ticket_app/base/widgets/text_style_third.dart';

import 'app_column_text_layout.dart';
import 'app_layoutbuilder_widget.dart';
import 'big_circle.dart';
import 'big_dot.dart';

class TicketView extends StatelessWidget {
  const TicketView({super.key});

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
        margin: const EdgeInsets.only(right: 16),
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
                      const TextStyleThird(text: "NYC"),
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
                      const TextStyleThird(text: "LDN")
                    ],
                  ),
                  const SizedBox(height: 3),
                  //bottom layout
                  Row(
                    // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const SizedBox(
                          width: 100, child: TextStyleFourth(text: "New-York")),
                      Expanded(child: Container()),
                      const TextStyleFourth(text: "8H 30M"),
                      Expanded(child: Container()),
                      const SizedBox(
                          width: 100,
                          child: TextStyleFourth(
                            text: "London",
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
              child: const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  AppColumnTextLayout(
                      topText: "1 May",
                      bottomText: "Date",
                      alignment: CrossAxisAlignment.start),
                  AppColumnTextLayout(
                    topText: "08:00 AM",
                    bottomText: "Departure Time",
                    alignment: CrossAxisAlignment.center,
                  ),
                  AppColumnTextLayout(
                    topText: "23",
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
