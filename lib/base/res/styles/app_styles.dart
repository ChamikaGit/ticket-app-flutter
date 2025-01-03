import 'package:flutter/material.dart';

Color primary = const Color(0xFF687daf);

class AppStyles {
  static Color primaryColor = primary;
  static Color textColor = const Color(0xFF3b3b3b);
  static Color bgColor = const Color(0xFFeeedf2);

  static Color ticketOrange = const Color(0xfff37b67);
  static Color ticketBlue = const Color(0xFF526799);
  static Color kakiColor = const Color(0xFFd2bdb6);
  static Color ticketTabColor = const Color(0xFFF4F6fD);
  static Color iconColor = const Color(0xFFBFC2DF);
  static Color blueButtonColor = const Color(0xD91130CE);
  static Color circleColor = const Color(0xFF189999);
  static Color ticketColor = const Color(0xFFFFFFFF);
  static Color profilePremiumBadgeColor = const Color(0xFFFEF4F3);

  static TextStyle textStyle =
  TextStyle(fontSize: 16, fontWeight: FontWeight.w500, color: textColor);//default textstyle

  static TextStyle headLineStyle1 =
      TextStyle(fontSize: 26, fontWeight: FontWeight.bold, color: textColor);

  static TextStyle headLineStyle2 =
      TextStyle(fontSize: 21, fontWeight: FontWeight.bold, color: textColor);

  //not added const because color is not dynamic for this
  static TextStyle headLineStyle3 =
      TextStyle(fontSize: 17, fontWeight: FontWeight.w500, color: textColor);

  static TextStyle headLineStyle4 =
  TextStyle(fontSize: 13, fontWeight: FontWeight.w500, color: Colors.grey.shade500);
}
