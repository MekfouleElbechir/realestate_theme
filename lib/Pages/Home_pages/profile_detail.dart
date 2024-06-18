import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:realestate/Common%20class/color.dart';
import 'package:realestate/Common%20class/fontstyle.dart';
import 'package:realestate/Common%20class/icons.dart';

import '../../Theme/themecontroller.dart';

class ProfileDetail extends StatefulWidget {
  const ProfileDetail({Key? key}) : super(key: key);

  @override
  State<ProfileDetail> createState() => _ProfileDetailState();
}

class _ProfileDetailState extends State<ProfileDetail> {
   dynamic size;
double height = 0.00;
double width = 0.00;
   final themedata = Get.put(Themecontroler());
   int selected = 0;
   int nameselected = 0;
   List selectedimage = [PngImage.verticalInactive,PngImage.horizontalactive];
   List unselectedimage = [PngImage.verticalactive,PngImage.horizontalInactive];
   final List<String> name = <String>["Annonces","vendu"];
   final List<String> listimg = <String>[PngImage.explore6,PngImage.explore7,PngImage.explore8,PngImage.explore5];
   final List<String> listname = <String>["Mariem Villa","Limara Appartement","Mohammed Villa","Deide Appartement"];

   @override
  Widget build(BuildContext context) {
    size = MediaQuery
        .of(context)
        .size;
    height = size.height;
    width = size.width;
    return Scaffold(
      resizeToAvoidBottomInset: true,
      body: SingleChildScrollView(
        child: Padding(
          padding:  EdgeInsets.symmetric(horizontal: width /36, vertical: height / 26),
          child: Column(
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
                 Text("Profil".tr,style: lbold.copyWith(fontSize: 14,color: themedata.isdark
                     ? RealestateColor.white
                     : RealestateColor.indigo,),),
                 Container(
                   height: height / 20,
                   width: height / 20,
                   decoration: BoxDecoration(
                       borderRadius: BorderRadius.circular(50),
                       color: RealestateColor.textfield),
                   child: Center(
                       child: SvgPicture.asset(
                         SvgIcons.export,
                         color: RealestateColor.black,
                         height: height / 36,
                       )),
                 )
               ],
             ),
             SizedBox(
               height: height / 36,
             ),
             Text(
               "El Khaliv",
               style: lbold.copyWith(fontSize: 14,color: themedata.isdark
                   ? RealestateColor.white
                   : RealestateColor.indigo,),
             ),
             SizedBox(
               height: height /180,
             ),
             Text(
               "amanda.trust@email.com",
               style: lsemibold.copyWith(fontSize: 10,color: themedata.isdark
                   ? RealestateColor.white
                   : RealestateColor.grey,),
             ),
             SizedBox(
               height: height /100,
             ),
             Stack(
               children: [
                 CircleAvatar(
                   radius: 55,
                   backgroundImage: AssetImage(
                     PngImage.estate6,
                   ),
                 ),
                 Positioned(
                   top: 80,
                     right: 10,
                     child: Container(
                       height: height / 25,
                       width: height / 25,
                       decoration: BoxDecoration(
                           borderRadius: BorderRadius.circular(10),
                           color: RealestateColor.lightgreen),
                       child: Row(mainAxisAlignment: MainAxisAlignment.center,
                         children: [
                           Text(
                             "#",
                             style: lsemibold.copyWith(
                                 fontSize: 8, color: RealestateColor.white),
                           ),
                           Text(
                             "1",
                             style: lsemibold.copyWith(
                                 fontSize: 12, color: RealestateColor.white),
                           ),
                         ],
                       ),
                     ))
               ],
             ),
             SizedBox(height: height / 56),
             Row(
               mainAxisAlignment: MainAxisAlignment.spaceBetween,
               children: [
                 Container(
                   height: height / 11,
                   width: width / 3.4,
                   decoration: BoxDecoration(
                       borderRadius: BorderRadius.circular(15),
                     color: RealestateColor.white,
                     boxShadow: const [
                       BoxShadow(
                         blurRadius: 1,
                         color: RealestateColor.grey,
                       )
                     ]
                   ),
                   child: Column(
                     mainAxisAlignment: MainAxisAlignment.center,
                     children: [
                       Text(
                         "5.0",
                         style: lbold.copyWith(fontSize: 15,color: RealestateColor.indigo),
                       ),
                       RatingBar.builder(
                         initialRating: 3,
                         minRating: 1,
                         direction: Axis.horizontal,
                         allowHalfRating: true,
                         itemCount: 5,
                         itemSize: 15,
                         itemBuilder: (context, _) => const Icon(
                           Icons.star_rounded,
                           color: Colors.amber,
                         ),
                         onRatingUpdate: (rating) {
                           // print(rating);
                         },
                       ),
                     ],
                   ),
                 ),
                 Container(
                   height: height / 11,
                   width: width /3.3,
                   decoration: BoxDecoration(
                       borderRadius: BorderRadius.circular(15),
                       color: RealestateColor.white,
                       boxShadow: const [
                         BoxShadow(
                           blurRadius: 1,
                           color: RealestateColor.grey,
                         )
                       ]),
                   child: Column(
                     mainAxisAlignment: MainAxisAlignment.center,
                     children: [
                       Text(
                         "235",
                         style: lsemibold.copyWith(fontSize: 15,color: RealestateColor.indigo),
                       ),
                       SizedBox(height: height/150,),
                       Text(
                         "Commentaires",
                         style: lmedium.copyWith(fontSize: 10,color: RealestateColor.indigo),
                       ),
                     ],
                   ),
                 ),
                 Container(
                   height: height / 11,
                   width: width / 3.3,
                   decoration: BoxDecoration(
                       borderRadius: BorderRadius.circular(15),
                       color: RealestateColor.white,
                       boxShadow: const [
                         BoxShadow(
                           blurRadius: 1,
                           color: RealestateColor.grey,
                         )
                       ]),
                   child: Column(
                     mainAxisAlignment: MainAxisAlignment.center,
                     children: [
                       Text(
                         "112",
                         style: lbold.copyWith(fontSize: 15,color: RealestateColor.indigo),
                       ),
                       SizedBox(height: height/150,),
                       Text(
                         "vendu",
                         style: lmedium.copyWith(fontSize: 10,color: RealestateColor.indigo),
                       ),
                     ],
                   ),
                 )
               ],
             ),
             SizedBox(height: height / 36),
             Container(
               height: height /15,
               decoration: BoxDecoration(
                 borderRadius: BorderRadius.circular(50),
                 color: RealestateColor.textfield,
               ),
               child:ListView.builder(
                 shrinkWrap: false,
                 physics:const NeverScrollableScrollPhysics(),
                 scrollDirection: Axis.horizontal,
                 itemCount: name.length,
                 itemBuilder: (context, index) {
                   return InkWell(
                     splashColor: RealestateColor.transparent,
                     highlightColor: RealestateColor.transparent,
                     onTap: () {
                       setState(() {
                         nameselected = index;
                       });
                     },
                     child: Padding(
                       padding:EdgeInsets.symmetric(horizontal: width/36,vertical: height/88),
                       child: Container(
                           width: width / 2.4,
                           decoration: BoxDecoration(
                             borderRadius: BorderRadius.circular(50),
                             color: nameselected == index ? RealestateColor.white :RealestateColor.transparent,
                           ),
                           child: Center(child: Text(name[index].toString(),style: lsemibold.copyWith(fontSize: 10,color:nameselected == index ? RealestateColor.indigo : RealestateColor.grey ),))),
                     ),
                   );
                 },) ,
             ),
             SizedBox(height: height / 36),
             Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
               children: [
                 SizedBox(
                   height: height /18,
                   width: width / 2,
                   child: Row(
                     children: [
                       Text(
                         "140 ".tr,
                         style:
                         lbold.copyWith(fontSize: 18,color: themedata.isdark
                             ? RealestateColor.white
                             : RealestateColor.indigo,),
                       ),
                       Text(
                         "Annonces".tr,
                         style:
                         lmedium.copyWith(fontSize: 18,color: themedata.isdark
                             ? RealestateColor.white
                             : RealestateColor.indigo,),
                       ),
                     ],
                   ),
                 ),
                 Container(
                   height: height /18,
                   width: width / 4,
                   decoration: BoxDecoration(
                     borderRadius: BorderRadius.circular(50),
                     color: RealestateColor.textfield,
                   ),
                   child: ListView.builder(
                     shrinkWrap: false,
                     physics:const NeverScrollableScrollPhysics(),
                     scrollDirection: Axis.horizontal,
                     itemCount: selectedimage.length,
                     itemBuilder: (context, index) {
                       return InkWell(
                         splashColor: RealestateColor.transparent,
                         highlightColor: RealestateColor.transparent,
                         onTap: () {
                           setState(() {
                             selected = index;
                           });
                         },
                         child: Padding(
                           padding:EdgeInsets.symmetric(horizontal: width/70,vertical: height/88),
                           child: Container(
                               width: width / 10,
                               decoration: BoxDecoration(
                                 borderRadius: BorderRadius.circular(50),
                                 color: selected == index ? RealestateColor.white :RealestateColor.transparent,
                               ),
                               child: Padding(
                                 padding: const EdgeInsets.all(4.0),
                                 child: Image.asset(selected==0 ? unselectedimage[index] : selectedimage[index],height: height/34,),
                               )),
                         ),
                       );
                     },),
                 )
               ],
             ),
             GridView.builder(
               shrinkWrap: true,
               physics: const NeverScrollableScrollPhysics(),
               itemCount: listimg.length,
               gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                   crossAxisCount: 2,
                   childAspectRatio:  MediaQuery.of(context).size.aspectRatio * 3 / 2.2,
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
                               listimg[index].toString(),
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
                             // height: height / 26,
                             width: width / 2,
                             child: Text(
                               listname[index].toString(),
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
                               color: RealestateColor.darkgreen,
                               size: height / 46,
                             ),
                             Text(
                               "Nouakchott, TVZ",
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
             SizedBox(height: height/15,)
           ],
          ),
        ),
      ),
      bottomSheet:
      Container(
        color:Colors.transparent,
        height: height/12,
        child: Padding(
          padding:  EdgeInsets.symmetric(horizontal: width / 20, vertical: height /66),
          child: Center(
            child: Container(
              height: height /14,
              width: width / 2,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: RealestateColor.lightgreen),
              child: Center(
                  child: Text(
                    "Démarrer la discussion".tr,
                    style: lbold.copyWith(fontSize: 16, color: RealestateColor.white),
                  )),
            ),
          ),
        ),
      ),
    );
  }
}
