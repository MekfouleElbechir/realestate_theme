import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:realestate/Common%20class/color.dart';
import 'package:realestate/Common%20class/fontstyle.dart';
import 'package:realestate/Common%20class/icons.dart';

import '../../Theme/themecontroller.dart';
import 'add_review.dart';

class TranscationDetail extends StatefulWidget {
  const TranscationDetail({Key? key}) : super(key: key);

  @override
  State<TranscationDetail> createState() => _TranscationDetailState();
}

class _TranscationDetailState extends State<TranscationDetail> {
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
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(
              horizontal: width / 36, vertical: height / 22),
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
                    width: width / 5,
                  ),
                  Text(
                    "Détails de la transaction".tr,
                    style: lbold.copyWith(fontSize: 14,color: themedata.isdark
                        ? RealestateColor.white
                        : RealestateColor.indigo,),
                  ),
                ],
              ),
              SizedBox(
                height: height / 36,
              ),
              Container(
                height: height / 4.3,
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
                            PngImage.transationimg,
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
                                  color: RealestateColor.radial,
                                  size: 15,
                                ))
                                // SvgPicture.asset(SvgIcons.right_arrow,color: color.white,height: height/34,),
                                )),
                        Positioned(
                            top: 110,
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
                            height: height / 26,
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
                                  "Jakarta, Indonesia",
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
              Text("Détails de la transaction".tr,style: lbold.copyWith(fontSize: 18,color: themedata.isdark
                  ? RealestateColor.white
                  : RealestateColor.indigo,),),
              SizedBox(
                height: height / 36,
              ),
              Container(
                height: height / 5,
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
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: width/26,vertical: height/36),
                  child:Column(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text("Enregistrement".tr,style: lregular.copyWith(fontSize: 12,color: RealestateColor.grey),),
                          Text("11/05/20224",style: lsemibold.copyWith(fontSize: 12,color: RealestateColor.grey),),
                        ],
                      ),
                      Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text("Vérifier".tr,style: lregular.copyWith(fontSize: 12,color: RealestateColor.grey),),
                          Text("01/06/2024",style: lsemibold.copyWith(fontSize: 12,color: RealestateColor.grey),),
                        ],
                      ),
                      Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text("Nom du propriétaire".tr,style: lregular.copyWith(fontSize: 12,color: RealestateColor.grey),),
                          Text("Morad",style: lsemibold.copyWith(fontSize: 12,color: RealestateColor.grey),),
                        ],
                      ),
                      Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text("Type de transaction".tr,style: lregular.copyWith(fontSize: 12,color: RealestateColor.grey),),
                          Text("Louer",style: lsemibold.copyWith(fontSize: 12,color: RealestateColor.grey),),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: height / 26,
              ),
              Text("Détail du paiement".tr,style: lbold.copyWith(fontSize: 18,color: themedata.isdark
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
                              Text("Période de temps".tr,style: lregular.copyWith(fontSize: 12,color: RealestateColor.grey),),
                              Text("2 mois",style: lsemibold.copyWith(fontSize: 12,color: RealestateColor.grey),),
                            ],
                          ),
                          SizedBox(height: height/46,),
                          Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text("Paiement mensuel".tr,style: lregular.copyWith(fontSize: 12,color: RealestateColor.grey),),
                              Text("\$ 220",style: lsemibold.copyWith(fontSize: 12,color: RealestateColor.grey),),
                            ],
                          ),
                          SizedBox(height: height/46,),
                          Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text("rabais".tr,style: lregular.copyWith(fontSize: 12,color: RealestateColor.grey),),
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
              Text("Méthode de paiement".tr,style: lbold.copyWith(fontSize: 18,color: themedata.isdark
                  ? RealestateColor.white
                  : RealestateColor.indigo,),),
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
                height: height / 26,
              ),
              Text("Aimer le domaine".tr,style: lbold.copyWith(fontSize: 18,color: themedata.isdark
                  ? RealestateColor.white
                  : RealestateColor.indigo,),),
              SizedBox(
                height: height / 36,
              ),
              InkWell(
                splashColor: RealestateColor.transparent,
                highlightColor: RealestateColor.transparent,
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return const AddReview();
                  },));
                },
                child: Container(
                  height: height / 14,
                  width: width / 1,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: RealestateColor.lightgreen),
                  child: Center(
                      child: Text(
                        "Cliquez_ici _pour ajouter un commentaire".tr,
                        style: lsemibold.copyWith(fontSize: 15, color: RealestateColor.white),
                      )),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
