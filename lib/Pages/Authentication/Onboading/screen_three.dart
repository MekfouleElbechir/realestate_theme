import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:realestate/Common%20class/color.dart';
import 'package:realestate/Common%20class/fontstyle.dart';
import 'package:realestate/Common%20class/icons.dart';

import '../../../Theme/themecontroller.dart';
import '../login_option.dart';


class ScreenThree extends StatefulWidget {
  const ScreenThree({Key? key}) : super(key: key);

  @override
  State<ScreenThree> createState() => _ScreenThreeState();
}

class _ScreenThreeState extends State<ScreenThree> {
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
            Row(
              children: [
                Text("La ",style: lmedium.copyWith(fontSize: 25,color: themedata.isdark
                    ? RealestateColor.white
                    : RealestateColor.indigo,),),
                Text("qualité est élevée ",style: lbold.copyWith(fontSize: 25,color: themedata.isdark
                    ? RealestateColor.white
                    : RealestateColor.indigo,),),
                Text(" ",style: lmedium.copyWith(fontSize: 25,color: themedata.isdark
                    ? RealestateColor.white
                    : RealestateColor.indigo,),),
              ],
            ),
            Text("Les prix sont abordables",style: lmedium.copyWith(fontSize: 25),),
            SizedBox(height: height/46,),
            Text("Le prix dépend du type et de la taille \nde la propriété et la qualité est toujours élevée. ",style: lregular.copyWith(fontSize: 12),),
            SizedBox(height: height/26,),
            Container(
              height: height/1.5,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(25),
                  image: DecorationImage(image: AssetImage(PngImage.pagethreeimage,),fit: BoxFit.fitHeight)
              ),
            ),
          ],
        ),
      ),
    );
  }
}
