import 'package:flutter/material.dart';
import 'package:food_delivery/pages/account/account_page.dart';
import 'package:food_delivery/pages/auth/sign_in_page.dart';
import 'package:food_delivery/pages/auth/sign_up_page.dart';
import 'package:food_delivery/pages/cart/cart_history.dart';
import 'package:food_delivery/pages/home/main_food_page.dart';
import 'package:food_delivery/utils/colors.dart';
import 'package:persistent_bottom_nav_bar/persistent_tab_view.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectedIndex = 0;

  //late PersistentTabController _controller;

  List pages = [
    MainFoodPage(),
    Container(child: Text("History page"),),
    CartHistory(),
    AccountPage(),
  ];

  void onTapNav(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  // @override
  // void initState() {
  //   _controller = PersistentTabController(initialIndex: 0);
  //   super.initState();
  // }

  // List<Widget> _buildScreens() {
  //   return [
  //      MainFoodPage(),
  //     Container(child: Center(child: Text("Next page"))),
  //     Container(child: Center(child: Text("Next next page"))),
  //     Container(child: Center(child: Text("Next next next page"))),
  //   ];
  // }

  // List<PersistentBottomNavBarItem> _navBarsItems() {
  //   return [
  //     PersistentBottomNavBarItem(
  //       icon: Icon(Icons.home),
  //       title: ("Home"),
  //       activeColorPrimary: AppColors.mainColor,
  //       inactiveColorPrimary: AppColors.mainColor,
  //     ),
  //     PersistentBottomNavBarItem(
  //       icon: Icon(Icons.archive),
  //       title: ("Archive"),
  //       activeColorPrimary: AppColors.mainColor,
  //       inactiveColorPrimary: AppColors.mainColor,
  //     ),
  //      PersistentBottomNavBarItem(
  //       icon: Icon(Icons.shopping_cart),
  //       title: ("Cart"),
  //       activeColorPrimary: AppColors.mainColor,
  //       inactiveColorPrimary: AppColors.mainColor,
  //     ),
  //     PersistentBottomNavBarItem(
  //       icon: Icon(Icons.person),
  //       title: ("Me"),
  //       activeColorPrimary: AppColors.mainColor,
  //       inactiveColorPrimary: AppColors.mainColor,
  //     ),
  //   ];
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: AppColors.mainColor,
        unselectedItemColor: Colors.amberAccent,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        selectedFontSize: 0.0,
        unselectedFontSize: 0.0,
        onTap: onTapNav,
        currentIndex: _selectedIndex,
        items: const [
          BottomNavigationBarItem(
              icon: Icon(Icons.home_outlined), label: "home"),
          BottomNavigationBarItem(icon: Icon(Icons.archive), label: "history"),
          BottomNavigationBarItem(
              icon: Icon(Icons.shopping_cart), label: "cart"),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: "me"),
        ],
      ),
    );
  }

  // @override
  // Widget build(BuildContext context) {
  //   return PersistentTabView(
  //     context,
  //     controller: _controller,
  //     screens: _buildScreens(),
  //     items: _navBarsItems(),
  //     confineInSafeArea: true,
  //     backgroundColor: Colors.white, // Default is Colors.white.
  //     handleAndroidBackButtonPress: true, // Default is true.
  //     resizeToAvoidBottomInset:
  //         true, // This needs to be true if you want to move up the screen when keyboard appears. Default is true.
  //     stateManagement: true, // Default is true.
  //     hideNavigationBarWhenKeyboardShows:
  //         true, // Recommended to set 'resizeToAvoidBottomInset' as true while using this argument. Default is true.
  //     decoration: NavBarDecoration(
  //       borderRadius: BorderRadius.circular(10.0),
  //       colorBehindNavBar: Colors.white,
  //     ),
  //     popAllScreensOnTapOfSelectedTab: true,
  //     popActionScreens: PopActionScreensType.all,
  //     itemAnimationProperties: ItemAnimationProperties(
  //       // Navigation Bar's items animation properties.
  //       duration: Duration(milliseconds: 200),
  //       curve: Curves.ease,
  //     ),
  //     screenTransitionAnimation: ScreenTransitionAnimation(
  //       // Screen transition animation on change of selected tab.
  //       animateTabTransition: true,
  //       curve: Curves.ease,
  //       duration: Duration(milliseconds: 200),
  //     ),
  //     navBarStyle:
  //         NavBarStyle.style1, // Choose the nav bar style with this property.
  //   );
  // }
}