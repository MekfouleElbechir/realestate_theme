import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:realestate/Common%20class/color.dart';
import 'package:realestate/Common%20class/fontstyle.dart';
import 'package:realestate/Common%20class/icons.dart';
import 'package:realestate/Pages/Home_Pages/promotion_page.dart';
import 'package:realestate/pages/home_pages/loaction_flow/account_loaction.dart';
import '../../Theme/themecontroller.dart';
import '../../pages/home_pages/Featured_categoty.dart';
import '../../pages/home_pages/Featured_list.dart';
import '../Profile_pages/notification.dart';
import 'Search_result/search_results.dart';
import 'topagent_list.dart';
import 'top_location.dart';
import 'location_detail.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final List<String> posterimage = <String>[
    PngImage.poster1,
    PngImage.poster2,
  ];
  final List<String> postertext = <String>[
    "Famille \nSalle!",
    "Eté \nVacances",
  ];
  final List<String> bloglist = <String>[
    "Tout",
    "Maison",
    "Appartement",
    "Maison",
  ];
  final List<String> features = <String>[
    "Appartement",
    "Villa",
  ];
  final List<String> featuresimage = <String>[
   PngImage.featurimg1,
   PngImage.featurimg2,
  ];
  final List<String> locationimg = <String>[
   PngImage.location1,
   PngImage.location2,
   PngImage.location3,
   PngImage.location4,
  ];
  final List<String> locationname = <String>[
    "TVZ",
    "ARAFATT",
    "LEKSAR",
    "SOKOKK",
  ];
  final List<String> exploreimg = <String>[
    PngImage.explore1,
    PngImage.explore2,
    PngImage.explore3,
    PngImage.explore4,
  ];
  final List<String> explorename = <String>[
    "Mocktar wel deidah Tout",
    "Hel Bechir House",
    "Mohammed House",
    "Center Rim Apartment",
  ];
  final List<String> agentimage = <String>[
    PngImage.estate1,
    PngImage.estate2,
    PngImage.estate3,
    PngImage.estate4,
    PngImage.estate5,
  ];
  final List<String> agentname = <String>[
    "El khalive",
    "Mustapha",
    "Muhamed",
    "AhmedSejad",
    "Chiekha",
  ];
  dynamic size;
 double height = 0.00;
 double width = 0.00;
 int _variationselecationindex = 0;
  int selected = 0;
  final themedata = Get.put(Themecontroler());

  @override
  Widget build(BuildContext context) {
    size = MediaQuery.of(context).size;
    height = size.height;
    width = size.width;
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.symmetric(
                horizontal: width / 36, vertical: height / 36),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    InkWell(
                      highlightColor: RealestateColor.transparent,
                      splashColor: RealestateColor.transparent,
                      onTap: () {
                        _shownottomsheet();
                      },
                      child: Container(
                        height: height / 18,
                        width: width / 2,
                        decoration: BoxDecoration(
                          color: RealestateColor.white,
                          boxShadow: const [
                            BoxShadow(color: RealestateColor.grey, blurRadius: 1)
                          ],
                          borderRadius: BorderRadius.circular(50),
                        ),
                        child: Padding(
                          padding: EdgeInsets.symmetric(horizontal: width / 36),
                          child: Row(
                            children: [
                              Icon(
                                Icons.location_pin,
                                color: RealestateColor.darkgreen,
                                size: height / 56,
                              ),
                              SizedBox(
                                width: width/3.2,
                                child: Text(
                                  "Nouakchott, TVZ",
                                  style: lmedium.copyWith(fontSize: 10,color:RealestateColor.indigo),
                                  maxLines: 1,
                                  overflow: TextOverflow.ellipsis,
                                ),
                              ),
                              const Icon(
                                Icons.arrow_drop_down,
                                size: 20,
                                color: RealestateColor.darkgreen,
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: width / 15,
                    ),
                    InkWell(
                      splashColor: RealestateColor.transparent,
                      highlightColor: RealestateColor.transparent,
                      onTap: () {
                        Navigator.push(context, MaterialPageRoute(builder: (context) {
                          return const NotificationScreen();
                        },));
                      },
                      child: const CircleAvatar(
                        radius: 25,
                        backgroundColor: RealestateColor.lightgreen,
                        child: CircleAvatar(
                          radius: 23,
                          backgroundColor: RealestateColor.white,
                          child: Icon(
                            Icons.notifications_none_sharp,
                            size: 25,
                            color: RealestateColor.black,
                          ),
                        ),
                      ),
                    ),
                    CircleAvatar(
                      backgroundColor: RealestateColor.grey,
                      radius: 25,
                      child: CircleAvatar(
                        radius: 24,
                        backgroundColor: RealestateColor.white,
                        child: CircleAvatar(
                          radius: 22,
                          backgroundImage: AssetImage(PngImage.profile),
                        ),
                      ),
                    )
                  ],
                ),
                SizedBox(
                  height: height / 36,
                ),
                Row(
                  children: [
                    Text(
                      "Hello".tr,
                      style:
                          lmedium.copyWith(fontSize: 25, color: themedata.isdark
                              ? RealestateColor.white
                              : RealestateColor.indigo,),
                    ),
                    Text(
                      "Mekfoule!".tr,
                      style:
                          lbold.copyWith(fontSize: 25, color: themedata.isdark
                              ? RealestateColor.white
                              : RealestateColor.indigo,),
                    ),
                  ],
                ),
                SizedBox(
                  height: height / 120,
                ),
                Row(
                  children: [
                    Text(
                      "commençons à explorer".tr,
                      style:
                          lmedium.copyWith(fontSize: 25, color: themedata.isdark
                              ? RealestateColor.white
                              : RealestateColor.indigo,),
                    )
                  ],
                ),
                SizedBox(
                  height: height / 36,
                ),
                InkWell(
                  splashColor: RealestateColor.transparent,
                  highlightColor: RealestateColor.transparent,
                  onTap: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) {
                      return const SearchResults();
                    },));
                  },
                  child: TextField(
                    style: lmedium.copyWith(fontSize: 12),
                    decoration: InputDecoration(
                        prefixIcon: const Icon(
                          Icons.search,
                          color: RealestateColor.black,
                          size: 20,
                        ),
                        suffixIcon: const Icon(
                          Icons.keyboard_voice_outlined,
                          color: RealestateColor.grey,
                          size: 20,
                        ),
                        filled: true,
                        enabled:false,
                        hintStyle: lmedium.copyWith(fontSize: 12,color: RealestateColor.grey),
                        hintText: "Rechercher une maison, un appartement, etc.",
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20),
                            borderSide: BorderSide.none),
                        fillColor: RealestateColor.textfield),
                  ),
                ),
                SizedBox(
                  height: height / 34,
                ),
                SizedBox(
                  height: height / 20,
                  child: Padding(
                    padding: EdgeInsets.only(left: width / 36),
                    child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: bloglist.length,
                      itemBuilder: (context, index) {
                        return InkWell(
                          highlightColor: RealestateColor.transparent,
                          splashColor: RealestateColor.transparent,
                          onTap: () {
                            setState(() {
                              _variationselecationindex = index;
                            });
                            },
                          child:  Container(
                                // width: width/7,
                                margin: EdgeInsets.only(right: width / 36),
                                decoration: BoxDecoration(
                                    color: _variationselecationindex == index
                                        ? RealestateColor.darkgreen
                                        : RealestateColor.textfield,
                                    borderRadius: BorderRadius.circular(20)),
                                child: Padding(
                                  padding: EdgeInsets.symmetric(
                                      horizontal: width / 15),
                                  child: Center(
                                      child: Text(
                                    bloglist[index].toString(),
                                    style:  _variationselecationindex == index
                                        ? lbold.copyWith(fontSize: 10,color: RealestateColor.white)
                                        : lmedium.copyWith(fontSize: 10,color: RealestateColor.indigo),
                                  )),
                                ),
                              ),
                        );
                      },
                    ),
                  ),
                ),
                SizedBox(
                  height: height / 34,
                ),
                SizedBox(
                  height: height / 4.2,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: posterimage.length,
                    itemBuilder: (context, index) {
                      return InkWell(
                        highlightColor: RealestateColor.transparent,
                        splashColor: RealestateColor.transparent,
                        onTap: () {
                          Navigator.push(context, MaterialPageRoute(
                            builder: (context) {
                              return const HomePromotion();
                            },
                          ));
                        },
                        child: Container(
                          margin: EdgeInsets.only(right: width / 24),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(50)),
                          child: Column(children: [
                            Stack(children: [
                              ClipRRect(
                                borderRadius: BorderRadius.circular(25),
                                child: Image.asset(
                                  posterimage[index].toString(),
                                  width: width / 1.5,
                                  height: height / 4.3,
                                  fit: BoxFit.fill,
                                ),
                              ),
                              Positioned(
                                  top: 25,
                                  left: 15.0,
                                  child: Text(
                                    postertext[index].toString(),
                                    style: lbold.copyWith(
                                        fontSize: 20, color: RealestateColor.white),
                                  )),
                              Positioned(
                                  top: 80,
                                  right: 3.0,
                                  left: 15.0,
                                  child: Text(
                                    "",
                                    style: lregular.copyWith(
                                        fontSize: 12, color: RealestateColor.white),
                                  )),
                              Positioned(
                                  bottom: 0.01,
                                  child: Container(
                                      height: height / 15,
                                      width: width / 4,
                                      decoration: const BoxDecoration(
                                          borderRadius:  BorderRadius.only(
                                              topRight: Radius.circular(25)),
                                          color: RealestateColor.darkgreen),
                                      child: const Icon(
                                        Icons.arrow_right_alt_rounded,
                                        color: RealestateColor.white,
                                        size: 30,
                                      )
                                      // SvgPicture.asset(SvgIcons.right_arrow,color: color.white,height: height/34,),
                                      )),
                            ]),
                          ]),
                        ),
                      );
                    },
                  ),
                ),
                SizedBox(
                  height: height / 34,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Domaines en vedette".tr,
                      style: lbold.copyWith(fontSize: 18, color: themedata.isdark
                          ? RealestateColor.white
                          : RealestateColor.indigo,),
                    ),
                    InkWell(
                      splashColor: RealestateColor.transparent,
                      highlightColor: RealestateColor.transparent,
                      onTap: () {
                        Navigator.push(context, MaterialPageRoute(builder: (context) {
                          return const FeaturedList();
                        },));
                      },
                      child: Text(
                        "Voir tout".tr,
                        style: lsemibold.copyWith(
                            fontSize: 10,color: themedata.isdark
                            ? RealestateColor.white
                            : RealestateColor.darkgreen,),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: height / 46,
                ),
                SizedBox(
                  height: height / 4.2,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: featuresimage.length,
                    itemBuilder: (context, index) {
                      return InkWell(
                        highlightColor: RealestateColor.transparent,
                        splashColor: RealestateColor.transparent,
                        onTap: () {
                          Navigator.push(context, MaterialPageRoute(
                            builder: (context) {
                              return const FeaturedCategory();
                            },
                          ));
                        },
                        child: Container(
                          width: width / 1.3,
                          height: height / 4.3,
                          margin: EdgeInsets.only(right: width / 24),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(25),
                            color: RealestateColor.textfield,
                          ),
                          child: Padding(
                            padding: EdgeInsets.symmetric(
                                horizontal: width / 46, vertical: height / 66),
                            child: Row(
                              children: [
                                Stack(children: [
                                  ClipRRect(
                                    borderRadius: BorderRadius.circular(25),
                                    child: Image.asset(
                                      featuresimage[index].toString(),
                                      width: width / 2.7,
                                      height: height / 4.3,
                                      fit: BoxFit.fitHeight,
                                    ),
                                  ),
                                  Positioned(
                                      top: 5,
                                      left: 15,
                                      child: Container(
                                          height: height / 25,
                                          width: width / 12,
                                          decoration: BoxDecoration(
                                              borderRadius:
                                                  BorderRadius.circular(50),
                                              color: RealestateColor.lightgreen),
                                          child: const Center(
                                              child: Icon(
                                            Icons.favorite,
                                            color: RealestateColor.white,
                                            size: 15,
                                          ))
                                          // SvgPicture.asset(SvgIcons.right_arrow,color: color.white,height: height/34,),
                                          )),
                                  Positioned(
                                      bottom: 10,
                                      left: 10,
                                      child: Container(
                                          height: height / 25,
                                          decoration: BoxDecoration(
                                              borderRadius:
                                                  BorderRadius.circular(10),
                                              color: RealestateColor.darkgreen),
                                          child: Center(
                                              child: Padding(
                                            padding: EdgeInsets.symmetric(
                                                horizontal: width / 34),
                                            child: Text(
                                              features[index].toString(),
                                              style: lmedium.copyWith(
                                                  fontSize: 9,
                                                  color: RealestateColor.white),
                                            ),
                                          ))
                                          // SvgPicture.asset(SvgIcons.right_arrow,color: color.white,height: height/34,),
                                          )),
                                ]),
                                SizedBox(
                                  width: width / 46,
                                ),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    SizedBox(
                                        width: width / 3,
                                        height: height / 18,
                                        child: Text(
                                          "center Rim Appartement",
                                          style: lbold.copyWith(
                                              fontSize: 12,
                                              color: RealestateColor.indigo),
                                          maxLines: 2,
                                        )),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      children: [
                                        const Icon(
                                          Icons.star_rounded,
                                          color: RealestateColor.yellow,
                                          size: 15,
                                        ),
                                        SizedBox(
                                          width: width / 46,
                                        ),
                                        Text(
                                          "4.9",
                                          style: lbold.copyWith(fontSize: 10,color: RealestateColor.grey),
                                        ),
                                      ],
                                    ),
                                    SizedBox(
                                      width: width / 3,
                                      height: height / 14,
                                      child: Row(
                                        children: [
                                          Icon(
                                            Icons.location_pin,
                                            color: RealestateColor.darkgreen,
                                            size: height / 46,
                                          ),
                                          Center(
                                              child: Text(
                                            "Nouakchott, Arafatt",
                                            style:
                                                lregular.copyWith(fontSize: 8,color: RealestateColor.black),
                                            maxLines: 3,
                                          ))
                                        ],
                                      ),
                                    ),
                                    Row(
                                      children: [
                                        Text(
                                          "\MRU 456",
                                          style: lsemibold.copyWith(
                                              color: RealestateColor.indigo, fontSize: 16),
                                        ),
                                        Text(
                                          "/Mois",
                                          style: lmedium.copyWith(
                                              color: RealestateColor.indigo, fontSize: 8),
                                        ),
                                      ],
                                    )
                                  ],
                                )
                              ],
                            ),
                          ),
                        ),
                      );
                    },
                  ),
                ),
                SizedBox(
                  height: height / 34,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "TopLocalisation".tr,
                      style: lbold.copyWith(fontSize: 18, color: themedata.isdark
                          ? RealestateColor.white
                          : RealestateColor.indigo,),
                    ),
                    InkWell(
                      splashColor: RealestateColor.transparent,
                      highlightColor: RealestateColor.transparent,
                      onTap: () {
                        Navigator.push(context, MaterialPageRoute(builder: (context) {
                          return const TopLocation();
                        },));
                      },
                      child: Text(
                        "Voir tout".tr,
                        style: lsemibold.copyWith(
                            fontSize: 10,color: themedata.isdark
                            ? RealestateColor.white
                            : RealestateColor.darkgreen,),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: height / 46,
                ),
                SizedBox(
                  height: height / 12,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: locationimg.length,
                    itemBuilder: (context, index) {
                      return InkWell(
                        splashColor: RealestateColor.transparent,
                        highlightColor: RealestateColor.transparent,
                        onTap: () {
                          Navigator.push(context, MaterialPageRoute(builder: (context) {
                            return const LocationDetail();
                          },));
                        },
                        child: Container(
                          // width: width/7,
                          margin: EdgeInsets.only(right: width / 36),
                          decoration: BoxDecoration(
                              color: RealestateColor.textfield,
                              borderRadius: BorderRadius.circular(50)),
                          child: Padding(
                            padding: EdgeInsets.symmetric(horizontal: width / 34),
                            child: Row(
                              children: [
                                CircleAvatar(
                                  // backgroundImage: AssetImage(locationimg[index].toString()),
                                  radius: 25,
                                  child: Image.asset(locationimg[index].toString()),
                                ),
                                SizedBox(
                                  width: width / 34,
                                ),
                                Center(
                                    child: Text(
                                  locationname[index].toString(),
                                  style: lmedium.copyWith(
                                      fontSize: 10, color: RealestateColor.indigo),
                                )),
                              ],
                            ),
                          ),
                        ),
                      );
                    },
                  ),
                ),
                SizedBox(
                  height: height / 36,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Meilleur agent immobilier".tr,
                      style: lbold.copyWith(fontSize: 18, color: themedata.isdark
                          ? RealestateColor.white
                          : RealestateColor.indigo,),
                    ),
                    Text(
                      "explorer".tr,
                      style: lsemibold.copyWith(
                          fontSize: 10, color: themedata.isdark
                          ? RealestateColor.white
                          : RealestateColor.darkgreen,),
                    ),
                  ],
                ),
                SizedBox(
                  height: height / 46,
                ),
                SizedBox(
                  height: height / 7,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: agentimage.length,
                    itemBuilder: (context, index) {
                      return InkWell(
                        splashColor: RealestateColor.transparent,
                        highlightColor: RealestateColor.transparent,
                        onTap: () {
                          Navigator.push(context, MaterialPageRoute(builder: (context) {
                            return const TopAgentList();
                          },));
                        },
                        child: Container(
                          // width: width/7,
                          margin: EdgeInsets.only(right: width / 56),
                          child: Padding(
                            padding: EdgeInsets.symmetric(horizontal: width / 34),
                            child: Column(
                              children: [
                                CircleAvatar(
                                  radius: 35,
                                  child: Image.asset(agentimage[index].toString()),
                                ),
                                SizedBox(
                                  height: height / 86,
                                ),
                                Center(
                                    child: Text(
                                  agentname[index].toString(),
                                  style: lmedium.copyWith(
                                      fontSize: 10, color: themedata.isdark
                                      ? RealestateColor.white
                                      : RealestateColor.indigo,),
                                )),
                              ],
                            ),
                          ),
                        ),
                      );
                    },
                  ),
                ),
                SizedBox(
                  height: height / 36,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Explorez les domaines à proximité".tr,
                      style: lbold.copyWith(fontSize: 18, color: themedata.isdark
                          ? RealestateColor.white
                          : RealestateColor.indigo,),
                    ),
                  ],
                ),
                SizedBox(
                  height: height / 36,
                ),
                GridView.builder(
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  itemCount: exploreimg.length,
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      childAspectRatio:  MediaQuery.of(context).size.aspectRatio * 3 / 2.2,
                      crossAxisSpacing: 10,
                      mainAxisSpacing: 10),
                  itemBuilder: (context, index) {
                    return Container(
                      decoration: const BoxDecoration(
                        borderRadius:  BorderRadius.all(Radius.circular(25)),
                        color: RealestateColor.textfield,
                      ),
                      child: Padding(
                        padding: EdgeInsets.symmetric(
                            horizontal: width / 46, vertical: height / 66),
                        child: Column(
                          children: [
                            Stack(children: [
                              ClipRRect(
                                borderRadius: BorderRadius.circular(25),
                                child: Image.asset(
                                  exploreimg[index].toString(),
                                  width: width / 2,
                                  height: height / 4.3,
                                  fit: BoxFit.fitHeight,
                                ),
                              ),
                              Positioned(
                                  top: 10,
                                  right: 10,
                                  child: Container(
                                      height: height / 25,
                                      width: width / 12,
                                      decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(50),
                                          color: RealestateColor.textfield),
                                      child: const Center(
                                          child: Icon(
                                        Icons.favorite_border,
                                        color: RealestateColor.radial,
                                        size: 15,
                                      ))
                                      // SvgPicture.asset(SvgIcons.right_arrow,color: color.white,height: height/34,),
                                      )),
                              Positioned(
                                  bottom: 10,
                                  right: 10,
                                  child: Container(
                                      height: height / 25,
                                      decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(10),
                                          color: RealestateColor.darkgreen),
                                      child: Center(
                                          child: Padding(
                                        padding: EdgeInsets.symmetric(
                                            horizontal: width / 34),
                                        child: Row(
                                          children: [
                                            Text(
                                              "\MRU 220",
                                              style: lsemibold.copyWith(
                                                  fontSize: 12, color: RealestateColor.white),
                                            ),
                                            Text(
                                              "/Mois",
                                              style: lregular.copyWith(
                                                  fontSize: 6, color: RealestateColor.white),
                                            ),
                                          ],
                                        ),
                                      ))
                                      // SvgPicture.asset(SvgIcons.right_arrow,color: color.white,height: height/34,),
                                      )),
                            ]),
                            SizedBox(
                              height: height / 150,
                            ),
                            SizedBox(
                                width: width / 2,
                                child: Text(
                                  explorename[index].toString(),
                                  style: lbold.copyWith(
                                      fontSize: 12, color: RealestateColor.indigo),
                                  maxLines: 2,
                                )),
                            const Spacer(),
                            Row(
                              children: [
                                const Icon(
                                  Icons.star_rounded,
                                  color: RealestateColor.yellow,
                                  size: 15,
                                ),
                                SizedBox(
                                  width: width / 110,
                                ),
                                Text(
                                  "4.9",
                                  style: lbold.copyWith(fontSize: 10,color: RealestateColor.grey),
                                ),
                                SizedBox(
                                  width: width / 46,
                                ),
                                Icon(
                                  Icons.location_pin,
                                  color: RealestateColor.darkgreen,
                                  size: height / 46,
                                ),
                                Text(
                                  "Nouakchott, Sokokk",
                                  style: lregular.copyWith(fontSize: 8,color: RealestateColor.black),
                                  maxLines: 3,
                                )
                              ],
                            )
                          ],
                        ),
                      ),
                    );
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  _shownottomsheet() {
    showModalBottomSheet(
      backgroundColor: RealestateColor.transparent,
      context: context,
      builder: (BuildContext context) {
        return SingleChildScrollView(
          child: StatefulBuilder(
            builder: (BuildContext context, StateSetter setState) {
              return Container(
                height: height/2,
                decoration: const BoxDecoration(
                    borderRadius:  BorderRadius.only(topRight:Radius.circular(50),topLeft: Radius.circular(50)),
                    color: RealestateColor.white),
                child: Padding(
                  padding: EdgeInsets.symmetric(
                      horizontal: width / 26, vertical: height / 66),
                  child: Column(
                    children: [
                      const Divider(
                        indent: 130,
                        thickness: 1.5,
                        color: RealestateColor.grey,
                        endIndent: 130,
                      ),
                      SizedBox(
                        height: height / 36,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text("Sélectionnez localisation".tr,
                              style: lbold.copyWith(
                                  fontSize: 18, color: RealestateColor.indigo)),
                          InkWell(
                            splashColor: RealestateColor.transparent,
                            highlightColor: RealestateColor.transparent,
                            onTap: () {
                              Navigator.pop(context);
                            },
                            child: Container(
                              width: width / 5,
                              height: height / 18,
                              margin: EdgeInsets.only(right: width / 36),
                              decoration: BoxDecoration(
                                  color: RealestateColor.darkgreen,
                                  borderRadius: BorderRadius.circular(50)),
                              child: Padding(
                                padding:
                                    EdgeInsets.symmetric(horizontal: width / 15),
                                child: Center(
                                    child: Text(
                                  "Modifier".tr,
                                  style: lmedium.copyWith(
                                      fontSize: 10, color: RealestateColor.white),
                                )),
                              ),
                            ),
                          )
                        ],
                      ),
                      SizedBox(
                        height: height / 36,
                      ),
                      SizedBox(
                        height: height / 4.2,
                        child: ListView.builder(
                          itemCount: 4,
                          itemBuilder: (context, index) {
                            return InkWell(
                              splashColor: RealestateColor.transparent,
                              highlightColor: RealestateColor.transparent,
                              onTap: () {
                                setState(() {
                                  selected = index;
                                });
                              },
                              child: Container(
                                height: height / 10,
                                margin: EdgeInsets.only(top: height/150,right: width/46,left: width/46 ,bottom: height/96),
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(25),
                                    color: selected == index ? RealestateColor.darkgreen : RealestateColor.white,
                                  boxShadow: const [
                                    BoxShadow(
                                      blurRadius: 1,
                                      color: RealestateColor.grey
                                    )
                                  ]
                                ),
                                child: Padding(
                                  padding:  EdgeInsets.symmetric(vertical: height/66,horizontal: width/36),
                                  child: Row(
                                    children: [
                                      Container(
                                          height: height / 14,
                                          width: width / 7,
                                          decoration: BoxDecoration(
                                              borderRadius:
                                              BorderRadius.circular(50),
                                              color: selected == index ? RealestateColor.lightwhite : RealestateColor.textfield),
                                          child: Center(
                                              child: Icon(selected == index ? Icons.location_on : Icons.location_on_outlined,
                                                color: selected == index ? RealestateColor.white : RealestateColor.grey,
                                                size: 20,
                                              ))
                                        // SvgPicture.asset(SvgIcons.right_arrow,color: color.white,height: height/34,),
                                      ),
                                      SizedBox(width: width/36,),
                                      SizedBox(
                                        height: height / 12,
                                        width: width / 1.7,
                                        child: Center(
                                          child: Text(
                                            "mw9i3 11630",
                                            style: lregular.copyWith(
                                                fontSize: 12, color: selected == index ? RealestateColor.white : RealestateColor.grey),
                                            maxLines: 3,
                                            overflow: TextOverflow.ellipsis,
                                          ),
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                              ),
                            );
                          },
                        ),
                      ),
                      SizedBox(
                        height: height / 76,
                      ),
                      InkWell(
                        splashColor: RealestateColor.transparent,
                        highlightColor: RealestateColor.transparent,
                        onTap: () {
                          Navigator.push(context, MaterialPageRoute(builder: (context) {
                            return const AccountLocation();
                          },));
                        },
                        child: Container(
                          height: height /14,
                          width: width / 2,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: RealestateColor.lightgreen),
                          child: Center(
                              child: Text(
                            "Choisir un localisation".tr,
                            style: lbold.copyWith(fontSize: 16, color: RealestateColor.white),
                          )),
                        ),
                      )
                    ],
                  ),
                ),
              );
            },
          ),
        );
      },
    );
  }
}
