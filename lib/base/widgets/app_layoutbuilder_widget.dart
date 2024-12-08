import 'package:flutter/material.dart';
import 'package:ticket_app/base/res/styles/app_styles.dart';

class AppLayoutBuilderWidget extends StatelessWidget {
  final int randomDiver;
  final double width;
  final bool? isColor;

  const AppLayoutBuilderWidget(
      {super.key, required this.randomDiver, this.width = 3, this.isColor});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
        builder: (BuildContext context, BoxConstraints constraints) {
      print(
          "${constraints.constrainWidth() / randomDiver.floor()}"); //constrainWidth give the space between 2 widget

      return Flex(
        direction: Axis.horizontal,
        //The Flex widget allows you to control the axis along which the children are placed (horizontal or vertical)
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: List.generate(
            (constraints.constrainWidth() / randomDiver).floor(),
            (index) => SizedBox(
                  width: width,
                  height: 1,
                  child: DecoratedBox(
                      decoration: BoxDecoration(
                          color: isColor == null
                              ? Colors.white
                              : AppStyles.textColor)),
                )),
      );
    });
  }
}
