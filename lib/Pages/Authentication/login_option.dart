import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:realestate/Common%20class/color.dart';
import 'package:realestate/Common%20class/fontstyle.dart';
import 'package:realestate/Common%20class/icons.dart';
import 'package:realestate/pages/Authentication/real_login.dart';
import 'package:realestate/pages/Authentication/real_register.dart';

import '../../Theme/themecontroller.dart';

class LoginOption extends StatefulWidget {
  const LoginOption({Key? key}) : super(key: key);

  @override
  State<LoginOption> createState() => _LoginOptionState();
}

class _LoginOptionState extends State<LoginOption> {
  dynamic size;
double height = 0.00;
double width = 0.00;
  final themedata = Get.put(Themecontroler());
  List<String> imagelist = [PngImage.option1,PngImage.option2,PngImage.pagethreeimage,PngImage.option4];
  @override
  Widget build(BuildContext context) {
    size = MediaQuery.of(context).size;
    height = size.height;
    width = size.width;
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(
              horizontal: width / 46,vertical: height/200),
          child: Column(
            children: [
              GridView.builder(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                itemCount: 4,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    mainAxisSpacing: 10,
                    crossAxisSpacing: 10,
                    childAspectRatio: 3/3),
                itemBuilder: (context, index) {
                  return Container(
                      height: height / 1,
                      width: width / 4,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15)),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(15),
                        child: Image.asset(imagelist[index],fit: BoxFit.fitWidth,)),
                  );
                },
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: width / 66,vertical: height/36),
                child: Column(
                  children: [
                    Row(
                      children: [
                        Text("Prêt à ",style: lregular.copyWith(fontSize: 22,color: themedata.isdark
                            ? RealestateColor.white
                            : RealestateColor.indigo,),),
                        Text("explorer? ",style: lbold.copyWith(fontSize: 22,color: themedata.isdark
                            ? RealestateColor.white
                            : RealestateColor.darkgreen,),),
                      ],
                    ),
                    SizedBox(height: height/16,),
                    InkWell(
                      highlightColor: RealestateColor.transparent,
                      splashColor: RealestateColor.transparent,
                      onTap: () {
                        Navigator.push(context, MaterialPageRoute(builder: (context) {
                          return const RealLogin();
                        },));
                      },
                      child: Container(
                        height: height/14,
                        width: width/1.5,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: RealestateColor.lightgreen
                        ),
                        child: Row(mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            const Icon(Icons.email_outlined,color: RealestateColor.white,size: 20,),
                            SizedBox(width: width/46,),
                            Text("Continuer_avec_Email".tr,style: lbold.copyWith(fontSize: 16,color: RealestateColor.white),),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(height: height/16,),
                    Row(
                      children: [
                        Container(height:height/500,width: width/2.4, color: RealestateColor.lightgrey),
                        SizedBox(width: width/46,),
                        Text("OU",style: lsemibold.copyWith(fontSize: 10,color: RealestateColor.lightgrey),),
                        SizedBox(width: width/46,),
                        Container(height:height/500,width: width/2.4, color: RealestateColor.lightgrey),
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
                            child: Image.asset(PngImage.googlelogo,),
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
                              child: Image.asset(PngImage.facebooklogo,),
                            )
                        ),
                      ],
                    ),
                    SizedBox(height: height/16,),
                    Row(mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(" Vous n'avez pas un Compte".tr,style: lregular.copyWith(fontSize: 12,color: themedata.isdark
                            ? RealestateColor.white
                            : RealestateColor.indigo,),),
                        SizedBox(width: width/96,),
                        InkWell(
                          splashColor: RealestateColor.transparent,
                            highlightColor: RealestateColor.transparent,
                            onTap: () {
                            Navigator.push(context, MaterialPageRoute(builder: (context) {
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
              )
            ],
          ),
        ),
      ),
    );
  }
}
