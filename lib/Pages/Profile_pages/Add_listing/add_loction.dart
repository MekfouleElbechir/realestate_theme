import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:realestate/Common%20class/color.dart';
import 'package:realestate/Common%20class/fontstyle.dart';
import 'package:realestate/Common%20class/icons.dart';
import '../../../Theme/themecontroller.dart';
import 'add_photo.dart';

class AddLocation extends StatefulWidget {
  const AddLocation({Key? key}) : super(key: key);

  @override
  State<AddLocation> createState() => _AddLocationState();
}

class _AddLocationState extends State<AddLocation> {
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
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: width / 26, vertical: height / 22),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
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
                SizedBox(
                  width: width / 4,
                ),
                Text(
                  "Ajouter une annonce".tr,
                  style: lbold.copyWith(fontSize: 14, color: themedata.isdark
                      ? RealestateColor.white
                      : RealestateColor.indigo,),
                ),
              ],
            ),
            SizedBox(
              height: height / 26,
            ),
            Row(
              children: [
                Text("Où est le ",style: lmedium.copyWith(fontSize: 25,color: themedata.isdark
                    ? RealestateColor.white
                    : RealestateColor.indigo,),),
                Text("localisation?",style: lbold.copyWith(fontSize: 25,color: themedata.isdark
                    ? RealestateColor.white
                    : RealestateColor.darkgreen,),),
              ],
            ),
            SizedBox(
              height: height / 36,
            ),
            Row(crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const CircleAvatar(
                 radius: 25,
                 backgroundColor: RealestateColor.textfield,
                 child: Icon(Icons.location_on_outlined,size: 20,color: RealestateColor.indigo,),
               ),
                SizedBox(width: width/36,),
                SizedBox(
                  width: width/1.4,
                    child: Text("Jl. Cisangkuy, Citarum, Kec. Bandung Wetan, Kota Bandung, Jawa Barat 40115",style: lregular.copyWith(fontSize: 12,color: themedata.isdark
                        ? RealestateColor.white
                        : RealestateColor.grey,),maxLines: 2,overflow: TextOverflow.ellipsis,),),
              ],
            ),
            SizedBox(
              height: height / 36,
            ),
            Container(
              height: height/2.2,
              decoration: BoxDecoration(
                 borderRadius: BorderRadius.circular(25),
                color: RealestateColor.white,
                boxShadow:const [
                  BoxShadow(
                    blurRadius: 1,
                    color: RealestateColor.lightgrey
                  )
                ]
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  SizedBox(
                    height: height/2.5,
                    width: width/1,
                    child: ClipRRect(
                      borderRadius: const BorderRadius.only(topRight: Radius.circular(25),topLeft: Radius.circular(25)),
                        child: Image.asset(PngImage.map,fit: BoxFit.fitWidth,)),
                  ),
                  Container(
                    height: height/19,
                    decoration: BoxDecoration(
                        borderRadius: const BorderRadius.only(bottomRight: Radius.circular(20),bottomLeft: Radius.circular(20)),
                        color: RealestateColor.green,
                    ),
                    child: Center(child: Text("Sélectionnez sur la map",style: lregular.copyWith(fontSize: 12,color: RealestateColor.indigo),),),
                  )
                ],
              ),
            ),
            const Spacer(),
            Row(mainAxisAlignment: MainAxisAlignment.center,
              children: [
                InkWell(
                  splashColor: RealestateColor.transparent,
                  highlightColor: RealestateColor.transparent,
                  onTap: () {
                    Navigator.pop(context);
                  },
                  child: Container(
                    height: height / 18,
                    width: height / 18,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(50),
                        color: RealestateColor.textfield,
                        boxShadow: const [
                          BoxShadow(
                              blurRadius: 30,
                              color: RealestateColor.lightgreen
                          )
                        ]
                    ),
                    child: const Center(
                        child: Icon(Icons.arrow_back,color: RealestateColor.black,size: 20,)),
                  ),
                ),
                SizedBox(width: width/16,),
                InkWell(
                  highlightColor: RealestateColor.transparent,
                  splashColor: RealestateColor.transparent,
                  onTap: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) {
                      return const AddPhoto();
                    },));
                  },
                  child: Container(
                    height: height/16,
                    width: width/2,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: RealestateColor.lightgreen
                    ),
                    child: Center(child: Text("Suivant".tr,style: lbold.copyWith(fontSize: 16,color: RealestateColor.white),)),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
