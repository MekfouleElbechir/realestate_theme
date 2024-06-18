import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:realestate/Common%20class/color.dart';
import 'package:realestate/Common%20class/fontstyle.dart';
import 'package:realestate/Common%20class/icons.dart';

import '../../Theme/themecontroller.dart';

class SearchScreen extends StatefulWidget {
  const SearchScreen({Key? key}) : super(key: key);

  @override
  State<SearchScreen> createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  dynamic size;
double height = 0.00;
double width = 0.00;
  final themedata = Get.put(Themecontroler());
  TextEditingController searchlocation = TextEditingController();
  @override
  Widget build(BuildContext context) {
    size = MediaQuery.of(context).size;
    height = size.height;
    width = size.width;
    return Scaffold(
         body: Stack(
           children: [
             Container(
               decoration: BoxDecoration(
                   image: DecorationImage(image: AssetImage(PngImage.map),
                     fit: BoxFit.cover,)
               ),
             ),
             Positioned(
               top: 30,
               left: 15,
               child: InkWell(
                 highlightColor: RealestateColor.transparent,
                 splashColor: RealestateColor.transparent,
                 onTap: () {
                   // _shownottomsheet();
                 },
                 child: Container(
                   height: height / 18,
                   width: width / 2,
                   decoration: BoxDecoration(
                     color: RealestateColor.white,
                     borderRadius: BorderRadius.circular(25),
                   ),
                   child: Padding(
                     padding: EdgeInsets.symmetric(horizontal: width / 36),
                     child: Row(
                       children: [
                         Icon(
                           Icons.location_pin,
                           color: RealestateColor.darkgreen,
                           size: height / 56,
                         ),
                         SizedBox(
                           width: width/3.2,
                           child: Text(
                             "Nouakchott, TVZ",
                             style: lmedium.copyWith(fontSize: 10,color:RealestateColor.indigo),
                             maxLines: 1,
                             overflow: TextOverflow.ellipsis,
                           ),
                         ),
                         const Icon(
                           Icons.arrow_drop_down,
                           size: 20,
                           color: RealestateColor.darkgreen,
                         )
                       ],
                     ),
                   ),
                 ),
               ),),
             Positioned(
               top: 30,
               right: 15,
               child:  InkWell(
                 splashColor: RealestateColor.transparent,
                 highlightColor: RealestateColor.transparent,
                 onTap: () {
                   // _showFilterbottomsheet();
                 },
                 child: Container(
                   height: height / 18,
                   width: height / 18,
                   decoration: BoxDecoration(
                       borderRadius: BorderRadius.circular(50),
                       color: RealestateColor.white),
                   child: Center(
                       child: Image.asset(PngImage.filter,color: RealestateColor.indigo,height: height/36,)),
                 ),
               )),
             Positioned(
               top: 90,
               left: 15,
               child: SizedBox(
                 width: width/1.1,
                 child: TextField(
                   controller: searchlocation,
                   style: lmedium.copyWith(fontSize: 12,color: RealestateColor.black,),
                   decoration: InputDecoration(
                       prefixIcon: const Icon(
                         Icons.search,
                         color: RealestateColor.black,
                         size: 20,
                       ),
                       suffixIcon: const Icon(
                         Icons.keyboard_voice_outlined,
                         color: RealestateColor.grey,
                         size: 20,
                       ),
                       filled: true,
                       enabled:false,
                       hintStyle:  lmedium.copyWith(fontSize: 12,color: RealestateColor.black,),
                       hintText: "trouver un emplacement",
                       border: OutlineInputBorder(
                         borderRadius: BorderRadius.circular(20),
                         borderSide: BorderSide.none,
                       ),
                       fillColor: RealestateColor.white),
                 ),
               ),),
             Positioned(
                 bottom: 80,
                 left: 15,
                 child: Container(
                   height: height/18,
                   decoration: BoxDecoration(
                     borderRadius:BorderRadius.circular(50),
                     color: RealestateColor.darkgreen,
                   ),
                   child: Padding(
                     padding: EdgeInsets.symmetric(horizontal: width/36,vertical: height/96),
                     child: Row(mainAxisAlignment: MainAxisAlignment.spaceAround,
                       children: [
                         Container(
                           height: height / 20,
                           width: width / 13,
                           decoration: BoxDecoration(
                               borderRadius: BorderRadius.circular(50),
                               color: RealestateColor.lightgreen),
                           child: Center(
                               child: Image.asset(PngImage.worring,height: height/46,color: RealestateColor.white,)),
                         ),
                         SizedBox(width: width/46,),
                         Text("À proximité de vous",style: lsemibold.copyWith(fontSize: 12,color: RealestateColor.white),)
                       ],
                     ),
                   ))),
             Positioned(
                 bottom: 10,
                 left: 15,
                 child: Container(
                   height: height /14,
                   width: width / 1.1,
                   decoration: BoxDecoration(
                       borderRadius: BorderRadius.circular(50),
                       color: RealestateColor.darkgreen),
                   child: Center(
                       child: Text(
                         "   Impossible de trouver un bien immobilier à proximité de chez vous",
                         style: lregular.copyWith(fontSize: 12, color: RealestateColor.white),
                       )),
                 ))
           ],
         ),
    );
  }
}
