import 'package:flutter/material.dart';
import '../../../base/res/media.dart';
import '../../../base/res/styles/app_styles.dart';

class TicketPromotion extends StatelessWidget {
  const TicketPromotion({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Container(
          padding:
          const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
          width: size.width * 0.44,
          height: 435,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Colors.white,
              boxShadow: [
                BoxShadow(
                    color: Colors.grey.shade200,
                    blurRadius: 1,
                    spreadRadius: 2),
              ]),
          child: Column(
            children: [
              Container(
                height: 190,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    image: const DecorationImage(
                        fit: BoxFit.cover,
                        image: AssetImage(AppMedia.planImage))),
              ),
              const SizedBox(height: 12),
              Text(
                "20%\ndiscount on the early\nbooking of\nthis flights.\nDon't miss.",
                style: AppStyles.headLineStyle2
                    .copyWith(color: Colors.black),
              )
            ],
          ),
        ),
        Column(
          children: [
            Stack(
              //stack widget is used overlap the widget and if we want to positioned some of child inside
              //the stack widget we can use Positioned widget inside of Stack Widget.
              children: [
                Container(
                  padding: const EdgeInsets.symmetric(
                      vertical: 14, horizontal: 14),
                  width: size.width * 0.44,
                  height: 210,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: const Color(0XFF3AB8B8)),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Discount\nfor survey",
                        style: AppStyles.headLineStyle2.copyWith(
                            fontWeight: FontWeight.bold,
                            color: Colors.white),
                      ),
                      const SizedBox(height: 10),
                      Text(
                        "Take the survey about our service and get discount",
                        style: AppStyles.headLineStyle2.copyWith(
                            fontWeight: FontWeight.w500,
                            color: Colors.white,
                            fontSize: 18),
                      )
                    ],
                  ),
                ),
                Positioned(
                  right: -45,
                  top: -40,
                  child: Container(
                    padding: const EdgeInsets.all(30),
                    decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        border: Border.all(
                            width: 18, color: AppStyles.circleColor)),
                  ),
                )
              ],
            ),
            const SizedBox(height: 15),
            Container(
              padding: const EdgeInsets.symmetric(
                  vertical: 15, horizontal: 15),
              width: size.width * 0.44,
              height: 210,
              decoration: BoxDecoration(
                  border: Border.all(color: Colors.black, width: 4),
                  borderRadius: BorderRadius.circular(10),
                  color: const Color(0xFFEC6545)),
              child: Column(
                children: [
                  Text("Take Love",
                      style: AppStyles.headLineStyle2.copyWith(
                          color: Colors.white)),
                  Text("😍😘💕",
                      style: AppStyles.headLineStyle1.copyWith(
                          color: Colors.white,fontSize: 30))
                ],
              ),
            )
          ],
        )
      ],
    );
  }
}
