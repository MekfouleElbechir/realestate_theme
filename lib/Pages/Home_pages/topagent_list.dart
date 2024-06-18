import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:realestate/Common%20class/color.dart';
import 'package:realestate/Common%20class/fontstyle.dart';
import 'package:realestate/Common%20class/icons.dart';
import 'package:realestate/pages/home_pages/profile_detail.dart';

import '../../Theme/themecontroller.dart';

class TopAgentList extends StatefulWidget {
  const TopAgentList({Key? key}) : super(key: key);

  @override
  State<TopAgentList> createState() => _TopAgentListState();
}

class _TopAgentListState extends State<TopAgentList> {
  dynamic size;
double height = 0.00;
double width = 0.00;
  final themedata = Get.put(Themecontroler());
  final List<String> topagentname = <String>[
    "El Khaliv",
    "Moustapha",
    "Mohammed",
    "AhmedSejad",
    "Oumeime",
    "Hamoudi",
  ];
  final List<String> topagentimg = <String>[
    PngImage.estate6,
    PngImage.estate7,
    PngImage.estate3,
    PngImage.estate4,
    PngImage.estate5,
    PngImage.estate8,
  ];
  final List<String> topagentlist = <String>[
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
          padding:  EdgeInsets.symmetric(horizontal: width/36,vertical: height/26),
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
                        color: RealestateColor.darkgreen,
                      )),
                ),
              ),
              SizedBox(height: height/36,),
              Text("Meilleur agent immobilier".tr,style: lbold.copyWith(fontSize: 25,color: themedata.isdark
                  ? RealestateColor.white
                  : RealestateColor.indigo,),),
              SizedBox(height: height/120,),
              Text("Trouvez les meilleures recommandations pour vivre".tr,style: lregular.copyWith(fontSize: 12,color: themedata.isdark
                  ? RealestateColor.white
                  : RealestateColor.indigo,),),
              GridView.builder(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                itemCount: topagentimg.length,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    childAspectRatio:  MediaQuery.of(context).size.aspectRatio * 3 / 1.9,
                    // mainAxisExtent: 200,
                    crossAxisSpacing: 10,
                    mainAxisSpacing: 10),
                itemBuilder: (context, index) {
                  return InkWell(
                    splashColor: RealestateColor.transparent,
                    highlightColor: RealestateColor.transparent,
                    onTap: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context) {
                        return const ProfileDetail();
                      },));
                    },
                    child: Container(
                      decoration: const  BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(25)),
                        color: RealestateColor.textfield,
                      ),
                      child: Padding(
                        padding: EdgeInsets.symmetric(
                            horizontal: width / 46, vertical: height / 66),
                        child: Column(
                          children: [
                            Row(
                              children: [
                                Container(
                                    height: height / 30,
                                    width: width / 14,
                                    margin: EdgeInsets.only(left: width/36),
                                    decoration: BoxDecoration(
                                        borderRadius:
                                        BorderRadius.circular(5),
                                        color: RealestateColor.lightgreen),
                                    child: Row(mainAxisAlignment: MainAxisAlignment.center,
                                      children: [
                                        Text("#",style: lsemibold.copyWith(fontSize: 8,color: RealestateColor.white),),
                                        Text(topagentlist[index].toString(),style: lsemibold.copyWith(fontSize: 12,color: RealestateColor.white),),
                                      ],
                                    )
                                  // SvgPicture.asset(SvgIcons.right_arrow,color: color.white,height: height/34,),
                                ),
                              ],
                            ),
                            CircleAvatar(
                              radius: 50,
                              backgroundImage: AssetImage(topagentimg[index].toString())
                            ),
                            SizedBox(
                                height: height / 23,
                                width: width / 2,
                                child: Center(
                                  child: Text(
                                    topagentname[index].toString(),
                                    style: lbold.copyWith(
                                        fontSize: 14, color: RealestateColor.indigo),
                                    maxLines: 2,
                                  ),
                                )),
                            Row(mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                const Icon(Icons.star_rounded,size: 12,color: RealestateColor.yellow,),
                                Text("4.9",style: lbold.copyWith(fontSize: 8,color: RealestateColor.grey),),
                                SizedBox(width: width/46,),
                                const Icon(Icons.home_filled,color: RealestateColor.darkgreen,size: 12,),
                                SizedBox(width: width/96,),
                                Text("112",style: lbold.copyWith(fontSize: 9,color: RealestateColor.grey),),
                                SizedBox(width: width/96,),
                                Text("vendu",style: lregular.copyWith(fontSize: 9,color: RealestateColor.grey),),
                              ],
                            )
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
