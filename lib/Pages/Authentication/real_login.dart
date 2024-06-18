
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:realestate/Common%20class/color.dart';
import 'package:realestate/Common%20class/fontstyle.dart';
import 'package:realestate/Common%20class/icons.dart';
import 'package:realestate/pages/Authentication/real_register.dart';

import '../../Theme/themecontroller.dart';
import '../home_pages/dash_board.dart';

class RealLogin extends StatefulWidget {
  const RealLogin({Key? key}) : super(key: key);

  @override
  State<RealLogin> createState() => _RealLoginState();
}

class _RealLoginState extends State<RealLogin> {
  dynamic size;
double height = 0.00;
double width = 0.00;
  final themedata = Get.put(Themecontroler());
  TextEditingController email = TextEditingController();
  TextEditingController password = TextEditingController();
  @override
  Widget build(BuildContext context) {
    size = MediaQuery.of(context).size;
    height = size.height;
    width = size.width;
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
                child: Image.asset(PngImage.loginimage,fit: BoxFit.fitWidth,)),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: width/20),
              child: Column(crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: height/46,),
                  Row(
                  children: [
                    Text("Connectons ",style: lmedium.copyWith(fontSize: 25,color: themedata.isdark
                        ? RealestateColor.white
                        : RealestateColor.indigo,),),
                    Text("-nous".tr,style: lbold.copyWith(fontSize: 25,color: themedata.isdark
                        ? RealestateColor.white
                        : RealestateColor.darkgreen,),),
                  ],
                  ),
                  SizedBox(height: height/46,),
                  Text("",style: lregular.copyWith(fontSize: 12,color: themedata.isdark
                      ? RealestateColor.white
                      : RealestateColor.grey,),),
                  SizedBox(height: height/26,),
                  TextField(
                    controller: email,
                    style: lmedium.copyWith(fontSize: 12,color: RealestateColor.indigo),
                    cursorColor: RealestateColor.grey,
                    decoration: InputDecoration(
                        prefixIcon: Padding(
                          padding: const EdgeInsets.all(12.0),
                          child: Image.asset(PngImage.email,height: height/36),
                        ),
                        filled: true,
                        hintText: "Email".tr,
                        hintStyle: lregular.copyWith(fontSize: 12,color: RealestateColor.grey),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                            borderSide: BorderSide.none),
                        fillColor: RealestateColor.textfield),
                  ),
                  SizedBox(height: height/46,),
                  TextField(
                    controller:password,
                    style: lmedium.copyWith(fontSize: 12,color: RealestateColor.indigo),
                    cursorColor: RealestateColor.grey,
                    decoration: InputDecoration(
                        prefixIcon: Padding(
                          padding: const EdgeInsets.all(12.0),
                          child: Image.asset(PngImage.lock,height: height/36),
                        ),
                        filled: true,
                        hintText: "Mot de pass".tr,
                        hintStyle: lregular.copyWith(fontSize: 12,color: RealestateColor.grey),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                            borderSide: BorderSide.none),
                        fillColor: RealestateColor.textfield),
                  ),
                  SizedBox(height: height/46,),
                  Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("Mot de passe oublié".tr,style: lsemibold.copyWith(fontSize: 12,color: themedata.isdark
                          ? RealestateColor.white
                          : RealestateColor.darkgreen,),),
                      Text("Montrer le mot de passe".tr,style: lsemibold.copyWith(fontSize: 12,color: themedata.isdark
                          ? RealestateColor.white
                          : RealestateColor.darkgreen,),),
                    ],
                  ),
                  SizedBox(height: height/10,),
                  InkWell(
                    highlightColor: RealestateColor.transparent,
                    splashColor: RealestateColor.transparent,
                    onTap: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context) {
                        return const DashBoardpage();
                      },));
                    },
                    child: Center(
                      child: Container(
                        height: height/14,
                        width: width/1.5,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: RealestateColor.lightgreen
                        ),
                        child:
                            Center(child: Text("se connecter".tr,style: lbold.copyWith(fontSize: 16,color: RealestateColor.white),)),
                      ),
                    ),
                  ),
                  SizedBox(height: height/36,),
                  Row(
                    children: [
                      Container(height:height/500,width: width/2.5, color: RealestateColor.lightgrey),
                      SizedBox(width: width/46,),
                      Text("OU",style: lsemibold.copyWith(fontSize: 10,color: RealestateColor.lightgrey),),
                      SizedBox(width: width/46,),
                      Container(height:height/500,width: width/2.5, color: RealestateColor.lightgrey),
                    ],
                  ),
                  SizedBox(height: height/36,),
                  Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                          height: height/12,
                          width: width/2.3,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              color: RealestateColor.textfield
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(12.0),
                            child: Image.asset(PngImage.googlelogo,height: 30,),
                          )
                      ),
                      Container(
                          height: height/12,
                          width: width/2.3,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              color: RealestateColor.textfield
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(12.0),
                            child: Image.asset(PngImage.facebooklogo),
                          )
                      ),
                    ],
                  ),
                  SizedBox(height: height/16,),
                  Row(mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("Vous n’avez pas de Compte".tr,style: lregular.copyWith(fontSize: 12,color: themedata.isdark
                          ? RealestateColor.white
                          : RealestateColor.indigo,),),
                      SizedBox(width: width/96,),
                      InkWell(
                        highlightColor: RealestateColor.transparent,
                          splashColor: RealestateColor.transparent,
                          onTap: () {
                            Navigator.push(context, MaterialPageRoute(builder:(context) {
                              return const RealRegister();
                            },));
                          },
                          child: Text("S'inscrire".tr,style: lbold.copyWith(fontSize: 12,color: themedata.isdark
                              ? RealestateColor.white
                              : RealestateColor.indigo,),)),
                    ],
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
