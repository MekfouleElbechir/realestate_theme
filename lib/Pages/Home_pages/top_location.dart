import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:realestate/Common%20class/color.dart';
import 'package:realestate/Common%20class/fontstyle.dart';
import 'package:realestate/Common%20class/icons.dart';

import '../../Theme/themecontroller.dart';
import 'location_detail.dart';

class TopLocation extends StatefulWidget {
  const TopLocation({Key? key}) : super(key: key);

  @override
  State<TopLocation> createState() => _TopLocationState();
}

class _TopLocationState extends State<TopLocation> {
  dynamic size;
double height = 0.00;
double width = 0.00;
  final themedata = Get.put(Themecontroler());
  final List<String> locationname = <String>[
    "TVZ",
    "Sokokk",
    "Sahrawi",
    "AinTalh",
    "Leksar",
    "Toujonin",
  ];
  final List<String> locationimg = <String>[
    PngImage.toplocation1,
    PngImage.toplocation2,
    PngImage.toplocation3,
    PngImage.toplocation4,
    PngImage.toplocation5,
    PngImage.toplocation6,
  ];
  final List<String> locationlist = <String>[
    "1",
    "2",
    "3",
    "4",
    "5",
    "6",
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
        child: Padding(
          padding: EdgeInsets.symmetric( horizontal: width / 36, vertical: height / 26),
          child: Column(crossAxisAlignment: CrossAxisAlignment.start,
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
                        color: RealestateColor.indigo,
                      )),
                ),
              ),
              SizedBox(height: height/36,),
              Text("TopLocalisation".tr,style: lbold.copyWith(fontSize: 25,color: themedata.isdark
                  ? RealestateColor.white
                  : RealestateColor.indigo,),),
              SizedBox(height: height/120,),
              Text("Find_the_best_recommendations_place_to_live".tr,style: lregular.copyWith(fontSize: 12,color: themedata.isdark
                  ? RealestateColor.white
                  : RealestateColor.indigo,),),
              GridView.builder(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                itemCount: locationimg.length,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    mainAxisExtent: 250,
                    crossAxisSpacing: 10,
                    mainAxisSpacing: 10),
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
                                borderRadius: BorderRadius.circular(15),
                                child: Image.asset(
                                  locationimg[index].toString(),
                                  width: width / 2,
                                  height: height / 4,
                                  fit: BoxFit.fitHeight,
                                ),
                              ),
                              Positioned(
                                  top: 10,
                                  left: 10,
                                  child: Container(
                                      height: height / 25,
                                      width: width / 12,
                                      decoration: BoxDecoration(
                                          borderRadius:
                                          BorderRadius.circular(5),
                                          color: RealestateColor.lightgreen),
                                      child: Row(mainAxisAlignment: MainAxisAlignment.center,
                                        children: [
                                          Text("#",style: lsemibold.copyWith(fontSize: 8,color: RealestateColor.white),),
                                          Text(locationlist[index].toString(),style: lsemibold.copyWith(fontSize: 12,color: RealestateColor.white),),
                                        ],
                                      )
                                    // SvgPicture.asset(SvgIcons.right_arrow,color: color.white,height: height/34,),
                                  )),
                            ]),
                            SizedBox(
                              height: height / 120,
                            ),
                            SizedBox(
                                height: height / 23,
                                width: width / 2,
                                child: Center(
                                  child: Text(
                                   locationname[index].toString(),
                                    style: lbold.copyWith(
                                        fontSize: 12, color: RealestateColor.indigo),
                                    maxLines: 2,
                                  ),
                                )),
                          ],
                        ),
                      ),
                    ),
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
