
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:realestate/Common%20class/color.dart';
import 'package:realestate/Common%20class/fontstyle.dart';
import 'package:realestate/Common%20class/icons.dart';

import '../../../Theme/themecontroller.dart';

class AccountPayment extends StatefulWidget {
  const AccountPayment({Key? key}) : super(key: key);

  @override
  State<AccountPayment> createState() => _AccountPaymentState();
}

class _AccountPaymentState extends State<AccountPayment> {
  dynamic size;
double height = 0.00;
double width = 0.00;
  final themedata = Get.put(Themecontroler());
  final List<String> paymentname = ["Bankily", "masrivi", "amanti"];
  final List<String> paymentimage = [PngImage.paypalnormal,PngImage.mastercard,PngImage.visa];
  @override
  Widget build(BuildContext context) {
    size = MediaQuery.of(context).size;
    height = size.height;
    width = size.width;
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: width / 26, vertical: height / 22),
          child: Column(crossAxisAlignment: CrossAxisAlignment.start,
            children: [
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
                            color: RealestateColor.indigo,
                          )),
                    ),
                  ),
                  InkWell(
                    highlightColor: RealestateColor.transparent,
                    splashColor: RealestateColor.transparent,
                    onTap: () {
                      // Navigator.push(context, MaterialPageRoute(builder: (context) {
                      //   return LoginOption();
                      // },));
                    },
                    child: Container(
                      height: height/20,
                      width: width/5,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(50),
                          color: RealestateColor.lightgrey
                      ),
                      child: Center(child: Text("Sauter".tr,style: lregular.copyWith(fontSize: 12,color: RealestateColor.black),)),
                    ),
                  )
                ],
              ),
              SizedBox(
                height: height / 26,
              ),
              Text("ajoutez votre ",style: lmedium.copyWith(fontSize: 25,color: themedata.isdark
                  ? RealestateColor.white
                  : RealestateColor.indigo,),),
              Text("Méthode de paiement",style: lbold.copyWith(fontSize: 25,color: themedata.isdark
                  ? RealestateColor.white
                  : RealestateColor.darkgreen,),),
              SizedBox(
                height: height / 46,
              ),
              Text("Vous pourrez modifier ceci plus tard dans les paramètres de votre compte.",style: lregular.copyWith(fontSize: 12,color: themedata.isdark
                  ? RealestateColor.white
                  : RealestateColor.grey,),),
              SizedBox(
                height: height / 36,
              ),
          Container(
            margin: EdgeInsets.only(right: width / 36),
            child: Image.asset(
              PngImage.creditcard,
              width: width / 1.05,
              fit: BoxFit.fitWidth,
            ),
          ),
              ListView.builder(
                shrinkWrap:true,
                physics: const NeverScrollableScrollPhysics(),
                itemCount: paymentname.length,
                itemBuilder: (context, index) {
                  return Container(
                    height: height/15,
                    margin: EdgeInsets.only(bottom: height/46),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                          color: RealestateColor.textfield,
                    ),
                    child: Padding(
                      padding:  EdgeInsets.symmetric(horizontal: width/36,vertical: height/66),
                      child: Row(
                        children: [
                          Image.asset(paymentimage[index]),
                          SizedBox(width: width/36,),
                          Text(paymentname[index],style: lmedium.copyWith(fontSize: 14,color: RealestateColor.indigo),)
                        ],
                      ),
                    ),
                  );
              },),
              SizedBox(height: height/10,),
              InkWell(
                highlightColor: RealestateColor.transparent,
                splashColor: RealestateColor.transparent,
                onTap: () {
                  _showsuccesspayment();
                  // Navigator.push(context, MaterialPageRoute(builder: (context) {
                  //   return AddPhoto();
                  // },));
                },
                child: Center(
                  child: Container(
                    height: height/16,
                    width: width/1.5,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: RealestateColor.lightgreen
                    ),
                    child: Center(child: Text("Suivant".tr,style: lbold.copyWith(fontSize: 16,color: RealestateColor.white),)),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
  _showsuccesspayment() {
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
                        Text("Compte ",style: lmedium.copyWith(fontSize: 20,color: RealestateColor.indigo),),
                        Text("Avec succès ",style: lbold.copyWith(fontSize: 20,color: RealestateColor.darkgreen),),
                      ],
                    ),
                    Text("créé",style: lmedium.copyWith(fontSize: 20,color: RealestateColor.indigo),),
                    SizedBox(
                      height: height / 96,
                    ),
                    Text("Lorem ipsum dolor sit amet, consectetur.",style: lregular.copyWith(fontSize: 10,color: RealestateColor.grey),),
                    SizedBox(
                      height: height / 26,
                    ),
                    InkWell(
                      splashColor: RealestateColor.transparent,
                      highlightColor: RealestateColor.transparent,
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
                              "Terminer".tr,
                              style: lsemibold.copyWith(fontSize: 16, color: RealestateColor.white),
                            )),
                      ),
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
