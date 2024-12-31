import 'package:fluentui_icons/fluentui_icons.dart';
import 'package:flutter/material.dart';
import 'package:ticket_app/base/res/styles/app_styles.dart';
import 'package:ticket_app/screens/profile/widgets/profile_miles_list.dart';

import '../../base/res/media.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: AppStyles.bgColor,
        body: ListView(
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
          children: [
            const SizedBox(height: 40),
            /**header**/
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  width: 86,
                  height: 86,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      image: const DecorationImage(
                          image: AssetImage(AppMedia.logo))),
                ),
                const SizedBox(width: 10),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Book Tickets",
                      style: AppStyles.headLineStyle2
                          .copyWith(fontWeight: FontWeight.bold),
                    ),
                    const SizedBox(width: 10),
                    Text(
                      "New-york",
                      style: AppStyles.headLineStyle4.copyWith(
                          fontWeight: FontWeight.w500,
                          color: Colors.grey.shade500),
                    ),
                    const SizedBox(width: 8),
                    Container(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 5, vertical: 5),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(100),
                          color: AppStyles.profilePremiumBadgeColor),
                      child: Row(
                        children: [
                          Container(
                            decoration: const BoxDecoration(
                              shape: BoxShape.circle,
                              color: Color(0xFF526799),
                            ),
                            width: 20,
                            height: 20,
                            child: const Icon(
                                FluentSystemIcons.ic_fluent_shield_filled,
                                color: Colors.white,
                                size: 15),
                          ),
                          const SizedBox(width: 5),
                          Text(
                            "Premium Status",
                            style: AppStyles.headLineStyle4.copyWith(
                                fontWeight: FontWeight.bold,
                                color: AppStyles.primaryColor),
                          )
                        ],
                      ),
                    )
                  ],
                ),
                Expanded(child: Container()),
                Text(
                  "Edit",
                  style: AppStyles.headLineStyle4.copyWith(
                      color: AppStyles.primaryColor,
                      fontWeight: FontWeight.w500),
                )
              ],
            ),
            const SizedBox(
              height: 8,
            ),
            /**divider**/
            Divider(
              color: Colors.grey.shade300,
            ),
            const SizedBox(
              height: 20,
            ),
            /**stack box layout**/
            Container(
              height: 90,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: AppStyles.primaryColor),
              child: Stack(children: [
                Positioned(
                  left: -45,
                  top: -45,
                  child: Container(
                    padding: const EdgeInsets.all(30),
                    decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        border:
                            Border.all(width: 14, color: Colors.blueAccent)),
                  ),
                ),
                Positioned(
                  right: -45,
                  top: -45,
                  child: Container(
                    padding: const EdgeInsets.all(30),
                    decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        border:
                            Border.all(width: 14, color: Colors.blueAccent)),
                  ),
                ),
                Positioned(
                    bottom: -75,
                    right: 0,
                    left: 0,
                    child: Container(
                      padding: EdgeInsets.all(35),
                      decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          border: Border.all(
                              width: 18,
                              color: Colors.blueAccent.withOpacity(0.5))),
                    )),
                Container(
                  height: 90,
                  padding: const EdgeInsets.all(15),
                  child: Row(
                    children: [
                      /**Container(
                          decoration: const BoxDecoration(
                          shape: BoxShape.circle,
                          color: Colors.white,
                          ),
                          width: 50,
                          height: 50,
                          child: Icon(FluentSystemIcons.ic_fluent_shield_filled,
                          color: AppStyles.primaryColor, size: 25),
                          )
                       **/

                      /**
                       * In above way also we can create this circle avatar
                       **/

                      CircleAvatar(
                        maxRadius: 25,
                        backgroundColor: Colors.white,
                        child: Icon(
                            FluentSystemIcons
                                .ic_fluent_lightbulb_filament_filled,
                            color: AppStyles.primaryColor,
                            size: 27),
                      ),
                      const SizedBox(width: 10),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text("You'r got a new reward",
                              style: AppStyles.headLineStyle3
                                  .copyWith(color: Colors.white)),
                          const SizedBox(
                            height: 2,
                          ),
                          Text("You have 95 flights in a year",
                              style: AppStyles.headLineStyle4.copyWith(
                                  color: Colors.white.withOpacity(0.5),
                                  fontWeight: FontWeight.w300))
                        ],
                      )
                    ],
                  ),
                ),
              ]),
            ),
            const SizedBox(
              height: 20,
            ),
            Text("Accumulated miles", style: AppStyles.headLineStyle3),
            /**Container for show miles**/
            const SizedBox(
              height: 10,
            ),
            /** Accumulated miles count view**/
            Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.grey.withOpacity(0.1)),
              height: 90,
              child: Center(
                  child: Text("192802",
                      style: AppStyles.headLineStyle1.copyWith(fontSize: 30))),
            ),
            const SizedBox(
              height: 20,
            ),
            /** Miles accrued two text view**/
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Miles accrued",
                  style: AppStyles.headLineStyle3.copyWith(color: Colors.grey),
                ),
                Text(
                  "11 june 2024",
                  style: AppStyles.headLineStyle3.copyWith(color: Colors.grey),
                )
              ],
            ),
            const SizedBox(
              height: 5,
            ),
            Divider(
              color: Colors.grey.shade300,
            ),
            const SizedBox(
              height: 20,
            ),
            /** profile miles list item**/

            const ProfileMilesListItem(),
            const ProfileMilesListItem(),
            const ProfileMilesListItem(),
            const ProfileMilesListItem(),
            const SizedBox(
              height: 20,
            ),
            /** How to get more miles button added**/
            InkWell(
              onTap: (){
                print("More miles item clicked");
              },
              child: SizedBox(
                height: 25,
                child: Center(
                  child: Text(
                    "How to get more miles",
                    style: AppStyles.headLineStyle3
                        .copyWith(color: AppStyles.primaryColor,fontWeight: FontWeight.w500),
                  ),
                ),
              ),
            )
          ],
        ));
  }
}
