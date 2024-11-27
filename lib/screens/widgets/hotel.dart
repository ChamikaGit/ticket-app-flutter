import 'package:flutter/material.dart';
import 'package:ticket_app/base/res/styles/app_styles.dart';

import '../../base/res/media.dart';

class Hotel extends StatelessWidget {
  const Hotel({super.key, required this.hotel});

  final Map<String, dynamic> hotel;

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Container(
      margin: const EdgeInsets.only(right: 16),
      padding: const EdgeInsets.all(8.0),
      width: size.width * 0.6,
      height: 350,
      decoration: BoxDecoration(
          color: AppStyles.ticketBlue, borderRadius: BorderRadius.circular(18)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        //in column crossAxis means horizontal alignment
        children: [
          Container(
            height: 180,
            decoration: BoxDecoration(
                color: AppStyles.ticketBlue,
                borderRadius: BorderRadius.circular(12),
                image: const DecorationImage(
                    fit: BoxFit.cover, image: AssetImage(AppMedia.hotelRoom))),
          ),
          const SizedBox(height: 15),
          Padding(
            padding: const EdgeInsets.only(left: 15),
            child: Text(hotel["place"],
                style: AppStyles.headLineStyle1
                    .copyWith(color: AppStyles.kakiColor)),
          ),
          const SizedBox(height: 5),
          Padding(
            padding: const EdgeInsets.only(left: 15),
            child: Text(hotel["destination"],
                style: AppStyles.headLineStyle3.copyWith(color: Colors.white)),
          ),
          const SizedBox(height: 5),
          Padding(
            padding: const EdgeInsets.only(left: 15),
            child: Text("\$${hotel["price"]}/night",
                style: AppStyles.headLineStyle1
                    .copyWith(color: AppStyles.kakiColor)),
          )
        ],
      ),
    );
  }
}
