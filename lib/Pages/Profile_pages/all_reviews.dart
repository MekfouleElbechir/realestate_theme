import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:get/get.dart';
import 'package:realestate/Common%20class/color.dart';
import 'package:realestate/Common%20class/fontstyle.dart';
import 'package:realestate/Common%20class/icons.dart';

import '../../Theme/themecontroller.dart';

class AllReview extends StatefulWidget {
  const AllReview({Key? key}) : super(key: key);

  @override
  State<AllReview> createState() => _AllReviewstate();
}

class _AllReviewstate extends State<AllReview> {
  dynamic size;
double height = 0.00;
double width = 0.00;
  final themedata = Get.put(Themecontroler());
  int selected = 0;
  List<String> number = ["All","1","2","3","4","5","6","7","8","9"];
  final List<String> exploreimg = <String>[
    PngImage.explore1,
    PngImage.explore2,
    PngImage.explore3,
  ];
  final List<String> profileimg = <String>[
    PngImage.estate3,
    PngImage.estate6,
    PngImage.estate2,
  ];
  @override
  Widget build(BuildContext context) {
    size = MediaQuery.of(context).size;
    height = size.height;
    width = size.width;
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(padding:EdgeInsets.symmetric(horizontal: width / 36,vertical: height/22),
          child: Column(crossAxisAlignment: CrossAxisAlignment.start,
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
                  SizedBox(width: width/4,),
                  Text("Tous les avis".tr,style: lbold.copyWith(fontSize: 14,color: themedata.isdark
                      ? RealestateColor.white
                      : RealestateColor.indigo,),),
                ],
              ),
              SizedBox(
                height: height / 36,
              ),
              Container(
                height: height / 10,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(25),
                    color: RealestateColor.textfield,
                ),
                child: Padding(
                  padding: EdgeInsets.symmetric(
                      vertical: height / 66, horizontal: width / 36),
                  child: Row(
                    children: [
                     CircleAvatar(
                       radius: 30,
                       backgroundImage: AssetImage(PngImage.profile),
                     ),
                      SizedBox(
                        width: width / 36,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "Mimi",
                            style: lbold.copyWith(
                                color: RealestateColor.indigo, fontSize: 14),
                          ),
                          SizedBox(
                            width: width / 1.7,
                            child: Text(
                              "Propriétaire",
                              style: lregular.copyWith(
                                  fontSize: 9, color: RealestateColor.grey),
                              maxLines: 1,
                              overflow: TextOverflow.ellipsis,
                            ),
                          )
                        ],
                      ),
                  SizedBox(
                    width: width / 36),
                      Image.asset(PngImage.chat,height: height/36,),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: height / 36,
              ),
              SizedBox(
                height: height / 20,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: number.length,
                  itemBuilder: (context, index) {
                    return InkWell(
                      highlightColor: RealestateColor.transparent,
                      splashColor: RealestateColor.transparent,
                      onTap: () {
                        setState(() {
                          selected = index;
                        });
                        },
                      child: Container(
                        // width: width/7,
                        margin: EdgeInsets.only(right: width / 36),
                        decoration: BoxDecoration(
                            color: selected == index
                                ? RealestateColor.darkgreen
                                : RealestateColor.textfield,
                            borderRadius: BorderRadius.circular(20)),
                        child: Padding(
                          padding: EdgeInsets.symmetric(
                              horizontal: width / 15),
                          child: Center(
                              child: Row(
                                children: [
                                  const Icon(Icons.star_rounded,color: RealestateColor.yellow,size:15 ,),
                                  SizedBox(width: width/36,),
                                  Text(
                                    number[index].toString(),
                                    style:  selected == index
                                        ? lbold.copyWith(fontSize: 10,color: RealestateColor.white)
                                        : lmedium.copyWith(fontSize: 10,color: RealestateColor.indigo),
                                  ),
                                ],
                              )),
                        ),
                      ),
                    );
                  },
                ),
              ),
              SizedBox(
                height: height / 26,
              ),
              Text("avis des utilisateurs".tr,style: lbold.copyWith(fontSize: 18,color: themedata.isdark
                  ? RealestateColor.white
                  : RealestateColor.indigo,),),
              ListView.builder(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                itemCount: exploreimg.length,
                itemBuilder:(context, index) {
                return Container(
                  height: height/4,
                  margin: EdgeInsets.only(bottom: height/46),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(25),
                      color: RealestateColor.white,
                      boxShadow: const [
                        BoxShadow(
                            blurRadius: 2,
                            color: RealestateColor.lightgrey
                        )
                      ]
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Padding(
                        padding:  EdgeInsets.symmetric(horizontal: width/20,vertical: height/75),
                        child: Row(
                          children: [
                            SizedBox(
                              height: height/18,
                              width: width/4,
                              child: ClipRRect(
                                  borderRadius: BorderRadius.circular(10),
                                  child: Image.asset(exploreimg[index].toString(),fit: BoxFit.fitWidth,)),
                            ),
                            SizedBox(width: width/36,),
                            Column(crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                SizedBox(
                                    width: width / 2,
                                    child: Text(
                                      "Appartement Fairview",
                                      style: lbold.copyWith(
                                          fontSize: 15, color: RealestateColor.indigo),
                                      maxLines: 1,
                                      overflow: TextOverflow.ellipsis,
                                    )),
                                Row(crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    const Icon(
                                      Icons.star_rounded,
                                      color: RealestateColor.darkgreen,
                                      size: 10,
                                    ),
                                    SizedBox(
                                      width: width / 110,
                                    ),
                                    Text(
                                      "4.9",
                                      style: lbold.copyWith(fontSize: 10,color: RealestateColor.grey),
                                    ),
                                    SizedBox(
                                      width: width / 46,
                                    ),
                                    Icon(
                                      Icons.location_pin,
                                      color: RealestateColor.darkgreen,
                                      size: height / 76,
                                    ),
                                    Text(
                                      "Nouakchott, TVZ",
                                      style: lregular.copyWith(fontSize: 8),
                                      maxLines: 3,
                                    )
                                  ],
                                )
                              ],
                            )
                          ],
                        ),
                      ),
                      Container(
                        height: height/6,
                        decoration: const BoxDecoration(
                          borderRadius:  BorderRadius.only(bottomRight: Radius.circular(25),bottomLeft: Radius.circular(25)),
                          color: RealestateColor.textfield,
                        ),
                        child: Padding(
                          padding:   EdgeInsets.symmetric(horizontal: width/36,vertical: height/76),
                          child: Row(crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              CircleAvatar(
                                radius: 25,
                                backgroundImage: AssetImage(profileimg[index].toString()),
                              ),
                              SizedBox(width: width/36,),
                              Column(crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                children: [
                                  SizedBox(
                                    width: width/1.4,
                                    child: Row(
                                      children: [
                                        Text("Sidi Camara",style: lbold.copyWith(fontSize: 12,color: RealestateColor.indigo),),
                                        const Spacer(),
                                        RatingBar.builder(
                                          initialRating: 5,
                                          minRating: 1,
                                          direction: Axis.horizontal,
                                          allowHalfRating: true,
                                          itemCount: 5,
                                          itemSize: 15,
                                          itemBuilder: (context, _) => const Icon(
                                            Icons.star_rounded,
                                            color: RealestateColor.darkgreen,
                                          ),
                                          onRatingUpdate: (rating) {
                                            // print(rating);
                                          },
                                        ),
                                      ],
                                    ),
                                  ),
                                  SizedBox(
                                    height: height/15,
                                    width: width/1.4,
                                    child: Text("Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. ",style: lregular.copyWith(fontSize: 10,color: RealestateColor.grey),
                                      maxLines: 3,
                                      overflow: TextOverflow.ellipsis,
                                    ),
                                  ),
                                  Text("il y a 10 minutes",style: lregular.copyWith(fontSize: 8,color: RealestateColor.darkgrey),)
                                ],
                              )
                            ],
                          ),
                        ),
                      )
                    ],
                  ),
                );
              },),
            ],
          ),
        ),
      ),
    );
  }
}
