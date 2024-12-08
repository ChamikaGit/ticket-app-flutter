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
  final bool? isColor;

  const TicketView(
      {super.key,
      required this.ticket,
      this.wholeScreen = false,
      this.isColor});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context)
        .size; //get the device size it's different for every screen
    print(size.width);

    return SizedBox(
      //reason for use size box instead of container is it's params size is less only have width,height,and child
      width: size.width * 0.85,
      height: 176,
      child: Container(
        margin: EdgeInsets.only(right: wholeScreen == true ? 0 : 16),
        child: Column(
          children: [
            //blue part of the ticket
            Container(
              padding: const EdgeInsets.all(16),
              decoration: BoxDecoration(
                  color: isColor == null
                      ? AppStyles.ticketBlue
                      : AppStyles.ticketColor,
                  borderRadius: const BorderRadius.only(
                      topLeft: Radius.circular(21),
                      topRight: Radius.circular(21))),
              child: Column(
                children: [
                  //top layout
                  Row(
                    // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      TextStyleThird(
                          text: ticket["from"]["code"], isColor: isColor),
                      Expanded(child: Container()),
                      //this widget used for moving items in evenly spacing
                      BigDot(isColor: isColor),
                      //stack widget use for stack the layout of it's children
                      Expanded(
                          child: Stack(
                        children: [
                          SizedBox(
                              height: 24,
                              child: AppLayoutBuilderWidget(randomDiver: 6,isColor: isColor)),
                          Center(
                              child: Transform.rotate(
                            angle: 1.57,
                            //angle is use clockwise 1.5 means 90 degrees
                            child: Icon(
                              Icons.local_airport_rounded,
                              color: isColor==null?Colors.white:AppStyles.textColor,
                            ),
                          ))
                        ],
                      )),
                      BigDot(isColor: isColor),
                      Expanded(child: Container()),
                      TextStyleThird(
                          text: ticket["to"]["code"], isColor: isColor)
                    ],
                  ),
                  const SizedBox(height: 3),
                  //bottom layout
                  Row(
                    // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      SizedBox(
                          width: 100,
                          child: TextStyleFourth(
                              text: ticket["from"]["name"], isColor: isColor)),
                      Expanded(child: Container()),
                      TextStyleFourth(
                          text: ticket["flying_time"], isColor: isColor),
                      Expanded(child: Container()),
                      SizedBox(
                          width: 100,
                          child: TextStyleFourth(
                            text: ticket["to"]["name"],
                            align: TextAlign.end,
                            isColor: isColor,
                          ))
                    ],
                  ),
                ],
              ),
            ),
            //circles and dots
            Container(
              height: 20,
              color: isColor == null
                  ? AppStyles.ticketOrange
                  : AppStyles.ticketColor,
              child:  Row(
                children: [
                  BigCircle(isRight: true),
                  Expanded(
                      child: AppLayoutBuilderWidget(randomDiver: 16, width: 6,isColor: isColor,)),
                  BigCircle(isRight: false),
                ],
              ),
            ),
            //orange part of the ticket
            Container(
              padding: const EdgeInsets.all(16),
              decoration: BoxDecoration(
                  color: isColor == null
                      ? AppStyles.ticketOrange
                      : AppStyles.ticketColor,
                  borderRadius:  BorderRadius.only(
                      bottomLeft: Radius.circular(isColor==null?21:0),
                      bottomRight: Radius.circular(isColor==null?21:0))),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  AppColumnTextLayout(
                      topText: ticket["date"],
                      bottomText: "Date",
                      alignment: CrossAxisAlignment.start,isColor: isColor),
                  AppColumnTextLayout(
                    topText: ticket["departure_time"],
                    bottomText: "Departure Time",
                    alignment: CrossAxisAlignment.center,isColor: isColor,
                  ),
                  AppColumnTextLayout(
                    topText: ticket["number"].toString(),
                    bottomText: "Number",
                    isColor: isColor,
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
