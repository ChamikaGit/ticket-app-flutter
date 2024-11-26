import 'package:flutter/material.dart';

import '../res/styles/app_styles.dart';

class BigCircle extends StatelessWidget {
  final bool isRight;

  const BigCircle({super.key, required this.isRight});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 20,
      width: 10,
      child: DecoratedBox(
          decoration: BoxDecoration(
              color: AppStyles.bgColor,
              borderRadius: isRight == true //ternary operator
                  ? const BorderRadius.only(
                      topRight: Radius.circular(10),
                      bottomRight: Radius.circular(10))
                  : const BorderRadius.only(
                      topLeft: Radius.circular(10),
                      bottomLeft: Radius.circular(10)))),
    );
  }
}

//this use if conditions instaed of trinary operator
// class BigCircle extends StatelessWidget {
//   final bool isRight;
//
//   const BigCircle({super.key, required this.isRight});
//
//   @override
//   Widget build(BuildContext context) {
//     BorderRadius borderRadius;
//
//     // Use an if-else statement to determine the border radius
//     if (isRight) {
//       borderRadius = const BorderRadius.only(
//         topRight: Radius.circular(10),
//         bottomRight: Radius.circular(10),
//       );
//     } else {
//       borderRadius = const BorderRadius.only(
//         topLeft: Radius.circular(10),
//         bottomLeft: Radius.circular(10),
//       );
//     }
//
//     return SizedBox(
//       height: 20,
//       width: 10,
//       child: DecoratedBox(
//         decoration: BoxDecoration(
//           color: AppStyles.bgColor,
//           borderRadius: borderRadius, // Use the computed borderRadius
//         ),
//       ),
//     );
//   }
// }
