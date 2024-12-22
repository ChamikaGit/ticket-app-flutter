import 'package:barcode_widget/barcode_widget.dart';
import 'package:flutter/material.dart';
import 'package:ticket_app/base/res/media.dart';
import 'package:ticket_app/base/res/styles/app_styles.dart';
import 'package:ticket_app/base/utils/app_json.dart';
import 'package:ticket_app/base/widgets/ticket_view.dart';
import 'package:ticket_app/screens/ticket/widgets/ticket_positioned_circle.dart';

import '../../base/widgets/app_column_text_layout.dart';
import '../../base/widgets/app_layoutbuilder_widget.dart';
import '../../base/widgets/text_style_fourth.dart';
import '../../base/widgets/text_style_third.dart';
import '../search/widget/app_ticket_tabs.dart';

class TicketScreen extends StatefulWidget {
  const TicketScreen({super.key});

  @override
  State<TicketScreen> createState() => _TicketScreenState();
}

class _TicketScreenState extends State<TicketScreen> {

  late int ticketIndex = 0;

  //need to get the data from other screen and grab it in here inside the stateful widget
  @override
  void didChangeDependencies() {
    var args = ModalRoute.of(context)!.settings.arguments as Map;
    print("passed index : ${args["index"]}");
    ticketIndex = args["index"];
    super.didChangeDependencies();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppStyles.bgColor,
      appBar: AppBar(
        title: const Text("Tickets"),
        backgroundColor: AppStyles.bgColor,
      ),
      body: Stack(children: [
        ListView(
          padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 20),
          children: [
            // const SizedBox(height: 20),
            // Text("Tickets", style: AppStyles.headLineStyle1),
            // const SizedBox(height: 30),
            const AppTicketTabs(firstTab: "Upcoming", secondTab: "Previous"),
            const SizedBox(height: 20),
            Container(
                padding: const EdgeInsets.only(left: 16),
                child: TicketView(
                  ticket: ticketList[ticketIndex],
                  isColor: true,
                )),
            const SizedBox(height: 1),
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 16),
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 20),
              color: AppStyles.ticketColor,
              child: Column(
                children: [
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      AppColumnTextLayout(
                          topText: 'Flutter DB',
                          bottomText: "Passenger",
                          alignment: CrossAxisAlignment.start,
                          isColor: true),
                      AppColumnTextLayout(
                        topText: '5221 364869',
                        bottomText: "passport",
                        isColor: true,
                        alignment: CrossAxisAlignment.end,
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  const AppLayoutBuilderWidget(
                    randomDiver: 16,
                    width: 6,
                    isColor: true,
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      AppColumnTextLayout(
                          topText: '24567 6584940',
                          bottomText: "Number of E-ticket",
                          alignment: CrossAxisAlignment.start,
                          isColor: true),
                      AppColumnTextLayout(
                        topText: 'B468988',
                        bottomText: "Booking code",
                        isColor: true,
                        alignment: CrossAxisAlignment.end,
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  const AppLayoutBuilderWidget(
                    randomDiver: 16,
                    width: 6,
                    isColor: true,
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        children: [
                          Row(
                            children: [
                              Image.asset(
                                AppMedia.visaImage,
                                scale: 11,
                              ),
                              const TextStyleThird(
                                  text: " ***2462", isColor: true)
                            ],
                          ),
                          const SizedBox(height: 3),
                          const TextStyleFourth(
                              text: "Payment method", isColor: true)
                        ],
                      ),
                      const AppColumnTextLayout(
                        topText: "\$249.99",
                        bottomText: "Price",
                        isColor: true,
                        alignment: CrossAxisAlignment.end,
                      )
                    ],
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 2,
            ),

            //bottom ticket details section
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 16),
              padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 20),
              decoration: BoxDecoration(
                borderRadius: const BorderRadius.only(
                    bottomRight: Radius.circular(21),
                    bottomLeft: Radius.circular(21)),
                color: AppStyles.ticketColor,
              ),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(15),
                child: Center(
                    child: BarcodeWidget(
                  height: 70,
                  data: "www.chamiapp.com",
                  barcode: Barcode.code128(),
                  drawText: false,
                  color: AppStyles.textColor,
                  width: double.infinity,
                )),
              ),
            ),

            const SizedBox(
              height: 30,
            ),

            //last ticket
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 16),
              child: TicketView(
                ticket: ticketList[ticketIndex],
                wholeScreen: true,
              ),
            )
          ],
        ),
        const TicketPositionedCircle(pos: true,),
        const TicketPositionedCircle(pos: null,),
      ]),
    );
  }
}
