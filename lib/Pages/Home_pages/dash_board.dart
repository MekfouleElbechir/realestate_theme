import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:realestate/Common%20class/color.dart';
import 'package:realestate/Common%20class/fontstyle.dart';
import 'package:realestate/Theme/themecontroller.dart';
import 'package:realestate/pages/home_pages/home.dart';

import '../Favorite_pages/favorite_screen.dart';
import '../Profile_pages/profile_screen.dart';
import '../Search_pages/search_screen.dart';

class DashBoardpage extends StatefulWidget {
  const DashBoardpage({Key? key}) : super(key: key);

  @override
  State<DashBoardpage> createState() => _DashBoardpageState();
}

class _DashBoardpageState extends State<DashBoardpage> {
  // Future<bool> _onBackPressed() async {
  //   return await showDialog(
  //       context: context,
  //       builder: (context) => AlertDialog(
  //         title: Text("Real EState".tr,
  //             style: lbold.copyWith(fontSize: 15)),
  //         content: Text(
  //           "are_you_sure_to_exit_from_this_app".tr,
  //           style: lregular.copyWith(fontSize: 12),
  //         ),
  //         actionsAlignment: MainAxisAlignment.end,
  //         actions: [
  //           ElevatedButton(
  //               style: ElevatedButton.styleFrom(
  //                 backgroundColor: RealestateColor.indigo,
  //               ),
  //               onPressed: () {
  //                 Get.back();
  //               },
  //               child: Text(
  //                 "no".tr,
  //                 style: lregular.copyWith(color: RealestateColor.white),
  //               )),
  //           ElevatedButton(
  //               style: ElevatedButton.styleFrom(
  //                 backgroundColor: RealestateColor.indigo,
  //               ),
  //               onPressed: () {
  //                 SystemNavigator.pop();
  //               },
  //               child: Text("yes".tr,
  //                   style: lregular.copyWith(color:RealestateColor.white)))
  //         ],
  //       ));
  // }

  final List<Widget> _screen = [
    const Home(), const SearchScreen(), const FavoriteScreen(),const ProfileScreen()
  ];

  bool isdark = true;
  int selectindex = 0;
  final themedata = Get.find<Themecontroler>();
  final PageController  pageController = PageController();

  void onTappedBar(int value) {
    setState(() {
      selectindex = value;
    });
    // pageController.jumpToPage(value);
  }
  @override
  Widget build(BuildContext context) {
    return   // WillPopScope(
      // onWillPop: _onBackPressed,
      // child:
      GetBuilder<Themecontroler>(builder: (controler) {
        return Scaffold(
          body:
          Row(
            children: [
              if(MediaQuery.of(context).size.width >= 640)
                NavigationRail(
                    backgroundColor: themedata.isdark ? RealestateColor.black: RealestateColor.white,
                    onDestinationSelected: onTappedBar,
                    destinations: [
                      NavigationRailDestination(
                          selectedIcon:  Icon(Icons.home_filled,color: themedata.isdark
                              ? RealestateColor.white
                              : RealestateColor.darkgreen,size: 20,),
                          icon: Icon(Icons.home_outlined,color: themedata.isdark
                              ? RealestateColor.white
                              : RealestateColor.indigo,size: 20,),
                          label: Text("Maison",style: lregular.copyWith(color: themedata.isdark ? RealestateColor.white : RealestateColor.black ),)),
                      NavigationRailDestination(
                          selectedIcon: Icon(Icons.search_sharp,color: themedata.isdark
                              ? RealestateColor.white
                              : RealestateColor.darkgreen,size: 20,),
                          icon: Icon(Icons.search,color: themedata.isdark
                              ? RealestateColor.white
                              : RealestateColor.indigo,size: 20,),
                          label: Text("Recherche",style: lregular.copyWith(color: themedata.isdark ? RealestateColor.white : RealestateColor.black ),)),
                      NavigationRailDestination(
                          selectedIcon: Icon(Icons.shopping_cart_rounded,color: themedata.isdark
                              ? RealestateColor.white
                              : RealestateColor.darkgreen,size: 20,),
                          icon: Icon(Icons.shopping_cart_outlined,color: themedata.isdark
                              ? RealestateColor.white
                              : RealestateColor.indigo,size:20,),
                          label: Text("Préféré",style: lregular.copyWith(color: themedata.isdark? RealestateColor.white : RealestateColor.black ),)),
                      NavigationRailDestination(
                          selectedIcon: Icon(Icons.person,color: themedata.isdark
                              ? RealestateColor.white
                              : RealestateColor.darkgreen,size: 20,),
                          icon: Icon(Icons.person_outline_outlined,color: themedata.isdark
                              ? RealestateColor.white
                              : RealestateColor.indigo,size: 20,),
                          label: Text("Profil",style: lregular.copyWith(color: themedata.isdark ? RealestateColor.white : RealestateColor.black ),)),
                    ],
                    labelType: NavigationRailLabelType.selected,
                    selectedLabelTextStyle: lregular.copyWith(color:RealestateColor.darkgreen),
                    selectedIndex: selectindex),
              Expanded(child: _screen[selectindex],)
              // PageView(
              //   physics: NeverScrollableScrollPhysics(),
              //   controller: pageController,
              //   children: [home(), bookinghistory(), profile()],
              // ),
            ],
          ),

          bottomNavigationBar:  MediaQuery.of(context).size.width < 640  ? BottomNavigationBar(
            backgroundColor:themedata.isdark ? RealestateColor.black : RealestateColor.white,
            items: [
              BottomNavigationBarItem(
                icon: Icon(Icons.home_outlined,color: themedata.isdark
                    ? RealestateColor.white
                    : RealestateColor.indigo,size: 25,),
                backgroundColor: themedata.isdark ? RealestateColor.black : RealestateColor.white,
                label: "",
                activeIcon: Icon(Icons.home_filled,color: themedata.isdark
                    ? RealestateColor.white
                    : RealestateColor.darkgreen,size: 25,),
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.search,color: themedata.isdark
                    ? RealestateColor.white
                    : RealestateColor.indigo,size:25,),
                backgroundColor: themedata.isdark ? RealestateColor.black : RealestateColor.white,
                label: "",
                activeIcon: Icon(Icons.search_sharp,color: themedata.isdark
                    ? RealestateColor.white
                    : RealestateColor.darkgreen,size: 25,),
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.favorite_outline,color: themedata.isdark
                    ? RealestateColor.white
                    : RealestateColor.indigo,size: 25,),
                backgroundColor: themedata.isdark ? RealestateColor.black : RealestateColor.white,
                label: "",
                activeIcon:  Icon(Icons.favorite,color: themedata.isdark
                    ? RealestateColor.white
                    : RealestateColor.darkgreen,size: 25,),
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.person_outline_outlined,color: themedata.isdark
                    ? RealestateColor.white
                    : RealestateColor.indigo,size: 25,),
                backgroundColor: themedata.isdark ? RealestateColor.black : RealestateColor.white,
                label: "",
                activeIcon: Icon(Icons.person,color: themedata.isdark
                    ? RealestateColor.white
                    : RealestateColor.darkgreen,size: 25,),
              ),
            ],
            onTap: onTappedBar,
            currentIndex: selectindex,
            elevation: 0,
            type: BottomNavigationBarType.fixed,
            selectedItemColor: RealestateColor.darkgreen,
            showSelectedLabels: false,
            showUnselectedLabels: false,
          ) : null,
        );
      });
    // );
  }
}
