import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:realestate/Common%20class/color.dart';
import 'package:realestate/Common%20class/fontstyle.dart';
import 'package:realestate/Common%20class/icons.dart';

import '../../../Theme/themecontroller.dart';

class ViewOnMap extends StatefulWidget {
  const ViewOnMap({Key? key}) : super(key: key);

  @override
  State<ViewOnMap> createState() => _ViewOnMapState();
}

class _ViewOnMapState extends State<ViewOnMap> {
  dynamic size;
double height = 0.00;
double width = 0.00;
  @override
  Widget build(BuildContext context) {
    size = MediaQuery.of(context).size;
    height = size.height;
    width = size.width;
    return Scaffold(
        body:  Stack(
          children: [
            Container(
              decoration: BoxDecoration(
                  image: DecorationImage(image: AssetImage(PngImage.map),
                    fit: BoxFit.cover,)
              ),
            ),
            Positioned(
              top: 30,
              left: 15,
              child:  InkWell(
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
                      color: RealestateColor.white),
                  child: const Center(
                      child: Icon(
                        Icons.chevron_left_outlined,
                        size: 25,
                        color: RealestateColor.indigo,
                      )),
                ),
              ),),
            Positioned(
              top: 80,
              left: 15,
              child: SizedBox(
                width: width/1.1,
                child:  SizedBox(
                  height: height/16,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: 4,
                    itemBuilder: (context, index) {
                      return InkWell(
                        splashColor: RealestateColor.transparent,
                        highlightColor: RealestateColor.transparent,
                        // onTap: () {
                        //   setState(() {
                        //     select = index;
                        //   });
                        // },
                        child:Container(
                          height: height / 20,
                          margin: EdgeInsets.only(right: width/46),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              color: RealestateColor.white),
                          child: Padding(
                            padding:  EdgeInsets.symmetric(horizontal: width/16),
                            child: Center(
                              child:  Text("2 Hôpital",style: lmedium.copyWith(fontSize:10,color: RealestateColor.indigo ),),
                            ),
                          ),
                        ),
                      );
                    },),
                ),
              ),),
            Positioned(
                bottom: 160,
                right: 15,
                child: Container(
                  height: height/18,
                  width: height/18,
                  decoration: BoxDecoration(
                    borderRadius:BorderRadius.circular(50),
                    color: RealestateColor.darkgreen,
                  ),
                  child: Center(
                      child: SvgPicture.asset(SvgIcons.goals,color: RealestateColor.white,height: height/36,)),
                )),
            Positioned(
              bottom:160,
              left: 15,
              child:  InkWell(
              highlightColor: RealestateColor.transparent,
              splashColor: RealestateColor.transparent,
              // onTap: () {
              //   _shownottomsheet();
              // },
              child: Container(
                height: height / 18,
                width: width / 2,
                decoration: BoxDecoration(
                  color: RealestateColor.white,
                  borderRadius: BorderRadius.circular(50),
                ),
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: width / 36),
                  child: Row(
                    children: [
                      Icon(
                        Icons.location_pin,
                        color: RealestateColor.darkgreen,
                        size: height / 56,
                      ),
                      SizedBox(
                        width: width/3.2,
                        child: Text(
                          "Nouakchott, TVZ",
                          style: lmedium.copyWith(fontSize: 10,color:RealestateColor.indigo),
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                        ),
                      ),
                      const Icon(
                        Icons.arrow_drop_down,
                        size: 20,
                        color: RealestateColor.darkgreen,
                      )
                    ],
                  ),
                ),
              ),
            ),),
            Positioned(
                bottom:20,
                left: 15,
                child: Container(
                  height: height/6,
                  width: width/1.1,
                  decoration: BoxDecoration(
                      borderRadius:BorderRadius.circular(20),
                      color: RealestateColor.white,
                      boxShadow: const [
                        BoxShadow(
                          blurRadius: 10,
                          color: RealestateColor.darkgrey,
                        )
                      ]
                  ),
                  child: Padding(
                    padding:  EdgeInsets.symmetric(horizontal: width/36,vertical: height/46),
                    child: Column(crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(" localisation détail".tr,style: lbold.copyWith(fontSize: 18,color: RealestateColor.indigo),),
                        SizedBox(height: height/76,),
                        Row(crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            const CircleAvatar(
                              radius: 25,
                              backgroundColor: RealestateColor.textfield,
                              child: Icon(Icons.location_on_outlined,size: 20,color: RealestateColor.indigo,),
                            ),
                            SizedBox(width: width/36,),
                            SizedBox(
                              width: width/1.5,
                              child: Text("MW9i3 40115",style: lregular.copyWith(fontSize: 12,color: RealestateColor.grey),maxLines: 2,overflow: TextOverflow.ellipsis,),),
                          ],
                        ),
                      ],
                    ),
                  ),
                )),
          ],
        ),
    );
  }
}
