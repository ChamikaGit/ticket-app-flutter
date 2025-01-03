import 'package:fluentui_icons/fluentui_icons.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:get/get.dart';
import 'package:ticket_app/screens/home/home_screen.dart';
import 'package:ticket_app/screens/search/search_screen.dart';
import 'package:ticket_app/screens/ticket/ticket_screen.dart';

import '../controller/bottom_nav_controller.dart';
import '../provider/bottom_nav_provider.dart';
import '../screens/profile/profile_screen.dart';

class BottomNavBar extends ConsumerWidget {
   BottomNavBar({Key? key}) : super(key: key);


   //list can iterated using it's index
  final appScreens = [
    const HomeScreen(),
    const SearchScreen(),
    const TicketScreen(),
    // const Center(child: Text("Profile")),
    const ProfileScreen(),

  ];

  //change our index for bottomNavBar
  @override
  Widget build(BuildContext context,WidgetRef ref) {

    var selectIndex = ref.watch(bottomNavBarNotifierProvider);


    // print("my tab val ${controller.selectIndex.value}");
    print("my tab val $selectIndex");

    return Scaffold(
      // appBar: AppBar(
      //   title: const Center(child: Text("My tickets")),
      // ),
      body: appScreens[selectIndex],
      bottomNavigationBar: BottomNavigationBar(
          currentIndex: selectIndex,
          onTap: ref.watch(bottomNavBarNotifierProvider.notifier).onItemTapped,
          selectedItemColor: Colors.blueGrey,
          unselectedItemColor: const Color(0xFF526400),
          showSelectedLabels: false,
          items: const [
            BottomNavigationBarItem(
                icon: Icon(FluentSystemIcons.ic_fluent_home_regular),
                activeIcon: Icon(FluentSystemIcons.ic_fluent_home_filled),
                label: "Home"),
            BottomNavigationBarItem(
                icon: Icon(FluentSystemIcons.ic_fluent_search_regular),
                activeIcon: Icon(FluentSystemIcons.ic_fluent_search_filled),
                label: "Search"),
            BottomNavigationBarItem(
                icon: Icon(FluentSystemIcons.ic_fluent_ticket_regular),
                activeIcon: Icon(FluentSystemIcons.ic_fluent_ticket_filled),
                label: "Tickets"),
            BottomNavigationBarItem(
                icon: Icon(FluentSystemIcons.ic_fluent_person_accounts_regular),
                activeIcon:
                Icon(FluentSystemIcons.ic_fluent_person_accounts_filled),
                label: "Profile"),
          ]),
    );
  }
}
