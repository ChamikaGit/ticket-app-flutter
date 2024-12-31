import 'package:flutter/material.dart';

import '../../../base/res/styles/app_styles.dart';

class ProfileMilesListItem extends StatelessWidget {
  const ProfileMilesListItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 5),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "23 042",
                style: AppStyles.headLineStyle4.copyWith(color: Colors.black),
              ),
              const SizedBox(height: 5,),
              Text(
                "23 042",
                style: AppStyles.headLineStyle4.copyWith(fontSize: 11,color: Colors.grey),
              )
            ],
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Text(
                "Airline Co",
                style: AppStyles.headLineStyle4.copyWith(color: Colors.black),
              ),
              const SizedBox(height: 5,),
              Text(
                "Received from",
                style: AppStyles.headLineStyle4.copyWith(fontSize: 11,color: Colors.grey),
              )
            ],
          ),
        ],
      ),
    );
  }
}
