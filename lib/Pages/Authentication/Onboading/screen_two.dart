import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:realestate/Common%20class/color.dart';
import 'package:realestate/Common%20class/fontstyle.dart';
import 'package:realestate/Common%20class/icons.dart';

import '../../../Theme/themecontroller.dart';
import '../login_option.dart';
import 'screen_three.dart';

class ScreenTwo extends StatefulWidget {
  const ScreenTwo({Key? key}) : super(key: key);

  @override
  State<ScreenTwo> createState() => _ScreenTwoState();
}

class _ScreenTwoState extends State<ScreenTwo> {
  dynamic size;
double height = 0.00;
double width = 0.00;
  final themedata = Get.put(Themecontroler());
  @override
  Widget build(BuildContext context) {
    size = MediaQuery
        .of(context)
        .size;
    height = size.height;
    width = size.width;
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: width / 36,),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: height/26,),
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Image.asset(PngImage.logo,height: height/15,),
                InkWell(
                  highlightColor: RealestateColor.transparent,
                  splashColor: RealestateColor.transparent,
                  onTap: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) {
                      return const LoginOption();
                    },));
                  },
                  child: Container(
                    height: height/20,
                    width: width/5,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(50),
                        color: RealestateColor.lightgrey
                    ),
                    child: Center(child: Text("Skip".tr,style: lregular.copyWith(fontSize: 12,color: RealestateColor.black),)),
                  ),
                )
              ],
            ),
            SizedBox(height: height/36,),
            Text("Choisissez facilement  ",style: lmedium.copyWith(fontSize: 25),),
            Row(
              children: [
                Text("la maison de ",style:lmedium.copyWith(fontSize: 25),),
                Text("Vos rêves ",style: lbold.copyWith(fontSize: 25,color: RealestateColor.darkgreen
                ),),
              ],
            ),
            SizedBox(height: height/46,),
            Text("L'application est facile à utiliser et claire en quelques étapes \nsimples vous trouverez ce que vous cherchez. ",style: lregular.copyWith(fontSize: 12,color: themedata.isdark
                ? RealestateColor.white
                : RealestateColor.grey,),),
            SizedBox(height: height/26,),
            Stack(
              children: [
                Container(
                  height: height/1.5,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(25),
                      image: DecorationImage(image: AssetImage(PngImage.pagetwoimage,),fit: BoxFit.fitHeight)
                  ),
                ),
                Positioned(
                    bottom: 20,
                    left: 55,
                    child: Row(
                      children: [
                        InkWell(
                          highlightColor: RealestateColor.transparent,
                          splashColor: RealestateColor.transparent,
                          onTap: () {
                            Navigator.pop(context);
                          },
                          child: const CircleAvatar(
                            radius: 25,
                            backgroundColor: RealestateColor.white,
                            child: Icon(Icons.arrow_back,color: RealestateColor.black,size: 20,),
                          ),
                        ),
                        SizedBox(width: width/16,),
                        InkWell(
                          highlightColor: RealestateColor.transparent,
                          splashColor: RealestateColor.transparent,
                          onTap: () {
                            Navigator.push(context, MaterialPageRoute(builder: (context) {
                              return const ScreenThree();
                            },));
                          },
                          child: Container(
                            height: height/16,
                            width: width/2.5,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: RealestateColor.lightgreen
                            ),
                            child: Center(child: Text("Next".tr,style: lbold.copyWith(fontSize: 16,color: RealestateColor.white),)),
                          ),
                        ),
                      ],
                    ))
              ],
            )
          ],
        ),
      ),
    );
  }
}
