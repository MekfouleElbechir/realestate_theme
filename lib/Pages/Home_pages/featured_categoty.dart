import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:realestate/Common%20class/color.dart';
import 'package:realestate/Common%20class/fontstyle.dart';
import 'package:realestate/Common%20class/icons.dart';

import '../../Theme/themecontroller.dart';

class FeaturedCategory extends StatefulWidget {
  const FeaturedCategory({Key? key}) : super(key: key);

  @override
  State<FeaturedCategory> createState() => _FeaturedCategoryState();
}

class _FeaturedCategoryState extends State<FeaturedCategory> {
  dynamic size;
double height = 0.00;
double width = 0.00;
  final List<String> features = <String>[
    "Villa",
    "Maison",
    "Appartement",
    "Maison",
  ];
  final List<String> villaimage = <String>[
    PngImage.villa1,
    PngImage.featurimg2,
  ];
  final List<String> gridvillaimg = <String>[
    PngImage.villa2,
    PngImage.featuredlist1,
  ];
  final List<String> villaname = <String>[
    "Villa",
    "Maison",
    "Appartement",
    "Maison",
  ];
  final List<String> gridvillaname = <String>[
    "Hadrami  Maison",
    "Hademin Moderne Maison ",
  ];
  final themedata = Get.put(Themecontroler());
  int selected = 0;
  List selectedimage = [PngImage.verticalInactive,PngImage.horizontalactive];
  List unselectedimage = [PngImage.verticalactive,PngImage.horizontalInactive];
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
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(50),
                          color: RealestateColor.textfield),
                      child: const Center(
                          child: Icon(
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
                          color: RealestateColor.black,
                          height: height / 36,
                        )),
                  )
                ],
              ),
            ),
            SizedBox(height: height/66,),
              Image.asset(PngImage.feturecategory,height: height/2.5,width: width/1,fit: BoxFit.fitWidth,),
            Padding(
              padding:   EdgeInsets.symmetric(
                  horizontal: width / 25, vertical: height / 46),
              child: Column(
                children: [
                  Row(
                    children: [
                      Text(
                        "Top_villa".tr,
                        style: lbold.copyWith(fontSize: 18, color: themedata.isdark
                            ? RealestateColor.white
                            : RealestateColor.indigo,),
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
                      itemCount: villaimage.length,
                      itemBuilder: (context, index) {
                        return InkWell(
                          highlightColor: RealestateColor.transparent,
                          splashColor: RealestateColor.transparent,
                          onTap: () {
                            // Navigator.push(context, MaterialPageRoute(
                            //   builder: (context) {
                            //     return FeaturedCategory();
                            //   },
                            // ));
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
                                       villaimage[index].toString(),
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
                                                   "villa",
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
                                            villaname[index].toString(),
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
                                                  "Nuakchott, TVZ",
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
                    height: height / 26,
                  ),
                  TextField(
                    style: lmedium.copyWith(fontSize: 12),
                    cursorColor: RealestateColor.grey,
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
                        hintStyle: lmedium.copyWith(fontSize: 12,color: RealestateColor.grey),
                        hintText: "Rechercher une maison, un appartement, etc.",
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
                        "domaines".tr,
                        style:
                        lbold.copyWith(fontSize: 18, color: themedata.isdark
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
                          physics:const NeverScrollableScrollPhysics(),
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
                                      child: Image.asset(selected==0 ? unselectedimage[index] : selectedimage[index] ,height: height/34,),
                                    )),
                              ),
                            );
                          },),
                      )
                    ],
                  ),
                  GridView.builder(
                    shrinkWrap: true,
                    physics: const NeverScrollableScrollPhysics(),
                    itemCount: gridvillaimg.length,
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 2,
                        childAspectRatio:  MediaQuery.of(context).size.aspectRatio * 3 / 2.2,
                        // mainAxisExtent: 250,
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
                                    gridvillaimg[index].toString(),
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
                                              child: Image.asset(PngImage.home,height: height/46)
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
                                height: height / 170,
                              ),
                              SizedBox(
                                  // height: height / 26,
                                  width: width / 2,
                                  child: Text(
                                    gridvillaname[index].toString(),
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
                                    "Nouakchott , TVZ",
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
          ],
        ),
      ),
    );
  }
}
