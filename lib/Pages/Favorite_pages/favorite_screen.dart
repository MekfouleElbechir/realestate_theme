import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:get/get.dart';
import 'package:realestate/Common%20class/color.dart';
import 'package:realestate/Common%20class/fontstyle.dart';
import 'package:realestate/Common%20class/icons.dart';

import '../../Theme/themecontroller.dart';

class FavoriteScreen extends StatefulWidget {
  const FavoriteScreen({Key? key}) : super(key: key);

  @override
  State<FavoriteScreen> createState() => _FavoriteScreenState();
}

class _FavoriteScreenState extends State<FavoriteScreen> {
  dynamic size;
double height = 0.00;
double width = 0.00;
  int selected = 0;
  final themedata = Get.put(Themecontroler());
  List selectedimage = [PngImage.verticalInactive,PngImage.horizontalactive];
  List unselectedimage = [PngImage.verticalactive,PngImage.horizontalInactive];
  final List<String> gridimage = <String>[
  PngImage.explore5,
  PngImage.explore4,
  PngImage.explore1
  ];
  final List<String> gridname = <String>[
    "Oumeime Villa",
    "Hel bechir Maison",
    "Cheikha Maison",
  ];
  final List<String> features = <String>[
    "Villa",
    "Appartement",
    "Maison",
  ];
  final List<String> featuresname = <String>[
    "Hel hamadi Maison",
    "Sidi Maison",
    "Mohammed Villa",
  ];
  final List<String> featuresimg = <String>[
    PngImage.explore1,
    PngImage.explore3,
    PngImage.explore9
  ];

  @override
  Widget build(BuildContext context) {
    size = MediaQuery.of(context).size;
    height = size.height;
    width = size.width;
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding:  EdgeInsets.symmetric(horizontal: width / 46,vertical: height/22),
          child: Column(
            children: [
              Row(mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text("Mon préféré".tr,style: lbold.copyWith(fontSize: 14,color: themedata.isdark
                      ? RealestateColor.white
                      : RealestateColor.indigo,),),
                  SizedBox(width: width/4,),
                  InkWell(
                    splashColor: RealestateColor.transparent,
                    highlightColor: RealestateColor.transparent,
                    onTap: () {
                      // Navigator.pop(context);
                    },
                    child: Container(
                      height: height / 18,
                      width: height / 18,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(50),
                          color: RealestateColor.textfield),
                      child: const Center(
                          child: Icon(
                            Icons.delete_outline_sharp,
                            size: 20,
                            color: RealestateColor.indigo,
                          )),
                    ),
                  ),
                ],
              ),
              SizedBox(height: height/36,),
              Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SizedBox(
                    height: height /20,
                    width: width / 2,
                    child: Row(
                      children: [
                        Text(
                          "3 ".tr,
                          style:
                          lbold.copyWith(fontSize: 18, color: themedata.isdark
                              ? RealestateColor.white
                              : RealestateColor.indigo,),
                        ),
                        Text(
                          "Domaines".tr,
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
                                  child: Image.asset(selected==0 ? unselectedimage[index] : selectedimage[index]),
                                )),
                          ),
                        );
                      },),
                  ),
                ],
              ),
              if(selected == 0) ...[
                GridView.builder(
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  itemCount: gridimage.length,
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
                                  gridimage[index].toString(),
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
                                height: height / 26,
                                width: width / 2,
                                child: Text(
                                  gridname[index].toString(),
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
                                  "nouakchott, TVZ",
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
              ]else ...[
                ListView.builder(
                  physics: const NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  itemCount: featuresimg.length,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding:  EdgeInsets.only(bottom:height/64 ),
                      child: Slidable(
                        endActionPane: ActionPane(
                            extentRatio: 0.25,
                            motion: const ScrollMotion(),
                            children: [
                              SlidableAction(
                                onPressed: (context) {
                                },
                                backgroundColor: RealestateColor.darkgreen,
                                foregroundColor: RealestateColor.white,
                                icon: Icons.delete_outline_sharp,
                                borderRadius: const BorderRadius.only(topRight: Radius.circular(25),bottomRight: Radius.circular(25)),
                              ),
                            ]),
                        child: InkWell(
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
                            height: height / 4.3,
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
                                       featuresimg[index].toString(),
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
                                            "CenterRim Appartement",
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
                                                  "Nouakchott, TVZ",
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
                        ),
                      ),
                    );
                  },
                ),
              ],
              // SizedBox(height: height/6,),
              // Image.asset(PngImage.alertlogo),
              // SizedBox(height: height/36,),
              // Text("Your favorite page is",style: lmedium.copyWith(fontSize: 25,color: color.indigo),),
              // SizedBox(height: height/500,),
              // Text("empty",style: lbold.copyWith(fontSize: 25,color: color.darkgreen),),
              // SizedBox(height: height/46,),
              // Text("Click add button above to start exploring and choose ",style: lregular.copyWith(fontSize: 12,color: color.grey),),
              // Text("your favorite estates. ",style: lregular.copyWith(fontSize: 12,color: color.grey),),
            ],
          ),
        ),
      ),
    );
  }
}
