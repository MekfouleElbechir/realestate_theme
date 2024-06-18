import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:get/get.dart';
import 'package:realestate/Common%20class/color.dart';
import 'package:realestate/Common%20class/fontstyle.dart';
import 'package:realestate/Common%20class/icons.dart';

import '../../Theme/themecontroller.dart';

class NotificationScreen extends StatefulWidget {
  const NotificationScreen({Key? key}) : super(key: key);

  @override
  State<NotificationScreen> createState() => _NotificationScreenState();
}

class _NotificationScreenState extends State<NotificationScreen> {
  dynamic size;
double height = 0.00;
double width = 0.00;
  int nameselected = 0;
  final List<String> name = <String>["ÉcranDeNotification","Messages"];
  final List<String> allchatimg = <String>[
    PngImage.estate6,
    PngImage.estate5,
    PngImage.estate4,
    PngImage.estate3,
    PngImage.estate2,
  ];
  final List<String> todayimg = <String>[
   PngImage.estate3,
   PngImage.estate2,
   PngImage.estate1,
  ];
  final List<String> todayexplore = <String>[
    PngImage.explore2,
    PngImage.explore1,
    PngImage.explore4,
  ];
  final List<String> orderexplore = <String>[
    PngImage.explore3,
    PngImage.explore5,
    PngImage.explore6,
  ];
  final List<String> orderimg = <String>[
    PngImage.estate4,
    PngImage.estate5,
    PngImage.estate6,
  ];
  final List<String> bloglist = <String>[
    "Tout",
    "Revoir",
    "vendue",
    "Maison",
  ];
  int selected = 0;
  final themedata = Get.put(Themecontroler());
  @override
  Widget build(BuildContext context) {
    size = MediaQuery.of(context).size;
    height = size.height;
    width = size.width;
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric( horizontal: width / 36, vertical: height / 26),
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
                            size: 20,
                            color: RealestateColor.indigo,
                          )),
                    ),
                  ),
                  Container(
                    height: height / 20,
                    width: height / 20,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(50),
                        color: RealestateColor.textfield),
                    child: const Center(
                        child: Icon(Icons.delete_outline_sharp,color: RealestateColor.indigo,size: 20,)),
                  )
                ],
              ),
              SizedBox(
                height: height / 36,
              ),
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
              SizedBox(
                height: height / 20,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: bloglist.length,
                  itemBuilder: (context, index) {
                    return InkWell(
                      highlightColor: RealestateColor.transparent,
                      splashColor: RealestateColor.transparent,
                      onTap: () {
                        setState(() {
                          selected = index;
                        });
                      },
                      child: Container(
                        // width: width/7,
                        margin: EdgeInsets.only(right: width / 36),
                        decoration: BoxDecoration(
                            color: selected == index
                                ? RealestateColor.darkgreen
                                : RealestateColor.textfield,
                            borderRadius: BorderRadius.circular(20)),
                        child: Padding(
                          padding: EdgeInsets.symmetric(
                              horizontal: width / 15),
                          child: Center(
                              child: Text(
                                bloglist[index].toString(),
                                style:  selected == index
                                    ? lbold.copyWith(fontSize: 10,color: RealestateColor.white)
                                    : lmedium.copyWith(fontSize: 10,color: RealestateColor.indigo),
                              )),
                        ),
                      ),
                    );
                  },
                ),
              ),
              SizedBox(
                height: height / 34,
              ),
             if(nameselected == 0) ...[
             Text("Aujourd’hui".tr,style: lbold.copyWith(fontSize: 18,color: themedata.isdark
                 ? RealestateColor.white
                 : RealestateColor.indigo,),),
              ListView.builder(
                physics: const NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                itemCount: todayimg.length,
                itemBuilder: (context, index) {
                return Padding(
                  padding:  EdgeInsets.only(bottom: height/96),
                  child: Slidable(
                    endActionPane: ActionPane(
                        extentRatio: 0.25,
                        motion: const ScrollMotion(),
                        children: [
                          SlidableAction(
                            onPressed: (context) {
                            },
                            backgroundColor: RealestateColor.darkgreen,
                            foregroundColor: RealestateColor.white,
                            icon: Icons.delete_outline_sharp,
                            borderRadius: const BorderRadius.only(topRight: Radius.circular(25),bottomRight: Radius.circular(25)),
                          ),
                        ]),
                    child: Container(
                      height: height/7,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),color: RealestateColor.textfield,
                      ),
                      child: Padding(
                        padding:  EdgeInsets.symmetric(horizontal: width / 36, vertical: height / 86),
                        child: Row(crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                             CircleAvatar(
                               radius: 26,
                               backgroundColor: RealestateColor.white,
                               child: CircleAvatar(
                                 radius: 23,
                                 backgroundImage: AssetImage(todayimg[index].toString()),
                               ),
                             ),
                            SizedBox(width: width/36,),
                            Column(crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                SizedBox(
                                  width: width/2,
                                  child: Row(
                                    children: [
                                      Text("khadije sidi",style: lbold.copyWith(fontSize: 12,color: RealestateColor.indigo),
                                        maxLines: 1,
                                        overflow: TextOverflow.ellipsis,
                                      ),
                                    ],
                                  ),
                                ),
                                SizedBox(
                                  height: height/20,
                                  width: width/2,
                                  child: Text("Je viens de vous envoyer un message. Vérifiez le message dans l'onglet Message.",style: lregular.copyWith(fontSize: 10,color: RealestateColor.grey),
                                    maxLines: 3,
                                    overflow: TextOverflow.ellipsis,
                                  ),
                                ),
                                Text("il y a 10 minutes",style: lregular.copyWith(fontSize: 8,color: RealestateColor.darkgrey),)
                              ],
                            ),
                            Container(
                              height: height/15,
                              width: width/5,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: RealestateColor.white
                              ),
                              child: Padding(
                                padding:  const EdgeInsets.all(3),
                                child: ClipRRect(
                                    borderRadius: BorderRadius.circular(10),
                                    child: Image.asset(todayexplore[index].toString(),fit: BoxFit.fitWidth,)),
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                );
              },),
              SizedBox(
                height: height / 34,
              ),
              Text("Écran de notification plus ancien".tr,style: lbold.copyWith(fontSize: 18,color: themedata.isdark
                  ? RealestateColor.white
                  : RealestateColor.indigo,),),
              ListView.builder(
                physics: const NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                itemCount: orderimg.length,
                itemBuilder: (context, index) {
                  return Padding(
                    padding:  EdgeInsets.only(bottom: height/96),
                    child: Slidable(
                      endActionPane: ActionPane(
                          extentRatio: 0.25,
                          motion: const ScrollMotion(),
                          children: [
                            SlidableAction(
                              onPressed: (context) {
                              },
                              backgroundColor: RealestateColor.darkgreen,
                              foregroundColor: RealestateColor.white,
                              icon: Icons.delete_outline_sharp,
                              borderRadius: const BorderRadius.only(topRight: Radius.circular(25),bottomRight: Radius.circular(25)),
                            ),
                          ]),
                      child: Container(
                        height: height/7,
                        margin: EdgeInsets.only(bottom: height/96),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),color: RealestateColor.textfield,
                        ),
                        child: Padding(
                          padding:  EdgeInsets.symmetric(horizontal: width / 36, vertical: height / 86),
                          child: Row(crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              CircleAvatar(
                                radius: 26,
                                // backgroundColor: color.white,
                                // child: CircleAvatar(
                                //   radius: 23,
                                  backgroundImage: AssetImage(orderimg[index].toString()),
                                // ),
                              ),
                              SizedBox(width: width/36,),
                              Column(crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                children: [
                                  SizedBox(
                                    width: width/2,
                                    child: Row(
                                      children: [
                                        Text("khadije sidi",style: lbold.copyWith(fontSize: 12,color: RealestateColor.indigo),
                                          maxLines: 1,
                                          overflow: TextOverflow.ellipsis,
                                        ),
                                      ],
                                    ),
                                  ),
                                  SizedBox(
                                    height: height/20,
                                    width: width/2,
                                    child: Text("Je viens de vous envoyer un message. Vérifiez le message dans l'onglet Message.",style: lregular.copyWith(fontSize: 10,color: RealestateColor.grey),
                                      maxLines: 3,
                                      overflow: TextOverflow.ellipsis,
                                    ),
                                  ),
                                  Text("il y a 10 minutes",style: lregular.copyWith(fontSize: 8,color: RealestateColor.darkgrey),)
                                ],
                              ),
                              Container(
                                height: height/15,
                                width: width/5,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),
                                    color: RealestateColor.white
                                ),
                                child: Padding(
                                  padding:  const EdgeInsets.all(3),
                                  child: ClipRRect(
                                      borderRadius: BorderRadius.circular(10),
                                      child: Image.asset(orderexplore[index].toString(),fit: BoxFit.fitWidth,)),
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                  );
                },),
             ]else ...[
               Text("Tous les Chats".tr,style: lbold.copyWith(fontSize: 18,color: themedata.isdark
                   ? RealestateColor.white
                   : RealestateColor.indigo,),),
               ListView.builder(
                 physics: const NeverScrollableScrollPhysics(),
                 shrinkWrap: true,
                 itemCount: allchatimg.length,
                 itemBuilder: (context, index) {
                   return Padding(
                     padding:  EdgeInsets.only(bottom: height/96),
                     child: Slidable(
                       endActionPane: ActionPane(
                           extentRatio: 0.25,
                           motion: const ScrollMotion(),
                           children: [
                             SlidableAction(
                               onPressed: (context) {
                                 _shownottomsheet();
                               },
                               backgroundColor: RealestateColor.darkgreen,
                               foregroundColor: RealestateColor.white,
                               icon: Icons.delete_outline_sharp,
                               borderRadius: const BorderRadius.only(topRight: Radius.circular(25),bottomRight: Radius.circular(25)),
                             ),
                           ]),
                       child: Container(
                         height: height/12,
                         decoration: BoxDecoration(
                           borderRadius: BorderRadius.circular(20),color: RealestateColor.textfield,
                         ),
                         child: Padding(
                           padding:  EdgeInsets.symmetric(horizontal: width / 36, vertical: height / 86),
                           child: Row(crossAxisAlignment: CrossAxisAlignment.start,
                             children: [
                               Stack(
                                 children: [
                                   CircleAvatar(
                                     radius: 26,
                                     // backgroundColor: color.white,
                                     // child: CircleAvatar(
                                     //   radius: 23,
                                       backgroundImage: AssetImage(allchatimg[index].toString()),
                                     // ),
                                   ),
                                   index==0 ?
                                   const Positioned(
                                     right: 0.01,
                                       child: CircleAvatar(
                                     radius: 8,
                                     backgroundColor: RealestateColor.white,
                                     child: CircleAvatar(
                                       radius: 5,
                                       backgroundColor: RealestateColor.lightgreen,
                                     ),
                                   )): Container(),
                                 ],
                               ),
                               SizedBox(width: width/36,),
                               Column(crossAxisAlignment: CrossAxisAlignment.start,
                                 mainAxisAlignment: MainAxisAlignment.center
                                 ,
                                 children: [
                                   SizedBox(
                                     width: width/1.4,
                                     child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                       children: [
                                         Text("lkhalya bnou",style: lbold.copyWith(fontSize: 12,color: RealestateColor.indigo),
                                           maxLines: 1,
                                           overflow: TextOverflow.ellipsis,
                                         ),
                                         Text("10.45",style: lregular.copyWith(fontSize: 9,color: RealestateColor.darkgrey),)
                                       ],
                                     ),
                                   ),
                                   SizedBox(
                                     width: width/1.4,
                                     child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                       children: [
                                         Text("tempor incididunt ut labore et dolore",style: lregular.copyWith(fontSize: 10,color: RealestateColor.grey),
                                           maxLines: 1,
                                           overflow: TextOverflow.ellipsis,
                                         ),
                                         index == 0 ? CircleAvatar(radius: 8,backgroundColor: RealestateColor.lightgreen,child: Text("1",style: lregular.copyWith(fontSize: 10,color: RealestateColor.white),),):
                                         Text("il y a",style: lregular.copyWith(fontSize: 9,color: RealestateColor.darkgrey),)
                                       ],
                                     ),
                                   ),

                                 ],
                               ),
                             ],
                           ),
                         ),
                       ),
                     ),
                   );
                 },),
             ]
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
                      height: height / 76,
                    ),
                    Image.asset(PngImage.alertwarning,height: height/5,),
                    Text("Etes-vous sûr de vouloir",style: lmedium.copyWith(fontSize: 20,color: RealestateColor.indigo),),
                    Row(mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text("supprimer ",style: lbold.copyWith(fontSize: 20,color: RealestateColor.darkgreen),),
                        Text("toute ta conversation ?",style: lmedium.copyWith(fontSize: 20,color: RealestateColor.indigo),),
                      ],),
                    SizedBox(
                      height: height / 46,
                    ),
                    Text("Cette action est irréversible",style: lregular.copyWith(fontSize: 10,color: RealestateColor.grey),),
                    SizedBox(
                      height: height / 26,
                    ),
                    Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        InkWell(
                          splashColor: RealestateColor.transparent,
                          highlightColor: RealestateColor.transparent,
                          onTap: () {
                            Navigator.pop(context);
                          },
                          child: Container(
                            height: height /14,
                            width: width / 2.3,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                color: RealestateColor.lightgreen),
                            child: Center(
                                child: Text(
                                  "Annuler".tr,
                                  style: lsemibold.copyWith(fontSize: 14, color: RealestateColor.white),
                                )),
                          ),
                        ),
                        Container(
                          height: height /14,
                          width: width / 2.3,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              color: RealestateColor.textfield),
                          child: Center(
                              child: Text(
                                "Supprimer".tr,
                                style: lsemibold.copyWith(fontSize: 14, color: RealestateColor.indigo),
                              )),
                        ),
                      ],
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
