import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:get/get.dart';
import 'package:realestate/Common%20class/color.dart';
import 'package:realestate/Common%20class/fontstyle.dart';
import 'package:realestate/Common%20class/icons.dart';

import '../../../Theme/themecontroller.dart';

class Reviews extends StatefulWidget {
  const Reviews({Key? key}) : super(key: key);

  @override
  State<Reviews> createState() => _ReviewsState();
}

class _ReviewsState extends State<Reviews> {
  dynamic size;
double height = 0.00;
double width = 0.00;
  int selected = 0;
  final themedata = Get.put(Themecontroler());
  List<String> number = ["Tout","1","2","3","4","5","6","7","8","9"];
  final List<String> profileimg = <String>[
    PngImage.estate2,
    PngImage.estate6,
    PngImage.estate3,
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
                  SizedBox(width: width/3.5,),
                  Text("Commentaires".tr,style: lbold.copyWith(fontSize: 14,color: themedata.isdark
                      ? RealestateColor.white
                      : RealestateColor.indigo,),),
                ],
              ),
              SizedBox(
                height: height / 36,
              ),
              InkWell(
                highlightColor: RealestateColor.transparent,
                splashColor: RealestateColor.transparent,
                onTap: () {
                  // Navigator.push(context, MaterialPageRoute(
                  //   builder: (context) {
                  //     return FeaturedCategory();
                  //   },
                  // ));
                },
                child: Container(
                  height: height /5,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(25),
                    color: RealestateColor.textfield,
                  ),
                  child: Padding(
                    padding: EdgeInsets.symmetric(
                        horizontal: width / 46, vertical: height / 66),
                    child: Row(
                      children: [
                        Stack(children: [
                          ClipRRect(
                            borderRadius: BorderRadius.circular(15),
                            child: Image.asset(
                              PngImage.explore4,
                              width: width / 2,
                              height: height / 4.3,
                              fit: BoxFit.fitWidth,
                            ),
                          ),
                          Positioned(
                              top: 5,
                              left: 15,
                              child: Container(
                                  height: height / 25,
                                  width: width / 12,
                                  decoration: BoxDecoration(
                                      borderRadius:
                                      BorderRadius.circular(50),
                                      color: RealestateColor.textfield),
                                  child: const Center(
                                      child: Icon(
                                        Icons.favorite_outline,
                                        color: RealestateColor.radial,
                                        size: 15,
                                      ))
                                // SvgPicture.asset(SvgIcons.right_arrow,color: color.white,height: height/34,),
                              )),
                          Positioned(
                              bottom: 10,
                              left: 10,
                              child: Container(
                                  height: height / 25,
                                  decoration: BoxDecoration(
                                      borderRadius:
                                      BorderRadius.circular(10),
                                      color: RealestateColor.darkgreen),
                                  child: Center(
                                      child: Padding(
                                        padding: EdgeInsets.symmetric(
                                            horizontal: width / 34),
                                        child: Text(
                                          'Appartement',
                                          style: lmedium.copyWith(
                                              fontSize: 9,
                                              color: RealestateColor.white),
                                        ),
                                      ))
                                // SvgPicture.asset(SvgIcons.right_arrow,color: color.white,height: height/34,),
                              )),
                        ]),
                        SizedBox(
                          width: width / 46,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            SizedBox(
                                width: width / 3,
                                height: height / 18,
                                child: Text(
                                  "CenterRim Appartement",
                                  style: lbold.copyWith(
                                      fontSize: 12,
                                      color: RealestateColor.indigo),
                                  maxLines: 2,
                                )),
                            Row(
                              mainAxisAlignment:
                              MainAxisAlignment.start,
                              children: [
                                const Icon(
                                  Icons.star_rounded,
                                  color: RealestateColor.yellow,
                                  size: 15,
                                ),
                                Text(
                                  "4.9",
                                  style: lbold.copyWith(fontSize: 8,color: RealestateColor.grey),
                                ),
                              ],
                            ),
                            SizedBox(
                              width: width / 3,
                              height: height / 14,
                              child: Row(
                                children: [
                                  Icon(
                                    Icons.location_pin,
                                    color: RealestateColor.darkgreen,
                                    size: height / 66,
                                  ),
                                  Center(
                                      child: Text(
                                        "Nouakchott, TVZ",
                                        style:
                                        lregular.copyWith(fontSize: 8,color: RealestateColor.grey),
                                        maxLines: 3,
                                      ))
                                ],
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: height / 36,
              ),
              SizedBox(
                height: height / 18,
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
                            borderRadius: BorderRadius.circular(15)),
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
              Text("Commentaires d'utilisateurs".tr,style: lbold.copyWith(fontSize: 18,color: themedata.isdark
                  ? RealestateColor.white
                  : RealestateColor.indigo,),),
              ListView.builder(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                itemCount: profileimg.length,
                itemBuilder:(context, index) {
                  return  Container(
                    height: height/6,
                    margin: EdgeInsets.only(bottom: height/46),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
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
                                    Text("Emira BanBaa",style: lbold.copyWith(fontSize: 12,color: RealestateColor.indigo),),
                                    const Spacer(),
                                    RatingBar.builder(
                                      initialRating: 5,
                                      minRating: 1,
                                      direction: Axis.horizontal,
                                      allowHalfRating: true,
                                      itemCount: 5,
                                      itemSize: 15,
                                      itemBuilder: (context, _) => Image.asset(PngImage.star),
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
                  );
                },),
            ],
          ),
        ),
      ),
    );
  }
}
