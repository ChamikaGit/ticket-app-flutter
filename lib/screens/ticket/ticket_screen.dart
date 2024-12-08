import 'package:barcode_widget/barcode_widget.dart';
import 'package:flutter/material.dart';
import 'package:ticket_app/base/res/media.dart';
import 'package:ticket_app/base/res/styles/app_styles.dart';
import 'package:ticket_app/base/utils/app_json.dart';
import 'package:ticket_app/base/widgets/ticket_view.dart';

import '../../base/widgets/app_column_text_layout.dart';
import '../../base/widgets/app_layoutbuilder_widget.dart';
import '../../base/widgets/text_style_fourth.dart';
import '../../base/widgets/text_style_third.dart';
import '../search/widget/app_ticket_tabs.dart';

class TicketScreen extends StatelessWidget {
  const TicketScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppStyles.bgColor,
      body: ListView(
        padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 20),
        children: [
          const SizedBox(height: 20),
          Text("Tickets", style: AppStyles.headLineStyle1),
          const SizedBox(height: 30),
          const AppTicketTabs(firstTab: "Upcoming", secondTab: "Previous"),
          const SizedBox(height: 20),
          Container(
              padding: const EdgeInsets.only(left: 16),
              child: TicketView(
                ticket: ticketList[0],
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
          Container(margin: const EdgeInsets.symmetric(horizontal: 16),
            child: TicketView(
              ticket: ticketList[0],
              wholeScreen: true,
            ),
          )
        ],
      ),
    );
  }
}
