import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:get/get.dart';
import 'package:realestate/Common%20class/color.dart';
import 'package:realestate/Common%20class/fontstyle.dart';
import 'package:realestate/Common%20class/icons.dart';

import '../../Theme/themecontroller.dart';

class AddReview extends StatefulWidget {
  const AddReview({Key? key}) : super(key: key);

  @override
  State<AddReview> createState() => _AddReviewstate();
}

class _AddReviewstate extends State<AddReview> {
  dynamic size;
double height = 0.00;
double width = 0.00;
  final themedata = Get.put(Themecontroler());
  TextEditingController review = TextEditingController();
  @override
  Widget build(BuildContext context) {
    size = MediaQuery.of(context).size;
    height = size.height;
    width = size.width;
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: width / 26,vertical: height/22),
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
                  Text("Ajouter un avis".tr,style: lbold.copyWith(fontSize: 14,color: themedata.isdark
                      ? RealestateColor.white
                      : RealestateColor.indigo,),),
                ],
              ),
              SizedBox(
                height: height / 26,
              ),
              Row(
                children: [
                  Text("Salut, comment était ton",style: lmedium.copyWith(fontSize: 25,color: themedata.isdark
                      ? RealestateColor.white
                      : RealestateColor.indigo,),),
                  Text("dans l'ensemble",style: lbold.copyWith(fontSize: 25,color: themedata.isdark
                      ? RealestateColor.white
                      : RealestateColor.darkgreen,),),
                ],
              ),
              Text("expérience?",style: lbold.copyWith(fontSize: 25,color: themedata.isdark
                  ? RealestateColor.white
                  : RealestateColor.darkgreen,),),
              SizedBox(
                height: height / 46,
              ),
              Text("lorem ipsum dolor sit amet",style: lregular.copyWith(fontSize: 12,color: themedata.isdark
                  ? RealestateColor.white
                  : RealestateColor.grey,),),
              SizedBox(
                height: height / 16,
              ),
              Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  RatingBar.builder(
                    initialRating: 5,
                    minRating: 1,
                    direction: Axis.horizontal,
                    allowHalfRating: true,
                    itemCount: 5,
                    itemSize: 50,
                    itemBuilder: (context, _) => Image.asset(PngImage.star),
                    onRatingUpdate: (rating) {
                      // print(rating);
                    },
                  ),

                  Text("4.0",style: lbold.copyWith(fontSize: 25,color: themedata.isdark
                      ? RealestateColor.white
                      : RealestateColor.darkgreen,),)
                ],
              ),
              SizedBox(
                height: height / 36,
              ),
              TextField(
                controller:review,
                style: lmedium.copyWith(fontSize: 12,color: RealestateColor.indigo),
                cursorColor: RealestateColor.grey,
                maxLines: 5,
                decoration: InputDecoration(
                    prefixIcon:const Icon(Icons.chat_outlined,size: 20,color: RealestateColor.indigo,),
                    filled: true,
                    hintText: "Écrivez votre expérience ici (facultatif)",
                    hintStyle: lregular.copyWith(fontSize: 12,color: RealestateColor.darkgrey),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20),
                        borderSide: BorderSide.none),
                    fillColor: RealestateColor.textfield),
              ),
              SizedBox(
                height: height / 46,
              ),
              Container(
                height: height / 14,
                width: width / 7,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: RealestateColor.textfield),
                child: const Center(
                    child:  Icon(Icons.add,color: RealestateColor.indigo,size: 20,)),
              ),
              SizedBox(
                height: height / 5,
              ),
              InkWell(
                splashColor: RealestateColor.transparent,
                highlightColor: RealestateColor.transparent,
                onTap: () {
                  _shownottomsheet();
                },
                child: Center(
                  child: Container(
                    height: height / 14,
                    width: width / 1.5,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: RealestateColor.lightgreen),
                    child: Center(
                        child: Text(
                          "Soumettre".tr,
                          style: lsemibold.copyWith(fontSize: 15, color: RealestateColor.white),
                        )),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
  _shownottomsheet() {
    showModalBottomSheet(
      backgroundColor: RealestateColor.transparent,
      context: context,
      builder: (BuildContext context) {
        return StatefulBuilder(
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
                    Row(mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                      Text("Avec Succès ",style: lbold.copyWith(fontSize: 20,color: RealestateColor.darkgreen),),
                      Text("soumis",style: lmedium.copyWith(fontSize: 20,color: RealestateColor.indigo),),
                    ],),
                    Text("votre avis",style: lmedium.copyWith(fontSize: 20,color: RealestateColor.indigo),),
                    SizedBox(
                      height: height / 96,
                    ),
                    Text("votre Lorem ipsum dolor sit amet, consectetur.",style: lregular.copyWith(fontSize: 10,color: RealestateColor.grey),),
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
                            "Continuer_explorer".tr,
                            style: lsemibold.copyWith(fontSize: 16, color: RealestateColor.white),
                          )),
                    )
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
