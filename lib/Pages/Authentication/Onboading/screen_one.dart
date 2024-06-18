import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:realestate/Common%20class/color.dart';
import 'package:realestate/Common%20class/fontstyle.dart';
import 'package:realestate/Common%20class/icons.dart';
import '../login_option.dart';
import 'screen_two.dart';

class ScreenOne extends StatefulWidget {
  const ScreenOne({Key? key}) : super(key: key);

  @override
  State<ScreenOne> createState() => _ScreenOneState();
}

class _ScreenOneState extends State<ScreenOne> {
  dynamic size;
double height = 0.00;
double width = 0.00;
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
            Text("Bienvenue Sur Notre ",style: lmedium.copyWith(fontSize: 25),),
            Row(
              children: [
                Text("Plateforme ",style: lmedium.copyWith(fontSize: 25),),
                Text("Immobilière ",style: lbold.copyWith(fontSize: 25,color: RealestateColor.darkgreen
                ),),
              ],
            ),
            SizedBox(height: height/46,),
            Text("Examinez notre grande sélection de logements pour identifier\ncelui qui satisfait pleinement vos besoins. ",style: lregular.copyWith(fontSize: 12),),
            SizedBox(height: height/26,),
            Stack(
              children: [
                Container(
                  height: height/1.5,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(25),
                    image: DecorationImage(image: AssetImage(PngImage.pageoneimage,),fit: BoxFit.fitHeight)
                  ),
                ),
                Positioned(
                  bottom: 20,
                    left: 100,
                    child: InkWell(
                      highlightColor: RealestateColor.transparent,
                      splashColor: RealestateColor.transparent,
                      onTap: () {
                        Navigator.push(context, MaterialPageRoute(builder: (context) {
                          return const ScreenTwo();
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
                    ))
              ],
            )
          ],
        ),
      ),
    );
  }
}
