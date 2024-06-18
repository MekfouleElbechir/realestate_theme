import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:realestate/Common%20class/color.dart';
import 'package:realestate/Common%20class/fontstyle.dart';
import 'package:realestate/Common%20class/icons.dart';
import 'package:realestate/pages/home_pages/Search_result/view_on_map.dart';

import '../../../Theme/themecontroller.dart';
import '../Transation_flow/transation_review.dart';
import 'gallery_screen.dart';
import 'Reviews.dart';

class SearchDetails extends StatefulWidget {
  const SearchDetails({Key? key}) : super(key: key);

  @override
  State<SearchDetails> createState() => _SearchDetailsState();
}

class _SearchDetailsState extends State<SearchDetails> {
  dynamic size;
  double height = 0.00;
  double width = 0.00;
  final themedata = Get.put(Themecontroler());
  int select = 0;
  int loctionselect = 0;
  List<String> name = ["Louer","Acheter"];
  List<String> reviewimg = [PngImage.estate6,PngImage.estate4];
  final List<String> listimg = <String>[
    PngImage.bedroom,
    PngImage.bathroom,
    PngImage.waterdrop,
  ];
  final List<String> locationname = <String>[
    "2 Hôpital","4 Les stations-service","2 Écoles"
  ];
  final List<String> listname = <String>[
    "2 Chambre à coucher","1 Salle de bain","2 Chambre à coucher"
  ];
  final List<String> exploreimg = <String>[
    PngImage.explore3,
    PngImage.explore4,
    PngImage.explore2,
    PngImage.explore1,
  ];
  final List<String> explorename = <String>[
    "Modamed ",
    "Hamadi Maison",
    "Bechir Maison",
    "CenterRim Appartement",
  ];
  @override
  Widget build(BuildContext context) {
    size = MediaQuery.of(context).size;
    height = size.height;
    width = size.width;
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.only(left: width / 36,right:  width / 36,bottom:  height / 9),
          child: Column(crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: height/26,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
                  InkWell(
                    splashColor: RealestateColor.transparent,
                    highlightColor: RealestateColor.transparent,
                    // onTap: () {
                    //   Navigator.pop(context);
                    // },
                    child: Container(
                      height: height / 20,
                      width: height / 20,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(50),
                          color: RealestateColor.textfield),
                      child: Center(
                          child:SvgPicture.asset(SvgIcons.export,color: RealestateColor.indigo,)),
                    ),
                  ),
                ],
              ),
              SizedBox(height: height/66,),
              Stack(
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(20),
                    child: Image.asset(PngImage.featuredlist1,fit: BoxFit.fitHeight,height: height/1.5,),
                  ),
                  Positioned(
                    top: 20,
                    right: 15,
                    child:  InkWell(
                      splashColor: RealestateColor.transparent,
                      highlightColor: RealestateColor.transparent,
                      // onTap: () {
                      //   Navigator.pop(context);
                      // },
                      child: Container(
                        height: height / 20,
                        width: height / 20,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(50),
                            color: RealestateColor.lightgreen),
                        child: const Center(
                            child: Icon(
                              Icons.favorite,
                              size: 15,
                              color: RealestateColor.white,
                            )),
                      ),
                    ),),
                  Positioned(
                    bottom: 25,
                    left: 15,
                    child:  InkWell(
                      splashColor: RealestateColor.transparent,
                      highlightColor: RealestateColor.transparent,
                      // onTap: () {
                      //   Navigator.pop(context);
                      // },
                      child: Container(
                        height: height / 20,
                        width: width / 5,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(50),
                            color: RealestateColor.darkgreen),
                        child: Row(mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Image.asset(PngImage.star,height: height/66,),
                            SizedBox(width: width/76,),
                            Text("4.9",style: lbold.copyWith(fontSize:12,color: RealestateColor.white ),)
                          ],
                        ),
                      ),
                    ),),
                  Positioned(
                    bottom: 25,
                    left: 100,
                    child:  InkWell(
                      splashColor: RealestateColor.transparent,
                      highlightColor: RealestateColor.transparent,
                      // onTap: () {
                      //   Navigator.pop(context);
                      // },
                      child: Container(
                        height: height / 20,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(50),
                            color: RealestateColor.darkgreen),
                        child:Padding(
                          padding: EdgeInsets.symmetric(horizontal: height/36),
                          child: Center(
                            child: Text("Appartement",style: lbold.copyWith(fontSize:12,color: RealestateColor.white),
                          )
                      ),
                        ),
                    ),)),
                  Positioned(
                    bottom: 25,
                    right: 15,
                    child:  InkWell(
                      splashColor: RealestateColor.transparent,
                      highlightColor: RealestateColor.transparent,
                      onTap: () {
                        Navigator.push(context, MaterialPageRoute(builder: (context) {
                          return const GalleryScreen();
                        },));
                      },
                      child: Container(
                        height: height/12,
                        width: width/6,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: RealestateColor.white
                        ),
                        child: Padding(
                          padding:  const EdgeInsets.all(3),
                          child: ClipRRect(
                              borderRadius: BorderRadius.circular(10),
                              child: Stack(
                                children: [
                                  Image.asset(PngImage.pageoneimage,fit: BoxFit.fitWidth,width: width/1,),
                                  Positioned(child: Center(
                                    child: Text("+3",style: lmedium.copyWith(fontSize: 18,color: RealestateColor.white),),
                                  ))
                                ],
                              )),
                        ),
                      )),
                  ),
                  Positioned(
                    bottom: 95,
                    right: 15,
                    child:  InkWell(
                      splashColor: RealestateColor.transparent,
                      highlightColor: RealestateColor.transparent,
                      // onTap: () {
                      //   Navigator.pop(context);
                      // },
                      child:Container(
                        height: height/12,
                        width: width/6,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: RealestateColor.white
                        ),
                        child: Padding(
                          padding:  const EdgeInsets.all(3),
                          child: ClipRRect(
                              borderRadius: BorderRadius.circular(10),
                              child: Image.asset(PngImage.explore4,fit: BoxFit.fitWidth,)),
                        ),
                      )),
                  ),
                  Positioned(
                    bottom: 165,
                    right: 15,
                    child:  InkWell(
                      splashColor: RealestateColor.transparent,
                      highlightColor: RealestateColor.transparent,
                      // onTap: () {
                      //   Navigator.pop(context);
                      // },
                      child:Container(
                        height: height/12,
                        width: width/6,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: RealestateColor.white
                        ),
                        child: Padding(
                          padding:  const EdgeInsets.all(3),
                          child: ClipRRect(
                              borderRadius: BorderRadius.circular(10),
                              child: Image.asset(PngImage.explore7,fit: BoxFit.fitWidth,)),
                        ),
                      )),
                  ),
                ],
              ),
              SizedBox(height: height/96,),
              Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Melike sidi",style: lbold.copyWith(fontSize: 20,color: themedata.isdark
                      ? RealestateColor.white
                      : RealestateColor.indigo,),),
                  Text("\MRU 220",style: lbold.copyWith(fontSize: 20,color: themedata.isdark
                      ? RealestateColor.white
                      : RealestateColor.indigo,),),
                ],
              ),
              SizedBox(height: height/96,),
              Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Icon(Icons.location_on,size: 15,color: themedata.isdark
                      ? RealestateColor.white
                      : RealestateColor.darkgreen,),
                  SizedBox(
                    width: width/1.4,
                      child: Text("Nouakchott, TVZ",style: lbold.copyWith(fontSize: 12,color: themedata.isdark
                          ? RealestateColor.white
                          : RealestateColor.grey,),maxLines: 1,overflow: TextOverflow.ellipsis,)),
                  Text("Par Mois",style: lbold.copyWith(fontSize: 12,color: themedata.isdark
                      ? RealestateColor.white
                      : RealestateColor.grey,),),
                ],
              ),
              SizedBox(height: height/46,),
              Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SizedBox(
                    height: height/16,
                    width: width/2,
                    child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      physics: const NeverScrollableScrollPhysics(),
                      itemCount: 2,
                      itemBuilder: (context, index) {
                      return InkWell(
                        splashColor: RealestateColor.transparent,
                        highlightColor: RealestateColor.transparent,
                        onTap: () {
                          setState(() {
                            select = index;
                          });
                        },
                        child: Container(
                          margin: EdgeInsets.only(right: width/16),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              color: select == index ? RealestateColor.lightgreen : RealestateColor.textfield),
                          child:Padding(
                            padding: EdgeInsets.symmetric(horizontal: height/36),
                            child: Center(
                                child: Text(name[index].toString(),style: lbold.copyWith(fontSize:12,color: select == index ?RealestateColor.white : RealestateColor.indigo ),
                                )
                            ),
                          ),
                        ),
                      );
                    },),
                  ),
                  Container(
                    height: height / 20,
                    width: height / 20,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(50),
                        color: RealestateColor.textfield),
                    child: Center(
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Image.asset(PngImage.degry),
                        )),
                  ),
                ],
              ),
              SizedBox(height: height/46,),
              const Divider(),
              SizedBox(height: height/46,),
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
                        backgroundImage: AssetImage(PngImage.estate6),
                      ),
                      SizedBox(
                        width: width / 36,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "Khadija",
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
              SizedBox(height: height/46,),
              SizedBox(
                height: height/18,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: listimg.length,
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
                            borderRadius: BorderRadius.circular(50),
                            color: RealestateColor.textfield),
                        child: Padding(
                          padding:  EdgeInsets.symmetric(horizontal: width/16),
                          child: Row(mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Image.asset(listimg[index].toString(),height: height/46,),
                              SizedBox(width: width/76,),
                              Text(listname[index].toString(),style: lmedium.copyWith(fontSize:12,color: RealestateColor.indigo ),)
                            ],
                          ),
                        ),
                      ),
                    );
                  },),
              ),
              SizedBox(height: height/20,),
              Text("Localisation _Public_Facilités".tr,style: lbold.copyWith(fontSize: 18,color: themedata.isdark
                  ? RealestateColor.white
                  : RealestateColor.indigo,),),
              SizedBox(height: height/96,),
              Row(crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const CircleAvatar(
                    radius: 25,
                    backgroundColor: RealestateColor.textfield,
                    child: Icon(Icons.location_on_outlined,size: 20,color: RealestateColor.indigo,),
                  ),
                  SizedBox(width: width/36,),
                  SizedBox(
                    width: width/1.3,
                    child: Text("Mw9i3 40115",style: lregular.copyWith(fontSize: 12,color: themedata.isdark
                        ? RealestateColor.white
                        : RealestateColor.grey,),maxLines: 2,overflow: TextOverflow.ellipsis,),),
                ],
              ),
              SizedBox(height: height/46,),
              InkWell(
                splashColor: RealestateColor.transparent,
                highlightColor: RealestateColor.transparent,
                onTap: () {
                  _showlocationsheet();
                },
                child: Container(
                  height: height / 18,
                  decoration: BoxDecoration(
                    color: RealestateColor.white,
                    boxShadow: const [
                      BoxShadow(color: RealestateColor.lightgrey, blurRadius: 1)
                    ],
                    borderRadius: BorderRadius.circular(50),
                  ),
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: width / 36),
                    child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Icon(
                          Icons.location_pin,
                          color: RealestateColor.darkgreen,
                          size: height / 36,
                        ),
                        SizedBox(
                          width: width/1.5,
                          child: Text(
                            "2.5km depuis votre localisation",
                            style: lmedium.copyWith(fontSize: 12,color:RealestateColor.indigo),
                            maxLines: 1,
                            overflow: TextOverflow.ellipsis,
                          ),
                        ),
                        const Icon(
                          Icons.keyboard_arrow_down,
                          size: 20,
                          color: RealestateColor.darkgreen,
                        )
                      ],
                    ),
                  ),
                ),
              ),
              SizedBox(height: height/46,),
              SizedBox(
                height: height/16,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: locationname.length,
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
                            color: RealestateColor.textfield),
                        child: Padding(
                          padding:  EdgeInsets.symmetric(horizontal: width/16),
                          child: Center(
                            child:  Text(locationname[index].toString(),style: lmedium.copyWith(fontSize:10,color: RealestateColor.indigo ),),
                          ),
                        ),
                      ),
                    );
                  },),
              ),
              SizedBox(height: height/46,),
              Container(
                height: height/3.5,
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
                      height: height/4.3,
                      width: width/1,
                      child: ClipRRect(
                          borderRadius: const BorderRadius.only(topRight: Radius.circular(25),topLeft: Radius.circular(25)),
                          child: Image.asset(PngImage.map,fit: BoxFit.fitWidth,)),
                    ),
                    InkWell(
                      splashColor: RealestateColor.transparent,
                      highlightColor: RealestateColor.transparent,
                      onTap: () {
                        Navigator.push(context, MaterialPageRoute(builder: (context) {
                          return const ViewOnMap();
                        },));
                      },
                      child: Container(
                        height: height/19,
                        decoration: const BoxDecoration(
                          borderRadius:  BorderRadius.only(bottomRight: Radius.circular(20),bottomLeft: Radius.circular(20)),
                          color: RealestateColor.lightgrey,
                        ),
                        child: Center(child: Text("Voir tout sur la  map",style: lregular.copyWith(fontSize: 12,color: RealestateColor.indigo),),),
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(height: height/46,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Coût de la vie".tr,
                    style: lbold.copyWith(fontSize: 18,color: themedata.isdark
                        ? RealestateColor.white
                        : RealestateColor.indigo,),
                  ),
                  InkWell(
                    splashColor: RealestateColor.transparent,
                    highlightColor: RealestateColor.transparent,
                    onTap: () {
                      // Navigator.push(context, MaterialPageRoute(builder: (context) {
                      //   return FeaturedList();
                      // },));
                    },
                    child: Text(
                      "Commentaires détails".tr,
                      style: lsemibold.copyWith(
                          fontSize: 10, color: themedata.isdark
                          ? RealestateColor.white
                          : RealestateColor.darkgreen,),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: height / 46,
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
                  child: Column(crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Row(
                        children: [
                         Text("\MRU 830",style: lbold.copyWith(fontSize: 18,color: RealestateColor.indigo),),
                          Text("/Mois",style: lregular.copyWith(fontSize: 9,color: RealestateColor.indigo),),
                        ],
                      ),
                      Text("*Sur la base des dépenses d'un citoyen moyen autour de cet endroit",style: lbold.copyWith(fontSize: 9,color: RealestateColor.grey),),
                    ],
                  ),
                ),
              ),
              SizedBox(height: height/26,),
              Text("Commentaires".tr,style: lbold.copyWith(fontSize: 18,color: themedata.isdark
                  ? RealestateColor.white
                  : RealestateColor.indigo,),),
              SizedBox(height: height/36,),
              Container(
                height: height / 10,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(25),
                  color: RealestateColor.lightgrey,
                ),
                child: Padding(
                  padding: EdgeInsets.symmetric(
                      vertical: height / 66, horizontal: width / 36),
                  child: Row(
                    children: [
                      Container(
                          height: height / 14,
                          width: width / 7,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              color: Colors.black26),
                          child: Center(
                              child: Image.asset(PngImage.star,height: height/26,))
                        // SvgPicture.asset(SvgIcons.right_arrow,color: color.white,height: height/34,),
                      ),
                      SizedBox(
                        width: width / 36,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              RatingBar.builder(
                                initialRating: 5,
                                minRating: 1,
                                direction: Axis.horizontal,
                                allowHalfRating: true,
                                itemCount: 5,
                                itemSize: 12,
                                itemBuilder: (context, _) => Image.asset(PngImage.star),
                                onRatingUpdate: (rating) {
                                  // print(rating);
                                },
                              ),
                              SizedBox(
                                width: width / 96,
                              ),
                              Text("4.0",style: lbold.copyWith(fontSize: 18,color: RealestateColor.indigo),)
                            ],
                          ),
                          Text(
                            "À partir de 12 évaluateurs",
                            style: lregular.copyWith(
                                fontSize: 9, color: RealestateColor.grey),
                            maxLines: 1,
                            overflow: TextOverflow.ellipsis,
                          ),
                        ],
                      ),
                      const Spacer(),
                      Stack(
                        fit: StackFit.loose,
                        children: [
                          SizedBox(
                            width: width/3,
                            child: CircleAvatar(
                              radius: 20,
                              // backgroundColor: color.white,
                              // child: CircleAvatar(
                              //   radius: 18,
                                backgroundImage: AssetImage(PngImage.estate1),
                              // ),
                            ),
                          ),
                          Positioned(
                          right: 70,
                              child:  CircleAvatar(
                            radius: 20,
                            // backgroundColor: color.white,
                            // child: CircleAvatar(
                            //   radius: 18,
                              backgroundImage: AssetImage(PngImage.estate1),
                            // ),
                          )),
                          Positioned(
                            right: 10,
                              child:  CircleAvatar(
                            radius: 20,
                            // backgroundColor: color.white,
                            // child: CircleAvatar(
                            //   radius: 18,
                              backgroundImage: AssetImage(PngImage.estate7),
                            // ),
                          )),
                        ],
                      )
                    ],
                  ),
                ),
              ),
              ListView.builder(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                itemCount: reviewimg.length,
                itemBuilder:(context, index) {
                  return  Container(
                    height: height/6,
                    margin: EdgeInsets.only(bottom: height/46),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(25),
                      color: RealestateColor.textfield,
                    ),
                    child: Padding(
                      padding:   EdgeInsets.symmetric(horizontal: width/36,vertical: height/76),
                      child: Row(crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          CircleAvatar(
                            radius: 25,
                            backgroundImage: AssetImage(reviewimg[index].toString()),
                          ),
                          SizedBox(width: width/36,),
                          Column(crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              SizedBox(
                                width: width/1.4,
                                child: Row(
                                  children: [
                                    Text("Melike sidi",style: lbold.copyWith(fontSize: 12,color: RealestateColor.indigo),),
                                    const Spacer(),
                                    RatingBar.builder(
                                      initialRating: 5,
                                      minRating: 1,
                                      direction: Axis.horizontal,
                                      allowHalfRating: true,
                                      itemCount: 5,
                                      itemSize: 15,
                                      itemBuilder: (context, _) => Image.asset(
                                        PngImage.star,
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
                  );
                },),
              InkWell(
                splashColor: RealestateColor.transparent,
                highlightColor: RealestateColor.transparent,
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return const Reviews();
                  },));
                },
                child: Container(
                  height: height/18,
                  decoration: BoxDecoration(
                    color: RealestateColor.textfield,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Center(
                    child: Text("Voir tout détails".tr,style: lsemibold.copyWith(fontSize: 10,color: RealestateColor.darkgreen),),
                  ),
                ),
              ),
              SizedBox(height: height/26,),
              Text("À proximité_de_ce_localisation".tr,style: lbold.copyWith(fontSize: 18,color: themedata.isdark
                  ? RealestateColor.white
                  : RealestateColor.indigo,),),
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
                  return Container(
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
                                          color: RealestateColor.radial,
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
                              height: height / 26,
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
                              const Icon(
                                Icons.star_rounded,
                                color: RealestateColor.yellow,
                                size: 15,
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
                                color: RealestateColor.orenge,
                                size: height / 76,
                              ),
                              Text(
                                "Nouakchott, Sokokk",
                                style: lregular.copyWith(fontSize: 8,color: RealestateColor.black),
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
            ],
          ),
        ),
      ),
      bottomSheet: Container(
        color:Colors.transparent,
        height: height/10,
        child: Padding(
          padding:  EdgeInsets.symmetric(horizontal: width / 20, vertical: height /66),
          child: Center(
            child: InkWell(
              splashColor: RealestateColor.transparent,
              highlightColor: RealestateColor.transparent,
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return const TransationReview();
                },));
              },
              child: Container(
                width: width / 1.5,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: RealestateColor.lightgreen),
                child: Center(
                    child: Text(
                      "Acheter maintenant".tr,
                      style: lbold.copyWith(fontSize: 16, color: RealestateColor.white),
                    )),
              ),
            ),
          ),
        ),
      ),
    );
  }
  _showlocationsheet() {
    showModalBottomSheet(
      backgroundColor: RealestateColor.transparent,
      context: context,
      builder: (BuildContext context) {
        return StatefulBuilder(
          builder: (BuildContext context, StateSetter setState) {
            return Container(
              height: height/2.4,
              decoration: const BoxDecoration(
                  borderRadius:  BorderRadius.only(topRight:Radius.circular(50),topLeft: Radius.circular(50)),
                  color: RealestateColor.white),
              child: Padding(
                padding: EdgeInsets.symmetric(
                    horizontal: width / 26, vertical: height / 66),
                child: Column(
                  children: [
                    const Divider(
                      indent: 130,
                      thickness: 1.5,
                      color: RealestateColor.grey,
                      endIndent: 130,
                    ),
                    SizedBox(
                      height: height / 36,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("Localisation Distance",
                            style: lbold.copyWith(
                                fontSize: 18, color: RealestateColor.indigo)),
                        InkWell(
                          splashColor: RealestateColor.transparent,
                          highlightColor: RealestateColor.transparent,
                          onTap: () {
                            Navigator.pop(context);
                          },
                          child: Container(
                            width: width / 5,
                            height: height / 18,
                            margin: EdgeInsets.only(right: width / 36),
                            decoration: BoxDecoration(
                                color: RealestateColor.lightgreen,
                                borderRadius: BorderRadius.circular(20)),
                            child: Padding(
                              padding:
                              EdgeInsets.symmetric(horizontal: width / 15),
                              child: Center(
                                  child: Text(
                                    "Modifier".tr,
                                    style: lmedium.copyWith(
                                        fontSize: 10, color: RealestateColor.white),
                                  )),
                            ),
                          ),
                        )
                      ],
                    ),
                    SizedBox(
                      height: height / 36,
                    ),
                    SizedBox(
                      height: height / 4.2,
                      child: ListView.builder(
                        itemCount: 4,
                        itemBuilder: (context, index) {
                          return InkWell(
                            splashColor: RealestateColor.transparent,
                            highlightColor: RealestateColor.transparent,
                            onTap: () {
                              setState(() {
                                loctionselect = index;
                              });
                            },
                            child: Container(
                              height: height / 10,
                              margin: EdgeInsets.only(top: height/150,right: width/46,left: width/46 ,bottom: height/96),
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(25),
                                  color: loctionselect == index ? RealestateColor.darkgreen : RealestateColor.white,
                                  boxShadow: const [
                                    BoxShadow(
                                        blurRadius: 1,
                                        color: RealestateColor.grey
                                    )
                                  ]
                              ),
                              child: Padding(
                                padding:  EdgeInsets.symmetric(vertical: height/66,horizontal: width/36),
                                child: Row(
                                  children: [
                                    Container(
                                        height: height / 14,
                                        width: width / 7,
                                        decoration: BoxDecoration(
                                            borderRadius:
                                            BorderRadius.circular(50),
                                            color: loctionselect == index ? RealestateColor.lightwhite : RealestateColor.textfield),
                                        child: Center(
                                            child: Icon(Icons.location_on ,
                                              color: loctionselect == index ? RealestateColor.white : RealestateColor.grey,
                                              size: 20,
                                            ))
                                      // SvgPicture.asset(SvgIcons.right_arrow,color: color.white,height: height/34,),
                                    ),
                                    SizedBox(width: width/36,),
                                    SizedBox(
                                      height: height / 12,
                                      width: width / 1.7,
                                      child: Center(
                                        child: Text(
                                          "MW9i3 11630",
                                          style: lregular.copyWith(
                                              fontSize: 12, color: loctionselect == index ? RealestateColor.white : RealestateColor.grey),
                                          maxLines: 3,
                                          overflow: TextOverflow.ellipsis,
                                        ),
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            ),
                          );
                        },
                      ),
                    ),
                  ],
                ),
              ),
            );
          },
        );
      },
    );
  }
}
