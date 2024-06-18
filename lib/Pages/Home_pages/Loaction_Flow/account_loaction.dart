import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:realestate/Common%20class/color.dart';
import 'package:realestate/Common%20class/fontstyle.dart';
import 'package:realestate/Common%20class/icons.dart';
import '../../../Theme/themecontroller.dart';
import '../Search_result/filter_choose_location.dart';
import 'account_payment.dart';

class AccountLocation extends StatefulWidget {
  const AccountLocation({Key? key}) : super(key: key);

  @override
  State<AccountLocation> createState() => _AccountLocationState();
}

class _AccountLocationState extends State<AccountLocation> {
  dynamic size;
double height = 0.00;
double width = 0.00;
  TextEditingController location = TextEditingController();
  final themedata = Get.put(Themecontroler());
  @override
  Widget build(BuildContext context) {
    size = MediaQuery.of(context).size;
    height = size.height;
    width = size.width;
    return Scaffold(
      body: Padding(
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
            Row(
              children: [
                Text("ajoutez votre ",style: lmedium.copyWith(fontSize: 25,color: themedata.isdark
                    ? RealestateColor.white
                    : RealestateColor.indigo,),),
                Text("localisation",style: lbold.copyWith(fontSize: 25,color: themedata.isdark
                    ? RealestateColor.white
                    : RealestateColor.indigo,),),
              ],
            ),
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
              height: height/2.2,
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
                    height: height/2.5,
                    width: width/1,
                    child: ClipRRect(
                        borderRadius: const BorderRadius.only(topRight: Radius.circular(25),topLeft: Radius.circular(25)),
                        child: Image.asset(PngImage.map,fit: BoxFit.fitWidth,)),
                  ),
                  Container(
                    height: height/19,
                    decoration: BoxDecoration(
                      borderRadius: const BorderRadius.only(bottomRight: Radius.circular(20),bottomLeft: Radius.circular(20)),
                      color: RealestateColor.green,
                    ),
                    child: Center(child: Text("Sélectionnez sur la carte",style: lregular.copyWith(fontSize: 12,color: RealestateColor.indigo),),),
                  )
                ],
              ),
            ),
            SizedBox(
              height: height / 36,
            ),
            InkWell(
              splashColor: RealestateColor.transparent,
              highlightColor: RealestateColor.transparent,
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return const ChooseLocation();
                },));
              },
              child: TextField(
                controller: location,
                style: lmedium.copyWith(fontSize: 12),
                decoration: InputDecoration(
                    prefixIcon: const Icon(
                      Icons.location_on,
                      color: RealestateColor.darkgreen,
                      size: 20,
                    ),
                    suffixIcon: const Icon(
                      Icons.chevron_right_outlined,
                      color: RealestateColor.grey,
                      size: 20,
                    ),
                    filled: true,
                    enabled:false,
                    hintStyle:  lmedium.copyWith(fontSize: 12,color: RealestateColor.grey,),
                    hintText: "Trouvez un localisation",
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                      borderSide: BorderSide.none,
                    ),
                    fillColor: RealestateColor.textfield),
              ),
            ),
            const Spacer(),
            InkWell(
              highlightColor: RealestateColor.transparent,
              splashColor: RealestateColor.transparent,
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return const AccountPayment();
                },));
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
    );
  }
}
