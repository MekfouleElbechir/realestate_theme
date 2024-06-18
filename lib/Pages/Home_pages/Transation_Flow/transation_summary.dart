import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:realestate/Common%20class/color.dart';
import 'package:realestate/Common%20class/fontstyle.dart';
import 'package:realestate/Common%20class/icons.dart';

import '../../../Theme/themecontroller.dart';

class TransationSummary extends StatefulWidget {
  const TransationSummary({Key? key}) : super(key: key);

  @override
  State<TransationSummary> createState() => _TransationSummaryState();
}

class _TransationSummaryState extends State<TransationSummary> {
  dynamic size;
double height = 0.00;
double width = 0.00;
  final themedata = Get.put(Themecontroler());
  final List image = [PngImage.mastercardsquare,PngImage.visasquare,PngImage.mastercardsquare,PngImage.visasquare];
  @override
  Widget build(BuildContext context) {
    size = MediaQuery.of(context).size;
    height = size.height;
    width = size.width;
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(padding: EdgeInsets.symmetric( horizontal: width / 36, vertical: height / 22),
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
                  SizedBox(
                    width: width / 6,
                  ),
                  Text(
                    "Récapitulatif des transactions".tr,
                    style: lbold.copyWith(fontSize: 14, color: themedata.isdark
                        ? RealestateColor.white
                        : RealestateColor.indigo,),
                  ),
                ],
              ),
              SizedBox(
                height: height / 36,
              ),
              Container(
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
                          borderRadius: BorderRadius.circular(25),
                          child: Image.asset(
                            PngImage.pageoneimage,
                            width: width / 1.9,
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
                                    borderRadius: BorderRadius.circular(50),
                                    color: RealestateColor.textfield),
                                child: const Center(
                                    child: Icon(
                                      Icons.favorite_outline,
                                      color: RealestateColor.darkgreen,
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
                                    borderRadius: BorderRadius.circular(10),
                                    color: RealestateColor.darkgreen),
                                child: Center(
                                    child: Padding(
                                      padding: EdgeInsets.symmetric(
                                          horizontal: width / 34),
                                      child: Text(
                                        "Appartement",
                                        style: lmedium.copyWith(
                                            fontSize: 9, color: RealestateColor.white),
                                      ),
                                    ))
                              // SvgPicture.asset(SvgIcons.right_arrow,color: color.white,height: height/34,),
                            )),
                      ]),
                      SizedBox(
                        width: width / 26,
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
                                    fontSize: 12, color: RealestateColor.indigo),
                                maxLines: 2,
                              )),
                          SizedBox(
                            width: width / 3,
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Icon(
                                  Icons.location_pin,
                                  color: RealestateColor.darkgreen,
                                  size: height / 46,
                                ),
                                Text(
                                  "Nuakchott , Arafatt",
                                  style: lregular.copyWith(fontSize: 8,color: RealestateColor.black),
                                  maxLines: 1,
                                  overflow: TextOverflow.ellipsis,
                                )
                              ],
                            ),
                          ),

                          Padding(
                            padding: EdgeInsets.only(left: width / 6, top: height/36),
                            child: Container(
                              height: height / 20,
                              width: width / 6,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(50),
                                color: RealestateColor.white,
                              ),
                              child: Center(
                                  child: Text(
                                    "Louer",
                                    style: lmedium.copyWith(
                                        fontSize: 10, color: RealestateColor.indigo),
                                  )),
                            ),
                          )
                        ],
                      )
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: height / 26,
              ),
              Text("Méthode de paiement".tr,style: lbold.copyWith(fontSize: 18,color: themedata.isdark
                  ? RealestateColor.white
                  : RealestateColor.indigo,),),
              SizedBox(
                height: height / 36,
              ),
              Container(
                height: height / 4,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(25),
                  color: RealestateColor.white,
                  boxShadow: const [
                    BoxShadow(
                        blurRadius: 3,
                        color: RealestateColor.lightgrey
                    )
                  ],
                ),
                child: Column(mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: width/26,vertical: height/46),
                      child:Column(
                        children: [
                          Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text("période de temps".tr,style: lregular.copyWith(fontSize: 12,color: RealestateColor.grey),),
                              Text("2 mois",style: lsemibold.copyWith(fontSize: 12,color: RealestateColor.grey),),
                            ],
                          ),
                          SizedBox(height: height/46,),
                          Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text("Paiement mensuel".tr,style: lregular.copyWith(fontSize: 12,color: RealestateColor.grey),),
                              Text("\MRU 220",style: lsemibold.copyWith(fontSize: 12,color: RealestateColor.grey),),
                            ],
                          ),
                          SizedBox(height: height/46,),
                          Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text("Rabais".tr,style: lregular.copyWith(fontSize: 12,color: RealestateColor.grey),),
                              Text("-\MRU 88",style: lsemibold.copyWith(fontSize: 12,color: RealestateColor.grey),),
                            ],
                          ),
                        ],
                      ),
                    ),
                    Container(
                      height: height/12,
                      decoration: const BoxDecoration(
                          borderRadius:  BorderRadius.only(bottomLeft: Radius.circular(25),bottomRight: Radius.circular(25)),
                          color: RealestateColor.textfield
                      ),
                      child: Padding(
                        padding:  EdgeInsets.symmetric(horizontal: width/26),
                        child: Center(
                          child:  Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text("Total".tr,style: lbold.copyWith(fontSize: 18,color: RealestateColor.indigo),),
                              Text("\MRU 31,220",style: lbold.copyWith(fontSize: 18,color: RealestateColor.indigo),),
                            ],
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(
                height: height / 26,
              ),
              Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Méthode de paiement".tr,style: lbold.copyWith(fontSize: 18,color: themedata.isdark
                      ? RealestateColor.white
                      : RealestateColor.indigo,),),
                  InkWell(
                    splashColor: RealestateColor.transparent,
                      highlightColor: RealestateColor.transparent,
                      onTap: () {
                        _showchangerent();
                      },
                      child: Text("changement".tr,style: lbold.copyWith(fontSize: 10,color: themedata.isdark
                          ? RealestateColor.white
                          : RealestateColor.darkgreen,),)),
                ],
              ),
              SizedBox(
                height: height / 36,
              ),
              Container(
                height: height/15,
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
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: width/26),
                  child: Center(
                    child: Row(
                      children: [
                        Image.asset(PngImage.paypalnormal,height: height/36,),
                        SizedBox(width: width/36,),
                        Text("••••••an@email.com",style: lregular.copyWith(fontSize: 12,color: RealestateColor.grey),)
                      ],
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: height / 12,
              ),
              Row(mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  InkWell(
                    highlightColor: RealestateColor.transparent,
                    splashColor: RealestateColor.transparent,
                    onTap: () {
                      _showsuccess();
                    },
                    child: Container(
                      height: height/16,
                      width: width/2,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: RealestateColor.lightgreen
                      ),
                      child: Center(child: Text("Payer le loyer",style: lbold.copyWith(fontSize: 16,color: RealestateColor.white),)),
                    ),
                  ),
                  SizedBox(width: width/16,),
                  InkWell(
                    splashColor: RealestateColor.transparent,
                    highlightColor: RealestateColor.transparent,
                    onTap: () {
                      _showsuccess();
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
                          child: Icon(Icons.arrow_forward,color: RealestateColor.black,size: 20,)),
                    ),
                  ),

                ],
              )
            ],
          ),
        ),
      ),
    );
  }

  _showchangerent() {
    showModalBottomSheet(
      backgroundColor: RealestateColor.transparent,
      context: context,
      builder: (BuildContext context) {
        return SingleChildScrollView(
          child: StatefulBuilder(
            builder: (BuildContext context, StateSetter setState) {
              return Container(
                height: height/2.3,
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
                        height: height / 46,
                      ),
                      Row(
                        children: [
                          Text("changement de Paiement".tr,
                              style: lbold.copyWith(
                                  fontSize: 18, color: RealestateColor.indigo)),
                        ],
                      ),
                      SizedBox(
                        height: height / 76,
                      ),
                      SizedBox(
                        height: height/5,
                        child: ListView.builder(
                          scrollDirection: Axis.horizontal,
                          itemCount: image.length,
                          itemBuilder: (context, index) {
                            return Container(
                              margin: EdgeInsets.only(right: width/36),
                              child: Image.asset(image[index]),
                            );
                          },),
                      ),
                      SizedBox(
                        height: height / 46,
                      ),
                      InkWell(
                        highlightColor: RealestateColor.transparent,
                        splashColor: RealestateColor.transparent,
                        onTap: () {
                          Navigator.pop(context);
                        },
                        child: Container(
                          height: height /14,
                          width: width / 1.5,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: RealestateColor.lightgreen),
                          child: Center(
                              child: Text(
                                "Sélectionnez Paiement",
                                style: lbold.copyWith(fontSize: 16, color: RealestateColor.white),
                              )),
                        ),
                      )
                    ],
                  ),
                ),
              );
            },
          ),
        );
      },
    );
  }

  _showsuccess() {
    showModalBottomSheet(
      backgroundColor: RealestateColor.transparent,
      context: context,
      builder: (BuildContext context) {
        return SingleChildScrollView(
          child: StatefulBuilder(
            builder: (BuildContext context, StateSetter setState) {
              return Container(
                height: height/2,
                decoration: const BoxDecoration(
                    borderRadius:  BorderRadius.only(topLeft :Radius.circular(50),topRight :Radius.circular(50)),
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
                        height: height / 46,
                      ),
                      Image.asset(PngImage.alertsuccess,height: height/6,),
                      SizedBox(
                        height: height / 46,
                      ),
                      Text("Votre transaction est ",style: lmedium.copyWith(fontSize: 20,color: RealestateColor.indigo),),
                      Text("succès",style: lbold.copyWith(fontSize: 20,color: RealestateColor.darkgreen),),
                      SizedBox(
                        height: height / 96,
                      ),
                      Text("Lorem ipsum dolor sit amet, consectetur.",style: lregular.copyWith(fontSize: 10,color: RealestateColor.grey),),
                      SizedBox(
                        height: height / 26,
                      ),
                      Container(
                        height: height /14,
                        width: width / 1.5,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: RealestateColor.lightgreen),
                        child: Center(
                            child: Text(
                              "Continuer_Exploration".tr,
                              style: lsemibold.copyWith(fontSize: 16, color: RealestateColor.white),
                            )),
                      )
                    ],
                  ),
                ),
              );
            },
          ),
        );
      },
    );
  }
}
