import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:realestate/Common%20class/color.dart';
import 'package:realestate/Common%20class/fontstyle.dart';
import 'package:realestate/Common%20class/icons.dart';

class ChooseLocation extends StatefulWidget {
  const ChooseLocation({Key? key}) : super(key: key);

  @override
  State<ChooseLocation> createState() => _ChooseLocationState();
}

class _ChooseLocationState extends State<ChooseLocation> {
  dynamic size;
double height = 0.00;
double width = 0.00;
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
             child:  InkWell(
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
                   color: RealestateColor.white),
               child: const Center(
                   child: Icon(
                     Icons.chevron_left_outlined,
                     size: 25,
                     color: RealestateColor.indigo,
                   )),
             ),
           ),),
           Positioned(
             top: 80,
             left: 15,
             child: SizedBox(
               width: width/1.1,
               child: TextField(
                 controller: searchlocation,
                 style: lmedium.copyWith(fontSize: 12),
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
                     hintText: "Trouvez un localisation",
                     border: OutlineInputBorder(
                         borderRadius: BorderRadius.circular(20),
                         borderSide: BorderSide.none,
                     ),
                     fillColor: RealestateColor.white),
               ),
             ),),
           Positioned(
             bottom: 200,
               right: 15,
               child: Container(
                 height: height/18,
                 width: height/18,
                 decoration: BoxDecoration(
                     borderRadius:BorderRadius.circular(50),
                     color: RealestateColor.darkgreen,
                 ),
                 child: Center(
                     child: SvgPicture.asset(SvgIcons.goals,color: RealestateColor.white,height: height/36,)),
           )),
           Positioned(
             bottom:70,
             left: 15,
               child: Container(
             height: height/6,
             width: width/1.1,
                 decoration: BoxDecoration(
                   borderRadius:BorderRadius.circular(20),
                   color: RealestateColor.white,
                   boxShadow: const [
                     BoxShadow(
                       blurRadius: 10,
                       color: RealestateColor.darkgrey,
                     )
                   ]
                 ),
                 child: Padding(
                   padding:  EdgeInsets.symmetric(horizontal: width/36,vertical: height/46),
                   child: Column(crossAxisAlignment: CrossAxisAlignment.start,
                     children: [
                       Text("Localisation détail".tr,style: lbold.copyWith(fontSize: 18,color: RealestateColor.indigo),),
                       SizedBox(height: height/76,),
                       Row(crossAxisAlignment: CrossAxisAlignment.center,
                         children: [
                           const CircleAvatar(
                             radius: 25,
                             backgroundColor: RealestateColor.textfield,
                             child: Icon(Icons.location_on_outlined,size: 20,color: RealestateColor.indigo,),
                           ),
                           SizedBox(width: width/36,),
                           SizedBox(
                             width: width/1.5,
                             child: Text("Hwn Vih Mw9i3 40115",style: lregular.copyWith(fontSize: 12,color: RealestateColor.grey),maxLines: 2,overflow: TextOverflow.ellipsis,),),
                         ],
                       ),
                     ],
                   ),
                 ),
           )),
           Positioned(
             bottom: 10,
               left: 60,
               child: Container(
             height: height /14,
             width: width / 1.5,
             decoration: BoxDecoration(
                 borderRadius: BorderRadius.circular(10),
                 color: RealestateColor.lightgreen),
             child: Center(
                 child: Text(
                   "Choisir une ligne",
                   style: lbold.copyWith(fontSize: 16, color: RealestateColor.white),
                 )),
           ))
         ],
       ),
    );
  }
}
