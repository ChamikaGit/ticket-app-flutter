import 'package:fluentui_icons/fluentui_icons.dart';
import 'package:flutter/material.dart';
import 'package:ticket_app/base/widgets/app_double_text.dart';
import 'package:ticket_app/base/widgets/ticket_view.dart';
import 'package:ticket_app/screens/home/widgets/hotel.dart';

import '../../base/res/media.dart';
import '../../base/res/styles/app_styles.dart';
import '../../base/utils/app_json.dart';
import '../../routes/app_routes.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: AppStyles.bgColor,
        body: ListView(
          children: [
            const SizedBox(height: 40),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("Good Morning", style: AppStyles.headLineStyle3),
                          const SizedBox(height: 5),
                          Text("Book Tickets", style: AppStyles.headLineStyle1)
                        ],
                      ),
                      Container(
                        width: 50,
                        height: 50,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            image: const DecorationImage(
                                image: AssetImage(AppMedia.logo))),
                      )
                    ],
                  ),
                  const SizedBox(height: 25),
                  Container(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 12, vertical: 12), // this used for padding
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: const Color(0xFFF4F6FD)),
                    child: const Row(
                      children: [
                        Icon(FluentSystemIcons.ic_fluent_search_regular,
                            color: Color(0xFF3b3b3b)),
                        SizedBox(width: 10),
                        Text("Search")
                      ],
                    ),
                  ),
                  const SizedBox(height: 40),
                  AppDoubleText(
                    bigText: "Upcoming Flights",
                    smallText: "ViewAll",
                    onTap: () {
                      // Navigator.push(
                      //   context,
                      //   MaterialPageRoute(builder: (context) => const ViewAllTickets()),
                      // );
                      Navigator.pushNamed(context, AppRoutes.allTickets);
                    },
                  ),
                  const SizedBox(height: 20),
                  SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        children: ticketList
                            .take(3)
                            .toList()
                            .asMap()
                            .entries
                            .map((entry) {
                          //To get the index we can use this way as well
                          // final indexMethod = ticketList.indexOf(singleTicket);

                          final index = entry.key;
                          final singleTicket = entry.value;

                          return GestureDetector(
                              onTap: () {
                                Navigator.pushNamed(
                                  context,
                                  AppRoutes.ticketScreen,
                                  arguments: {
                                    "index": index
                                  }, // Pass the clicked index
                                );
                              },
                              child: TicketView(ticket: singleTicket));
                        }).toList(),
                      )),
                  const SizedBox(height: 20),
                  AppDoubleText(
                    bigText: "Hotels",
                    smallText: "ViewAll",
                    onTap: () {
                      // Navigator.push(
                      //   context,
                      //   MaterialPageRoute(builder: (context) => const ViewAllTickets()),
                      // );
                      // Navigator.pushNamed(context, AppRoutes.allTickets);

                      Navigator.pushNamed(context, AppRoutes.allHotels,
                          arguments: {"index": 0});
                    },
                  ),
                  const SizedBox(height: 20),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    // child: Row(
                    //     children: hotelList.take(3).map((singleHotel) {
                    //       return Hotel(hotel: singleHotel);
                    //     }).toList()
                    // )
                    //changed the below code instead of above code
                    child: Row(
                      children: hotelList
                          .take(3)
                          .toList()
                          .asMap()
                          .entries
                          .map((entry) {
                        final index = entry.key;
                        final singleHotel = entry.value;

                        return GestureDetector(
                          onTap: () {
                            Navigator.pushNamed(
                              context,
                              AppRoutes.hotelDetail,
                              arguments: {
                                "index": index
                              }, // Pass the clicked index
                            );
                          },
                          child: Hotel(hotel: singleHotel),
                        );
                      }).toList(),
                    ),
                  ),
                  const SizedBox(height: 20)
                ],
              ),
            ),
          ],
        ));
  }
}
