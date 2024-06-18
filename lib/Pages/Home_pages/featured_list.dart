import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:realestate/Common%20class/color.dart';
import 'package:realestate/Common%20class/fontstyle.dart';
import 'package:realestate/Common%20class/icons.dart';

import '../../Theme/themecontroller.dart';

class FeaturedList extends StatefulWidget {
  const FeaturedList({Key? key}) : super(key: key);

  @override
  State<FeaturedList> createState() => _FeaturedListState();
}

class _FeaturedListState extends State<FeaturedList> {
  dynamic size;
double height = 0.00;
double width = 0.00;
  int selected = 0;
  final themedata = Get.put(Themecontroler());
  List selectedimage = [PngImage.verticalInactive,PngImage.horizontalactive];
  List unselectedimage = [PngImage.verticalactive,PngImage.horizontalInactive];
  List estateimg = [PngImage.explore4,PngImage.featurimg2];
  List estatename = ["CenterRim Appartement","Hadrami Villa"];

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
            Padding(
              padding: EdgeInsets.only(
                  top: height / 26, right: width / 36, left: width / 36),
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
            SizedBox(
              height: height / 36,
            ),
            Padding(
              padding: EdgeInsets.only(right: width / 36, left: width / 36),
              child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(15),
                      child: Image.asset(
                        PngImage.featuredlist1,
                        width: width / 1.6,
                        height: height / 4,
                        fit: BoxFit.fitWidth,
                      ),
                    ),
                  ),
                  Column(
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(15),
                        child: Image.asset(
                          PngImage.featuredlist2,
                          width: width / 3.5,
                          height: height / 7,
                          fit: BoxFit.fitWidth,
                        ),
                      ),
                      SizedBox(height: height / 200,),
                      ClipRRect(
                        borderRadius: BorderRadius.circular(15),
                        child: Image.asset(
                          PngImage.featuredlist3,
                          width: width / 3.5,
                          height: height / 7,
                          fit: BoxFit.fitWidth,
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
                  Text("Domaines en vedette",style: lbold.copyWith(fontSize: 25,color: themedata.isdark
                      ? RealestateColor.white
                      : RealestateColor.indigo,),),
                  SizedBox(height: height/120,),
                  Text("Nos biens immobiliers recommandés en exclusivité pour vous.",style: lregular.copyWith(fontSize: 12,color: themedata.isdark
                      ? RealestateColor.white
                      : RealestateColor.indigo,),),
                  SizedBox(
                    height: height / 36,
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
                      SizedBox(
                        height: height /20,
                        width: width / 2,
                        child: Row(
                          children: [
                            Text(
                              "70 ".tr,
                              style:
                              lbold.copyWith(fontSize: 18, color: themedata.isdark
                                  ? RealestateColor.white
                                  : RealestateColor.indigo,),
                            ),
                            Text(
                              "domaines".tr,
                              style:
                              lmedium.copyWith(fontSize: 18, color: themedata.isdark
                                  ? RealestateColor.white
                                  : RealestateColor.indigo,),
                            ),
                          ],
                        ),
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
                                    child: Image.asset(selected==0 ? unselectedimage[index] : selectedimage[index],),
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
                    itemCount: estateimg.length,
                    gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 2,
                        mainAxisExtent: 250,
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
                                    estateimg[index].toString(),
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
                                                    style: lbold.copyWith(
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
                                  height: height / 24,
                                  width: width / 2,
                                  child: Text(
                                   estatename[index].toString(),
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
                                    "Nouakchott, TVZ",
                                    style: lregular.copyWith(fontSize: 8,color: RealestateColor.darkgreen),
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
              )),
          ],
        ),
      ),
    );
  }
}
