import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:realestate/Common%20class/color.dart';
import 'package:realestate/Common%20class/fontstyle.dart';
import 'package:realestate/Common%20class/icons.dart';
import '../../Theme/themecontroller.dart';
import 'otp.dart';

class RealRegister extends StatefulWidget {
  const RealRegister({Key? key}) : super(key: key);

  @override
  State<RealRegister> createState() => _RealRegisterState();
}

class _RealRegisterState extends State<RealRegister> {
  dynamic size;
double height = 0.00;
double width = 0.00;
  final themedata = Get.put(Themecontroler());
  TextEditingController email = TextEditingController();
  TextEditingController fullname = TextEditingController();
  TextEditingController password = TextEditingController();
  @override
  Widget build(BuildContext context) {
    size = MediaQuery.of(context).size;
    height = size.height;
    width = size.width;
    return Scaffold(
      resizeToAvoidBottomInset: false,
       body: Padding(
         padding:  EdgeInsets.symmetric(horizontal: width/20,vertical: height/20),
         child: Column(crossAxisAlignment: CrossAxisAlignment.start,
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
             SizedBox(height: height/26,),
             Row(
               children: [
                 Text("Crée ton ",style: lmedium.copyWith(fontSize: 25,color: themedata.isdark
                     ? RealestateColor.white
                     : RealestateColor.indigo,),),
                 Text("compte",style: lbold.copyWith(fontSize: 25,color: themedata.isdark
                     ? RealestateColor.white
                     : RealestateColor.darkgreen,),),
               ],
             ),
             SizedBox(height: height/66,),
             Text("",style: lregular.copyWith(fontSize: 12),),
             SizedBox(height: height/16,),
             TextField(
               controller:fullname,
               style: lmedium.copyWith(fontSize: 12,color: RealestateColor.indigo),
               cursorColor: RealestateColor.grey,
               decoration: InputDecoration(
                   prefixIcon: Padding(
                     padding: const EdgeInsets.all(12.0),
                     child: Image.asset(PngImage.person,height: height/36,),
                   ),
                   filled: true,
                   hintText: "nom complet ".tr,
                   hintStyle: lregular.copyWith(fontSize: 12,color: RealestateColor.grey),
                   border: OutlineInputBorder(
                       borderRadius: BorderRadius.circular(10),
                       borderSide: BorderSide.none),
                   fillColor: RealestateColor.textfield),
             ),
             SizedBox(height: height/46,),
             TextField(
               controller: email,
               style: lmedium.copyWith(fontSize: 12,color: RealestateColor.indigo),
               cursorColor: RealestateColor.grey,
               decoration: InputDecoration(
                   prefixIcon: Padding(
                     padding: const EdgeInsets.all(12.0),
                     child: Image.asset(PngImage.email,height: height/36),
                   ),
                   filled: true,
                   hintText: "Email".tr,
                   hintStyle: lregular.copyWith(fontSize: 12,color: RealestateColor.grey),
                   border: OutlineInputBorder(
                       borderRadius: BorderRadius.circular(10),
                       borderSide: BorderSide.none),
                   fillColor: RealestateColor.textfield),
             ),
             SizedBox(height: height/46,),
             TextField(
               controller:password,
               style: lmedium.copyWith(fontSize: 12,color: RealestateColor.indigo),
               cursorColor: RealestateColor.grey,
               decoration: InputDecoration(
                   prefixIcon: Padding(
                     padding: const EdgeInsets.all(12.0),
                     child: Image.asset(PngImage.lock,height: height/36),
                   ),
                   filled: true,
                   hintText: "Mot de passe".tr,
                   hintStyle: lregular.copyWith(fontSize: 12,color: RealestateColor.grey),
                   border: OutlineInputBorder(
                       borderRadius: BorderRadius.circular(10),
                       borderSide: BorderSide.none),
                   fillColor: RealestateColor.textfield),
             ),
             SizedBox(height: height/46,),
             Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
               children: [
                 Text("Conditions d'utilisation".tr,style: lsemibold.copyWith(fontSize: 12,color: themedata.isdark
                     ? RealestateColor.white
                     : RealestateColor.darkgreen,),),
                 Text("Montrer le mot de passe".tr,style: lsemibold.copyWith(fontSize: 12,color: themedata.isdark
                     ? RealestateColor.white
                     : RealestateColor.darkgreen,),),
               ],
             ),
             SizedBox(height: height/16,),
             InkWell(
               highlightColor: RealestateColor.transparent,
               splashColor: RealestateColor.transparent,
               onTap: () {
                 Navigator.push(context, MaterialPageRoute(builder: (context) {
                   return const Otp();
                 },));
               },
               child: Center(
                 child: Container(
                   height: height/14,
                   width: width/1.5,
                   decoration: BoxDecoration(
                       borderRadius: BorderRadius.circular(10),
                       color: RealestateColor.lightgreen
                   ),
                   child:
                   Center(child: Text("S'inscrire".tr,style: lbold.copyWith(fontSize: 16,color: RealestateColor.white),)),
                 ),
               ),
             ),
           ],
         ),
       ),
    );
  }
}
