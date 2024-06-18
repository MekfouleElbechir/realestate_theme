import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:realestate/Common%20class/color.dart';
import 'package:realestate/Common%20class/fontstyle.dart';
import 'package:realestate/Common%20class/icons.dart';
import 'package:realestate/pages/home_pages/featured_categoty.dart';

import '../../Theme/themecontroller.dart';

class LocationDetail extends StatefulWidget {
  const LocationDetail({Key? key}) : super(key: key);

  @override
  State<LocationDetail> createState() => _LocationDetailState();
}

class _LocationDetailState extends State<LocationDetail> {
  dynamic size;
double height = 0.00;
double width = 0.00;
  int selected = 0;
  final themedata = Get.put(Themecontroler());
  final List<String> selectedimage = [PngImage.verticalInactive,PngImage.horizontalactive];
  final List<String> unselectedimage = [PngImage.verticalactive,PngImage.horizontalInactive];
  final List<String> listname = <String>["House","\$250-\$450"];
  final List<String> features = <String>[
    "Villa",
    "Maison",
    "Appartement",
    "Maison",
  ];
  @override
  Widget build(BuildContext context) {
    size = MediaQuery
        .of(context)
        .size;
    height = size.height;
    width = size.width;
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: height/26,),
            Padding(padding: EdgeInsets.symmetric(
                horizontal: width / 25),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  InkWell(
                    splashColor: RealestateColor.transparent,
                    highlightColor: RealestateColor.transparent,
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: Container(
                      height: height / 20,
                      width: height / 20,
                      decoration:  BoxDecoration(
                          borderRadius: BorderRadius.circular(50),
                          color: RealestateColor.textfield),
                      child: const Center(
                          child:  Icon(
                            Icons.chevron_left_outlined,
                            size: 25,
                            color: RealestateColor.darkgreen,
                          )),
                    ),
                  ),
                  Container(
                    height: height / 20,
                    width: height / 20,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(50),
                        color: RealestateColor.textfield),
                    child: Center(
                        child: Image.asset(
                          PngImage.filter,
                          color: RealestateColor.indigo,
                          height: height / 36,
                        )),
                  )
                ],
              ),
            ),
            SizedBox(height: height/66,),
            Padding(
              padding: EdgeInsets.only(right: width / 66, left: width / 66),
              child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Stack(
                    children: [
                      ClipRRect(
                        borderRadius: const BorderRadius.only(topLeft:Radius.circular(25),bottomLeft: Radius.circular(25),topRight: Radius.circular(15),bottomRight: Radius.circular(15)),
                        child: Image.asset(
                          PngImage.toplocation1,
                          width: width / 1.5,
                          height: height / 2.8,
                          fit: BoxFit.fitWidth,
                        ),
                      ),
                      Positioned(
                          bottom: 10,
                          left: 15,
                          child: Container(
                              height: height / 20,
                              width: width / 10,
                              decoration: BoxDecoration(
                                  borderRadius:
                                  BorderRadius.circular(15),
                                  color: RealestateColor.lightgreen),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text("#",style: lsemibold.copyWith(fontSize: 12,color: RealestateColor.white),),
                                  Text("1",style: lsemibold.copyWith(fontSize: 20,color: RealestateColor.white),),
                                ],
                              )
                            // SvgPicture.asset(SvgIcons.right_arrow,color: color.white,height: height/34,),
                          )),
                    ],
                  ),
                  Column(
                    children: [
                        ClipRRect(
                          borderRadius: const BorderRadius.only(topLeft:Radius.circular(15),bottomLeft: Radius.circular(15),topRight: Radius.circular(25),bottomRight: Radius.circular(15)),
                          child: Image.asset(
                            PngImage.toplocation4,
                            width: width / 3.5,
                            height: height / 4.5,
                            fit: BoxFit.fitHeight,
                          ),
                        ),
                      SizedBox(height: height / 120,),
                      ClipRRect(
                        borderRadius: const BorderRadius.only(topLeft:Radius.circular(15),bottomLeft: Radius.circular(15),topRight: Radius.circular(25),bottomRight: Radius.circular(15)),
                        child: Image.asset(
                          PngImage.toplocation6,
                          width: width / 3.5,
                          height: height / 7.5,
                          fit: BoxFit.fitHeight,
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
            Padding(
                padding: EdgeInsets.symmetric(
                    horizontal: width / 25, vertical: height / 26),
                child: Column(crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Sidi",style: lbold.copyWith(fontSize: 25,color: themedata.isdark
                        ? RealestateColor.white
                        : RealestateColor.indigo,),),
                    SizedBox(height: height/120,),
                    Text("Nos biens immobiliers recommandés à Nouakchott",style: lregular.copyWith(fontSize: 12,color: themedata.isdark
                        ? RealestateColor.white
                        : RealestateColor.indigo,),),
                    SizedBox(
                      height: height / 36,
                    ),
                    TextField(
                      style: lmedium.copyWith(fontSize: 12),
                      cursorColor: RealestateColor.grey,
                      decoration: InputDecoration(
                          suffixIcon: const Icon(
                            Icons.search,
                            color: RealestateColor.black,
                            size: 20,
                          ),
                          filled: true,
                          hintStyle: lmedium.copyWith(fontSize: 12,color: RealestateColor.grey),
                          hintText: "Morderne Maison",
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                              borderSide: BorderSide.none),
                          fillColor: RealestateColor.textfield),
                    ),
                    SizedBox(
                      height: height / 36,
                    ),
                    Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Trouvé 128 domaines".tr,
                          style:
                          lmedium.copyWith(fontSize: 18, color: themedata.isdark
                              ? RealestateColor.white
                              : RealestateColor.indigo,),
                        ),
                        Container(
                          height: height /18,
                          width: width / 4,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(50),
                            color: RealestateColor.textfield,
                          ),
                          child: ListView.builder(
                            shrinkWrap: false,
                            physics: const NeverScrollableScrollPhysics(),
                            scrollDirection: Axis.horizontal,
                            itemCount: selectedimage.length,
                            itemBuilder: (context, index) {
                              return InkWell(
                                splashColor: RealestateColor.transparent,
                                highlightColor: RealestateColor.transparent,
                                onTap: () {
                                  setState(() {
                                    selected = index;
                                  });
                                },
                                child: Padding(
                                  padding:EdgeInsets.symmetric(horizontal: width/70,vertical: height/88),
                                  child: Container(
                                      width: width / 10,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(50),
                                        color: selected == index ? RealestateColor.white :RealestateColor.transparent,
                                      ),
                                      child: Padding(
                                        padding: const EdgeInsets.all(4.0),
                                        child: Image.asset(selected==0 ? unselectedimage[index] : selectedimage[index],height: height/34,),
                                      )),
                                ),
                              );
                            },),
                        )
                      ],
                    ),
                    SizedBox(
                      height: height / 36,
                    ),
                    SizedBox(
                      height: height/15,
                      child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemCount: 2,
                        itemBuilder: (context, index) {
                        return  Container(
                          margin: EdgeInsets.only(right: width/36),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(25),
                              color: RealestateColor.green,
                          ),
                          child: Padding(
                            padding: EdgeInsets.symmetric(
                                vertical: height / 66, horizontal: width / 26),
                            child: Row(
                              children: [
                                Container(
                                    height: height / 14,
                                    width: width / 12,
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(50),
                                        color: RealestateColor.lightgreen),
                                    child: const Center(
                                        child: Icon(Icons.close,color: RealestateColor.white,size: 12,))
                                ),
                                SizedBox(
                                  width: width / 36,
                                ),
                                Text(
                                  listname[index].toString(),
                                  style: lregular.copyWith(
                                      color: RealestateColor.indigo, fontSize: 10),
                                ),
                              ],
                            ),
                          ),
                        );
                      },),
                    ),
                    ListView.builder(
                      physics: const NeverScrollableScrollPhysics(),
                      shrinkWrap: true,
                      itemCount: 1,
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
                            height: height / 4.3,
                            margin: EdgeInsets.only(bottom: height / 64),
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
                                        PngImage.explore5,
                                        width: width / 2,
                                        height: height / 4.3,
                                        fit: BoxFit.fitWidth,
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
                                                color: RealestateColor.textfield),
                                            child: const Center(
                                                child: Icon(
                                                  Icons.favorite_outline,
                                                  color: RealestateColor.radial,
                                                  size: 15,
                                                ))
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
                                                    "Maison",
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
                                            "Maison du paradis des fleurs",
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
                                          Text(
                                            "4.9",
                                            style: lbold.copyWith(fontSize: 8,color: RealestateColor.grey),
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
                                              size: height / 66,
                                            ),
                                            Center(
                                                child: Text(
                                                  "Nouakchott, Arafatt",
                                                  style:
                                                  lregular.copyWith(fontSize: 8,color: RealestateColor.grey),
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
                  ],
                )),
          ],
        ),
      ),
    );
  }
}
