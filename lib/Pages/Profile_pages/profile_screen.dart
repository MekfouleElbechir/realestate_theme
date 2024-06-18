import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:realestate/Common%20class/color.dart';
import 'package:realestate/Common%20class/fontstyle.dart';
import 'package:realestate/Common%20class/icons.dart';
import 'package:realestate/Pages/Profile_pages/setting_screen.dart';
import 'package:realestate/pages/Profile_pages/transaction_detail.dart';
import '../../Theme/themecontroller.dart';
import 'Add_listing/add_listing.dart';
import 'all_reviews.dart';
import 'edit_screen.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  dynamic size;
double height = 0.00;
double width = 0.00;
  int nameselected = 0;
  final List<String> name = <String>["Transaction", "Annonces", "Vendu"];
  final List<String> gridimg = <String>[
    PngImage.explore1,
    PngImage.explore2,
    PngImage.explore3,
    PngImage.explore5,
  ];
  final List<String> gridname = <String>[
    "Fairview Appartement",
    "Shoolview Maison",
    "Fairview Appartement",
    "Shoolview Maison",
  ];
  final List<String> exploreimg = <String>[
    PngImage.explore5,
    PngImage.explore9,
    PngImage.explore4,
    PngImage.explore7,
  ];
  final List<String> explorename = <String>[
    "Wings Tower",
    "Bridgeland Moderne Maison",
    "Wings Tower",
    "Bridgeland Moderne Maison",
  ];
  final themedata = Get.put(Themecontroler());
  @override
  Widget build(BuildContext context) {
    size = MediaQuery.of(context).size;
    height = size.height;
    width = size.width;
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding:  EdgeInsets.symmetric(horizontal: width / 36,vertical: height/22),
          child: Column(
            children: [
              Row(mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text("Profil".tr,style: lbold.copyWith(fontSize: 14,color: themedata.isdark
                      ? RealestateColor.white
                      : RealestateColor.indigo,),),
                  SizedBox(width: width/3.5,),
                  InkWell(
                    splashColor: RealestateColor.transparent,
                    highlightColor: RealestateColor.transparent,
                    onTap: () {
                     Navigator.push(context, MaterialPageRoute(builder: (context) {
                       return const Setting();
                     },));
                    },
                    child: Container(
                      height: height / 18,
                      width: height / 18,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(50),
                          color: RealestateColor.textfield),
                      child: const Center(
                          child: Icon(
                            Icons.settings_outlined,
                            size: 20,
                            color: RealestateColor.indigo,
                          )),
                    ),
                  ),
                ],
              ),
              SizedBox(height: height/36,),
              Stack(
                children: [
                  CircleAvatar(
                    radius: 55,
                    backgroundImage: AssetImage(
                      PngImage.profile,
                    ),
                  ),
                  Positioned(
                      bottom: 0,
                      right: 10,
                      child: InkWell(
                        splashColor: RealestateColor.transparent,
                        highlightColor: RealestateColor.transparent,
                        onTap: () {
                          Navigator.push(context, MaterialPageRoute(builder: (context) {
                            return const EditScreen();
                          },));
                        },
                        child: Container(
                          height: height / 23,
                          width: height / 23,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(50),
                            color: themedata.isdark
                                ? RealestateColor.white
                                : RealestateColor.darkgreen,),
                          child: Icon(Icons.mode_edit_outline_outlined,size: 14,color: themedata.isdark
                              ? RealestateColor.darkgreen
                              : RealestateColor.white,)
                        ),
                      ))
                ],
              ),
              SizedBox(height: height/96,),
              Text(
                "El Khaliv",
                style: lbold.copyWith(fontSize: 14,color: themedata.isdark
                    ? RealestateColor.white
                    : RealestateColor.indigo,),
              ),
              SizedBox(
                height: height /180,
              ),
              Text(
                "amanda.trust@email.com",
                style: lsemibold.copyWith(fontSize: 10,color: themedata.isdark
                    ? RealestateColor.white
                    : RealestateColor.grey,),
              ),
              SizedBox(
                height: height /46,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  InkWell(
                    splashColor: RealestateColor.transparent,
                    highlightColor: RealestateColor.transparent,
                    onTap: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context) {
                        return const AddListing();
                      },));
                    },
                    child: Container(
                      height: height / 11,
                      width: width / 3.4,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          color: RealestateColor.white,
                          boxShadow: const [
                            BoxShadow(
                              blurRadius: 1,
                              color: RealestateColor.grey,
                            )
                          ]
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "30",
                            style: lbold.copyWith(fontSize: 15,color: RealestateColor.indigo),
                          ),
                          SizedBox(height: height/150,),
                          Text(
                            "Annonces",
                            style: lmedium.copyWith(fontSize: 10,color: RealestateColor.indigo),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Container(
                    height: height / 11,
                    width: width /3.3,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        color: RealestateColor.white,
                        boxShadow: const [
                          BoxShadow(
                            blurRadius: 1,
                            color: RealestateColor.grey,
                          )
                        ]),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "12",
                          style: lsemibold.copyWith(fontSize: 15,color: RealestateColor.indigo),
                        ),
                        SizedBox(height: height/150,),
                        Text(
                          "Vendue",
                          style: lmedium.copyWith(fontSize: 10,color: RealestateColor.indigo),
                        ),
                      ],
                    ),
                  ),
                  InkWell(
                    splashColor: RealestateColor.transparent,
                    highlightColor: RealestateColor.transparent,
                    onTap: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context) {
                        return const AllReview();
                      },));
                    },
                    child: Container(
                      height: height / 11,
                      width: width / 3.3,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          color: RealestateColor.white,
                          boxShadow: const [
                             BoxShadow(
                              blurRadius: 1,
                              color: RealestateColor.grey,
                            )
                          ]),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "28",
                            style: lbold.copyWith(fontSize: 15,color: RealestateColor.indigo),
                          ),
                          SizedBox(height: height/150,),
                          Text(
                            "Commentaires",
                            style: lmedium.copyWith(fontSize: 10,color: RealestateColor.indigo),
                          ),
                        ],
                      ),
                    ),
                  )
                ],
              ),
              SizedBox(height: height / 36),
              Container(
                height: height /15,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(50),
                  color: RealestateColor.textfield,
                ),
                child:ListView.builder(
                  shrinkWrap: false,
                  physics:const NeverScrollableScrollPhysics(),
                  scrollDirection: Axis.horizontal,
                  itemCount: name.length,
                  itemBuilder: (context, index) {
                    return InkWell(
                      splashColor: RealestateColor.transparent,
                      highlightColor: RealestateColor.transparent,
                      onTap: () {
                        setState(() {
                          nameselected = index;
                        });
                      },
                      child: Padding(
                        padding:EdgeInsets.symmetric(horizontal: width/36,vertical: height/88),
                        child: Container(
                            width: width / 3.9,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(50),
                              color: nameselected == index ? RealestateColor.white :RealestateColor.transparent,
                            ),
                            child: Center(child: Text(name[index].toString(),style: lsemibold.copyWith(fontSize: 10,color:nameselected == index ? RealestateColor.indigo : RealestateColor.grey ),))),
                      ),
                    );
                  },) ,
              ),
              SizedBox(height: height / 36),
              if(nameselected == 0) ...[
                Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SizedBox(
                      height: height /18,
                      width: width / 2,
                      child: Row(
                        children: [
                          Text(
                            "30 ".tr,
                            style:
                            lbold.copyWith(fontSize: 18, color: themedata.isdark
                                ? RealestateColor.white
                                : RealestateColor.indigo,),
                          ),
                          Text(
                            "Transaction".tr,
                            style:
                            lmedium.copyWith(fontSize: 18, color: themedata.isdark
                                ? RealestateColor.white
                                : RealestateColor.indigo,),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      height: height /18,
                      width: width / 8,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(50),
                        color: RealestateColor.textfield,
                      ),
                      child:Padding(
                        padding:EdgeInsets.symmetric(horizontal: width/70,vertical: height/88),
                        child: Container(
                            width: width /15,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(50),
                              color: RealestateColor.white ,
                            ),
                            child: Padding(
                              padding: const EdgeInsets.all(4),
                              child: Image.asset(PngImage.verticalactive,height: height/34,),
                            )),
                      ),
                    )
                  ],
                ),
                GridView.builder(
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  itemCount: exploreimg.length,
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      mainAxisExtent: 250,
                      crossAxisSpacing: 10,
                      mainAxisSpacing: 10),
                  itemBuilder: (context, index) {
                    return InkWell(
                      splashColor: RealestateColor.transparent,
                      highlightColor: RealestateColor.transparent,
                      onTap: () {
                        Navigator.push(context, MaterialPageRoute(builder: (context) {
                          return const TranscationDetail();
                        },));
                      },
                      child: Container(
                        decoration: const BoxDecoration(
                          borderRadius:  BorderRadius.all(Radius.circular(25)),
                          color: RealestateColor.textfield,
                        ),
                        child: Padding(
                          padding: EdgeInsets.symmetric(
                              horizontal: width / 46, vertical: height / 66),
                          child: Column(
                            children: [
                              Stack(children: [
                                ClipRRect(
                                  borderRadius: BorderRadius.circular(25),
                                  child: Image.asset(
                                    exploreimg[index].toString(),
                                    width: width / 2,
                                    height: height / 4.3,
                                    fit: BoxFit.fitHeight,
                                  ),
                                ),
                                Positioned(
                                    top: 10,
                                    right: 10,
                                    child: Container(
                                        height: height / 25,
                                        width: width / 12,
                                        decoration: BoxDecoration(
                                            borderRadius:
                                            BorderRadius.circular(50),
                                            color: RealestateColor.textfield),
                                        child: const Center(
                                            child: Icon(
                                              Icons.favorite_border,
                                              color: RealestateColor.darkgreen,
                                              size: 15,
                                            ))
                                      // SvgPicture.asset(SvgIcons.right_arrow,color: color.white,height: height/34,),
                                    )),
                                Positioned(
                                    bottom: 10,
                                    right: 10,
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
                                              child: Row(
                                                children: [
                                                  Text(
                                                    "Louer",
                                                    style: lsemibold.copyWith(
                                                        fontSize: 12, color: RealestateColor.white),
                                                  ),
                                                ],
                                              ),
                                            ))
                                      // SvgPicture.asset(SvgIcons.right_arrow,color: color.white,height: height/34,),
                                    )),
                              ]),
                              SizedBox(
                                height: height / 170,
                              ),
                              SizedBox(
                                  height: height / 24,
                                  width: width / 2,
                                  child: Text(
                                    explorename[index].toString(),
                                    style: lbold.copyWith(
                                        fontSize: 12, color: RealestateColor.indigo),
                                    maxLines: 2,
                                  )),
                              const Spacer(),
                              Row(
                                children: [
                                  Image.asset(PngImage.clock,height: height/86,),
                                  SizedBox(
                                    width: width / 110,
                                  ),
                                  Text(
                                    "November 21, 2021",
                                    style: lbold.copyWith(fontSize: 10,color: RealestateColor.grey),
                                  ),
                                ],
                              )
                            ],
                          ),
                        ),
                      ),
                    );
                  },
                )
              ]else ...[
                Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SizedBox(
                      height: height /18,
                      width: width / 2,
                      child: Row(
                        children: [
                          Text(
                            "2 ".tr,
                            style:
                            lbold.copyWith(fontSize: 18, color: themedata.isdark
                                ? RealestateColor.white
                                : RealestateColor.indigo,),
                          ),
                          Text(
                            "Transaction".tr,
                            style:
                            lmedium.copyWith(fontSize: 18, color: themedata.isdark
                                ? RealestateColor.white
                                : RealestateColor.indigo,),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(width: width/16,),
                    Container(
                      height: height /18,
                      width: width / 8,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(50),
                        color: RealestateColor.textfield,
                      ),
                      child:Padding(
                        padding:EdgeInsets.symmetric(horizontal: width/70,vertical: height/88),
                        child: Container(
                            width: width /15,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(50),
                              color: RealestateColor.white ,
                            ),
                            child: Padding(
                              padding: const EdgeInsets.all(4.0),
                              child: Image.asset(PngImage.verticalactive,height: height/36,),
                            )),
                      ),
                    ),
                    Container(
                      height: height /18,
                      width: width / 9,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(50),
                        color: RealestateColor.darkgreen,
                      ),
                      child:const Center(
                        child: Icon(Icons.add,size: 20,color: RealestateColor.white,),
                      )
                    ),
                  ],
                ),
                GridView.builder(
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  itemCount: gridimg.length,
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      mainAxisExtent: 250,
                      crossAxisSpacing: 10,
                      mainAxisSpacing: 10),
                  itemBuilder: (context, index) {
                    return Container(
                      decoration: const BoxDecoration(
                        borderRadius:  BorderRadius.all(Radius.circular(25)),
                        color: RealestateColor.textfield,
                      ),
                      child: Padding(
                        padding: EdgeInsets.symmetric(
                            horizontal: width / 46, vertical: height / 76),
                        child: Column(
                          children: [
                            Stack(children: [
                              ClipRRect(
                                borderRadius: BorderRadius.circular(25),
                                child: Image.asset(
                                  gridimg[index].toString(),
                                  width: width / 2,
                                  height: height / 4.3,
                                  fit: BoxFit.fitHeight,
                                ),
                              ),
                              Positioned(
                                top: 10,
                                left: 10,
                                child:  Container(
                                  height: height / 25,
                                  width: width / 12,
                                  decoration: BoxDecoration(
                                      borderRadius:
                                      BorderRadius.circular(50),
                                      color: RealestateColor.lightgreen),
                                  child: const Center(
                                      child: Icon(
                                        Icons.mode_edit_outlined,
                                        color: RealestateColor.white,
                                        size: 15,
                                      ))
                                // SvgPicture.asset(SvgIcons.right_arrow,color: color.white,height: height/34,),
                              ),),
                              Positioned(
                                  top: 10,
                                  right: 10,
                                  child: Container(
                                      height: height / 25,
                                      width: width / 12,
                                      decoration: BoxDecoration(
                                          borderRadius:
                                          BorderRadius.circular(50),
                                          color: RealestateColor.textfield),
                                      child: const Center(
                                          child: Icon(
                                            Icons.favorite_border,
                                            color: RealestateColor.darkgreen,
                                            size: 15,
                                          ))
                                    // SvgPicture.asset(SvgIcons.right_arrow,color: color.white,height: height/34,),
                                  )),
                              Positioned(
                                  top: 130,
                                  right: 10,
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
                                            child: Row(
                                              children: [
                                                Text(
                                                  "\MRU 220",
                                                  style: lsemibold.copyWith(
                                                      fontSize: 12, color: RealestateColor.white),
                                                ),
                                                Text(
                                                  "/Mois",
                                                  style: lregular.copyWith(
                                                      fontSize: 6, color: RealestateColor.white),
                                                ),
                                              ],
                                            ),
                                          ))
                                    // SvgPicture.asset(SvgIcons.right_arrow,color: color.white,height: height/34,),
                                  )),
                            ]),
                            SizedBox(
                              height: height / 170,
                            ),
                            SizedBox(
                                height: height / 20,
                                width: width / 2,
                                child: Text(
                                  gridname[index].toString(),
                                  style: lbold.copyWith(
                                      fontSize: 12, color: RealestateColor.indigo),
                                  maxLines: 2,
                                )),
                            const Spacer(),
                            Row(
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
                                  size: height / 66,
                                ),
                                Text(
                                  "Nouakchott, TVZ",
                                  style: lregular.copyWith(fontSize: 8),
                                  maxLines: 3,
                                )
                              ],
                            )
                          ],
                        ),
                      ),
                    );
                  },
                ),
              ]
               ,
            ],
          ),
        ),
      ),
    );
  }
}
