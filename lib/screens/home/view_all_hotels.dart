import 'package:flutter/material.dart';
import 'package:ticket_app/base/res/styles/app_styles.dart';
import 'package:ticket_app/base/utils/app_json.dart';

import '../../routes/app_routes.dart';

class AllHotelsScreen extends StatelessWidget {
  const AllHotelsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("All Hotels"),
        backgroundColor: AppStyles.bgColor,
      ),
      backgroundColor: AppStyles.bgColor,
      body: Container(
        margin: const EdgeInsets.only(left: 8),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: GridView.builder(
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  crossAxisSpacing: 10.0,
                  mainAxisSpacing: 10.0,
                  childAspectRatio: 1.0),
              itemCount: hotelList.length,
              itemBuilder: (context, index) {
                var singleHotel = hotelList[index];

                return HotelGridView(hotel: singleHotel, index: index);
              }),
        ),
      ),
    );
  }
}

class HotelGridView extends StatelessWidget {
  const HotelGridView({super.key, required this.hotel, required this.index});

  final int index;
  final Map<String, dynamic> hotel;

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return GestureDetector(
      onTap: () {
        print("passed index is : $index");

        Navigator.pushNamed(context, AppRoutes.hotelDetail,
            arguments: {"index": index});
      },
      child: Container(
        padding: const EdgeInsets.all(4.0),
        // width: size.width * 0.6,
        height: 450,
        margin: const EdgeInsets.only(right: 8),
        decoration: BoxDecoration(
            color: AppStyles.ticketBlue,
            borderRadius: BorderRadius.circular(18)),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          //in column crossAxis means horizontal alignment
          children: [
            AspectRatio(
              aspectRatio: 1.2,
              child: Container(
                decoration: BoxDecoration(
                    color: AppStyles.ticketBlue,
                    borderRadius: BorderRadius.circular(18),
                    image: DecorationImage(
                        fit: BoxFit.cover,
                        image: AssetImage("assets/images/${hotel["image"]}"))),
              ),
            ),
            // const SizedBox(height: 5),
            Padding(
              padding: const EdgeInsets.only(left: 15),
              child: Text(hotel["place"],
                  style: AppStyles.headLineStyle4
                      .copyWith(color: AppStyles.kakiColor)),
            ),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 15),
                  child: Text(hotel["destination"],
                      style: AppStyles.headLineStyle4
                          .copyWith(color: Colors.white, fontSize: 11)),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 15),
                  child: Text("\$${hotel["price"]}/night",
                      style: AppStyles.headLineStyle4
                          .copyWith(color: AppStyles.kakiColor, fontSize: 10)),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
