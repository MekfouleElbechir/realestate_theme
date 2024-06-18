import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:realestate/Common%20class/color.dart';
import 'package:realestate/Common%20class/fontstyle.dart';
import 'package:realestate/Common%20class/icons.dart';

import '../../Theme/themecontroller.dart';

class HomePromotion extends StatefulWidget {
  const HomePromotion({Key? key}) : super(key: key);

  @override
  State<HomePromotion> createState() => _HomePromotionState();
}

class _HomePromotionState extends State<HomePromotion> {
  dynamic size;
double height = 0.00;
double width = 0.00;
  final themedata = Get.put(Themecontroler());
  @override
  Widget build(BuildContext context) {
    size = MediaQuery.of(context).size;
    height = size.height;
    width = size.width;
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(
              horizontal: width / 20, vertical: height / 26),
          child: Column(
            children: [
              Row(
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
                        child: SvgPicture.asset(
                      SvgIcons.export,
                      color: RealestateColor.black,
                      height: height / 36,
                    )),
                  )
                ],
              ),
              SizedBox(
                height: height / 36,
              ),
              Container(
                decoration:
                    BoxDecoration(borderRadius: BorderRadius.circular(50)),
                child: Column(children: [
                  Stack(children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(25),
                      child: Image.asset(
                        PngImage.poster1,
                        width: width / 1.2,
                        height: height / 4,
                        fit: BoxFit.fill,
                      ),
                    ),
                    Positioned(
                        top: 25,
                        left: 15.0,
                        child: Text(
                          "Aid \nSalle!",
                          style:
                              lbold.copyWith(fontSize: 20, color: RealestateColor.white),
                        )),
                    Positioned(
                        top: 80,
                        right: 3.0,
                        left: 15.0,
                        child: Text(
                          "Toutes les réductions jusqu'à 60%",
                          style: lregular.copyWith(
                              fontSize: 12, color: RealestateColor.white),
                        )),
                    Positioned(
                        bottom: 0,
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
              SizedBox(
                height: height / 36,
              ),
              SizedBox(
                height: height / 10,
                child: Text(
                  "Les soldes d'Aidà durée limitée reviennent! ",
                  style: lregular.copyWith(fontSize: 25, color: themedata.isdark
                      ? RealestateColor.white
                      : RealestateColor.indigo,),
                  maxLines: 3,
                ),
              ),
              Row(
                children: [
                  Image.asset(PngImage.calender,height: height/56,color:themedata.isdark
                  ? RealestateColor.white
                      : RealestateColor.indigo,),
                  SizedBox(
                    width: width / 36,
                  ),
                  Text(
                    "October 27, 2022",
                    style: lregular.copyWith(fontSize: 10, color: themedata.isdark
                        ? RealestateColor.white
                        : RealestateColor.grey,),
                  )
                ],
              ),
              SizedBox(
                height: height / 36,
              ),
              Container(
                height: height / 10,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(25),
                    color: RealestateColor.green,
                    ),
                child: Padding(
                  padding: EdgeInsets.symmetric(
                      vertical: height / 66, horizontal: width / 36),
                  child: Row(
                    children: [
                      Container(
                          height: height / 14,
                          width: width / 7,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              color: RealestateColor.lightgreen),
                          child: Center(
                              child: SvgPicture.asset(
                            SvgIcons.ticket,
                            color: RealestateColor.white,
                            height: height / 36,
                          ))
                          // SvgPicture.asset(SvgIcons.right_arrow,color: color.white,height: height/34,),
                          ),
                      SizedBox(
                        width: width / 36,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "HLWN40",
                            style: lbold.copyWith(
                                color: RealestateColor.indigo, fontSize: 18),
                          ),
                          SizedBox(
                            width: width / 1.5,
                            child: Text(
                              "Utilisez ce coupon pour obtenir 40% de réduction sur votre transaction",
                              style: lregular.copyWith(
                                  fontSize: 9, color: RealestateColor.grey),
                              maxLines: 1,
                              overflow: TextOverflow.ellipsis,
                            ),
                          )
                        ],
                      )
                    ],
                  ),
                ),
              ),
              SizedBox(height: height/36,),
              Text(
                "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip.\n\nSed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores",
                style: lregular.copyWith(fontSize: 12, color: themedata.isdark
                    ? RealestateColor.white
                    : RealestateColor.grey,),
                maxLines: 60,
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: Padding(
        padding:  EdgeInsets.symmetric(horizontal: width / 20, vertical: height /66),
        child: Container(
          height: height /14,
          width: width / 2,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: RealestateColor.lightgreen),
          child: Center(
              child: Text(
                "Explore plus".tr,
                style: lbold.copyWith(fontSize: 16, color: RealestateColor.white),
              )),
        ),
      ),
    );
  }
}
