import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:realestate/Common%20class/color.dart';
import 'package:realestate/Common%20class/fontstyle.dart';
import 'package:realestate/Common%20class/icons.dart';

import '../../../Theme/themecontroller.dart';
import 'Transation_summary.dart';

class TransationReview extends StatefulWidget {
  const TransationReview({Key? key}) : super(key: key);

  @override
  State<TransationReview> createState() => _TransationReviewstate();
}

class _TransationReviewstate extends State<TransationReview> {
  dynamic size;
double height = 0.00;
double width = 0.00;
  final themedata = Get.put(Themecontroler());
  final List image = [PngImage.mastercardsquare,PngImage.visasquare,PngImage.mastercardsquare,PngImage.visasquare];
  TextEditingController checkin  = TextEditingController();
  TextEditingController checkout = TextEditingController();
  TextEditingController note  = TextEditingController();
  TextEditingController voucher  = TextEditingController();
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
                      child:  const Center(
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
                    "Transaction commentaire".tr,
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
                                "CentrRim Apppartement",
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
                                  "Nouakchott, TVZ",
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
              Text("Période".tr,style: lbold.copyWith(fontSize: 18,color: themedata.isdark
                  ? RealestateColor.white
                  : RealestateColor.indigo,),),
              SizedBox(
                height: height / 76,
              ),
              Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SizedBox(
                    width: width/2.2,
                    child: TextField(
                      controller:checkin,
                      style: lmedium.copyWith(fontSize: 12,color: RealestateColor.indigo),
                      cursorColor: RealestateColor.grey,
                      decoration: InputDecoration(
                          prefixIcon:const Icon(Icons.calendar_today_outlined,size: 20,color: RealestateColor.indigo,),
                          filled: true,
                          hintText: "Enregistrement",
                          hintStyle: lregular.copyWith(fontSize: 12,color: RealestateColor.darkgrey),
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(20),
                              borderSide: BorderSide.none),
                          fillColor: RealestateColor.textfield),
                    ),
                  ),
                  SizedBox(
                    width: width/2.2,
                    child: TextField(
                      controller:checkout,
                      style: lmedium.copyWith(fontSize: 12,color: RealestateColor.indigo),
                      cursorColor: RealestateColor.grey,
                      decoration: InputDecoration(
                          prefixIcon:const Icon(Icons.calendar_today_outlined,size: 20,color: RealestateColor.indigo,),
                          filled: true,
                          hintText: "Vérifier",
                          hintStyle: lregular.copyWith(fontSize: 12,color: RealestateColor.darkgrey),
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(20),
                              borderSide: BorderSide.none),
                          fillColor: RealestateColor.textfield),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: height / 36,
              ),
              Text("Remarque pour le propriétaire".tr,style: lbold.copyWith(fontSize: 18,color: themedata.isdark
                  ? RealestateColor.white
                  : RealestateColor.indigo,),),
              SizedBox(
                height: height / 46,
              ),
              TextField(
                controller:note,
                style: lmedium.copyWith(fontSize: 12,color: RealestateColor.indigo),
                cursorColor: RealestateColor.grey,
                decoration: InputDecoration(
                    prefixIcon:const Icon(Icons.chat_outlined,size: 20,color: RealestateColor.indigo,),
                    filled: true,
                    hintText: "Écrivez votre expérience ici ",
                    hintStyle: lregular.copyWith(fontSize: 12,color: RealestateColor.darkgrey),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15),
                        borderSide: BorderSide.none),
                    fillColor: RealestateColor.textfield),
              ),
              SizedBox(
                height: height / 26,
              ),
              Text("Méthode de paiement".tr,style: lbold.copyWith(fontSize: 18,color: themedata.isdark
                  ? RealestateColor.white
                  : RealestateColor.indigo,),),
              SizedBox(
                height: height / 46,
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
                height: height / 26,
              ),
              Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Avoir un bon".tr,style: lbold.copyWith(fontSize: 18,color: themedata.isdark
                      ? RealestateColor.white
                      : RealestateColor.indigo,),),
                  InkWell(
                      highlightColor: RealestateColor.transparent,
                      splashColor: RealestateColor.transparent,
                      onTap: () {
                        _showvoucher();
                      },
                      child: Text("cliquez ici".tr,style: lbold.copyWith(fontSize: 10,color: themedata.isdark
                          ? RealestateColor.white
                          : RealestateColor.darkgreen,),)),
                ],
              ),
              SizedBox(
                height: height / 10,
              ),
              Row(mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  InkWell(
                    highlightColor: RealestateColor.transparent,
                    splashColor: RealestateColor.transparent,
                    onTap: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context) {
                        return const TransationSummary();
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
                  SizedBox(width: width/16,),
                  InkWell(
                    splashColor: RealestateColor.transparent,
                    highlightColor: RealestateColor.transparent,
                    onTap: () {
                     Navigator.push(context, MaterialPageRoute(builder: (context) {
                       return const TransationSummary();
                     },));
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
  _showvoucher() {
    showModalBottomSheet(
      backgroundColor: RealestateColor.transparent,
      context: context,
      builder: (BuildContext context) {
        return SingleChildScrollView(
          child: StatefulBuilder(
            builder: (BuildContext context, StateSetter setState) {
              return Container(
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

                        height: height / 76,
                      ),
                      Row(
                        children: [
                          Text("Ajouter un bon".tr,
                              style: lbold.copyWith(
                                  fontSize: 18, color: RealestateColor.indigo)),
                        ],
                      ),
                      SizedBox(
                        height: height / 76,
                      ),
                      TextField(
                        controller:voucher,
                        style: lmedium.copyWith(fontSize: 12,color: RealestateColor.indigo),
                        cursorColor: RealestateColor.grey,
                        decoration: InputDecoration(
                            prefixIcon: const Icon(Icons.airplane_ticket_outlined,size: 20,color: RealestateColor.indigo,),
                            filled: true,
                            hintText: "Tapez votre bon",
                            hintStyle: lregular.copyWith(fontSize: 12,color: RealestateColor.darkgrey),
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(20),
                                borderSide: BorderSide.none),
                            fillColor: RealestateColor.textfield),
                      ),
                      SizedBox(
                        height: height / 36,
                      ),
                      Row(
                        children: [
                          Text("Vos bons disponibles".tr,
                              style: lbold.copyWith(
                                  fontSize: 18, color: RealestateColor.indigo)),
                        ],
                      ),
                      SizedBox(height: height/76,),
                      SizedBox(
                        height: height /4.5,
                        child: ListView.builder(
                          itemCount: 4,
                          itemBuilder: (context, index) {
                            return InkWell(
                              splashColor: RealestateColor.transparent,
                              highlightColor: RealestateColor.transparent,
                              // onTap: () {
                              //   setState(() {
                              //     selected = index;
                              //   });
                              // },
                              child:Container(
                                height: height / 10,
                                margin: EdgeInsets.only(bottom: height/76),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(25),
                                  color: RealestateColor.green,
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
                                              color: RealestateColor.darkgreen),
                                          child: Center(
                                              child: SvgPicture.asset(
                                                SvgIcons.ticket,
                                                color: RealestateColor.white,
                                                height: height / 36,
                                              ))
                                        // SvgPicture.asset(SvgIcons.right_arrow,color: color.white,height: height/34,),
                                      ),
                                      SizedBox(
                                        width: width / 36,
                                      ),
                                      Column(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        mainAxisAlignment: MainAxisAlignment.center,
                                        children: [
                                          Text(
                                            "HLWN40",
                                            style: lbold.copyWith(
                                                color: RealestateColor.indigo, fontSize: 18),
                                          ),
                                          SizedBox(
                                            width: width / 1.5,
                                            child: Text(
                                              "Cliquez pour utiliser ce bon",
                                              style: lregular.copyWith(
                                                  fontSize: 9, color: RealestateColor.grey),
                                              maxLines: 1,
                                              overflow: TextOverflow.ellipsis,
                                            ),
                                          )
                                        ],
                                      )
                                    ],
                                  ),
                                ),
                              ),
                            );
                          },
                        ),
                      ),
                      InkWell(
                        highlightColor: RealestateColor.transparent,
                        splashColor: RealestateColor.transparent,
                        onTap: () {
                          Navigator.pop(context);
                        },
                        child: Container(
                          height: height /14,
                          width: width / 2,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: RealestateColor.lightgreen),
                          child: Center(
                              child: Text(
                                "'Appliquer le bon'",
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

}
