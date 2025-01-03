import 'package:flutter/material.dart';
import 'package:ticket_app/base/res/styles/app_styles.dart';
import 'package:ticket_app/controller/text_expantion_controller.dart';
import '../../base/utils/app_json.dart';
import 'package:get/get.dart';


class HotelDetail extends StatefulWidget {
  const HotelDetail({super.key});

  @override
  State<HotelDetail> createState() => _HotelDetailState();
}

class _HotelDetailState extends State<HotelDetail> {
  late int hotelIndex = 0;

  @override
  void didChangeDependencies() {
    if (ModalRoute.of(context)!.settings.arguments != null) {
      var args = ModalRoute.of(context)!.settings.arguments as Map;
      print("recived index : ${args["index"]}");
      hotelIndex = args["index"];
    } else {
      print("No arguments received");
    }

    super.didChangeDependencies();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            expandedHeight: 300.0,
            floating: false,
            pinned: true,
            leading: Padding(
              padding: const EdgeInsets.all(8.0),
              child: GestureDetector(
                onTap: () {
                  Navigator.pop(context);
                },
                child: Container(
                  decoration: BoxDecoration(
                      shape: BoxShape.circle, color: AppStyles.primaryColor),
                  child: const Icon(
                    Icons.arrow_back,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
            flexibleSpace: FlexibleSpaceBar(
                // title: Text(
                //   hotelList[hotelIndex]["place"],
                //   style: AppStyles.headLineStyle3.copyWith(color: Colors.white),
                // ),
                background: Stack(
              children: [
                Positioned.fill(
                    child: Image.asset(
                  "assets/images/${hotelList[hotelIndex]["image"]}",
                  fit: BoxFit.cover,
                )),
                Positioned(
                    bottom: 20,
                    right: 20,
                    child: Container(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 8, vertical: 4),
                      color: Colors.black.withOpacity(0.3),
                      child: Text(
                        hotelList[hotelIndex]["place"],
                        style: const TextStyle(
                            fontSize: 24,
                            color: Colors.white,
                            shadows: [
                              Shadow(
                                  blurRadius: 10.0,
                                  color: Colors.red,
                                  offset: Offset(2.0, 2.0))
                            ]),
                      ),
                    ))
              ],
            )),
          ),
          SliverList(
              delegate: SliverChildListDelegate([
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: ExpandedTextWidget(
                text:hotelList[hotelIndex]['detail'],
              )
              /*Text(
                  "If your Baseus Bowie H1 headphones are experiencing rapid battery drain, it could be due to several factors including: active noise cancellation being turned on, high volume usage, Bluetooth connection issues, outdated firmware, improper charging habits, or potential battery degradation from age; try turning off ANC, lowering volume, checking your Bluetooth connection, updating firmware if available, ensuring proper charging practices, and considering a potential battery replacement if the issue persists."
              )*/
              ,
            ),
            const Padding(
              padding: EdgeInsets.all(16.0),
              child: Text(
                "More Images",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
            ),
            Container(
              height: 200,
              child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: hotelList[hotelIndex]["images"].length,
                  itemBuilder: (context, imageIndex) {

                    return Container(
                      color: Colors.red,
                        margin: const EdgeInsets.all(8),
                        child: Image.asset("assets/images/${hotelList[hotelIndex]["images"][imageIndex]}"));
                  }),
            ),
                const SizedBox(height: 40)
          ]))
        ],
      ),
    );
  }
}

class ExpandedTextWidget extends StatelessWidget {
   ExpandedTextWidget({super.key, required this.text});

  final String text;
  /** used getX here **/
  TextExpansionController controller = Get.put(TextExpansionController());

  @override
  Widget build(BuildContext context) {

    return Obx((){

      var textWidget = Text(
        text,
        maxLines: controller.isExpanded.value == true ? null : 9,
        overflow:
        controller.isExpanded.value == true ? TextOverflow.visible : TextOverflow.ellipsis,
      );

      return Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          textWidget,
          GestureDetector(
            onTap: () {
              controller.toggeleExpantion();
            },
            child: Text(controller.isExpanded.value == true ? "Less" : "More",
                style:
                AppStyles.textStyle.copyWith(color: AppStyles.primaryColor)),
          )
        ],
      );
    });
  }
}
