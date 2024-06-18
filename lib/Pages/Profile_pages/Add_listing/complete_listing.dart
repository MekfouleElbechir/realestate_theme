import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:realestate/Common%20class/color.dart';
import 'package:realestate/Common%20class/fontstyle.dart';
import 'package:realestate/Common%20class/icons.dart';

import '../../../Theme/themecontroller.dart';

class CompleteListing extends StatefulWidget {
  const CompleteListing({Key? key}) : super(key: key);

  @override
  State<CompleteListing> createState() => _CompleteListingState();
}

class _CompleteListingState extends State<CompleteListing> {
  dynamic size;
double height = 0.00;
double width = 0.00;
  final themedata = Get.put(Themecontroler());
  final List<String> name = <String>[
    "Mensuel",
    "Annuel",
  ];
  final List<String> roomnum = <String>[
    "<4",
    "4",
    "6","9","3","1"
  ];
  final List<String> enviromentname = <String>[
    "Parcage",
    " Service à domicile",
    "Jardin", "salle de sport ", "Parc", "restaurant ", "Adapté aux enfants"
  ];
  int selected = 0;
  int roomselected = 0;
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
                  Text("Ajouter un commentaire".tr,style: lbold.copyWith(fontSize: 14,color: themedata.isdark
                      ? RealestateColor.white
                      : RealestateColor.indigo,),),
                ],
              ),
              SizedBox(
                height: height / 26,
              ),
              Row(
                children: [
                  Text("Presque fini, ",style: lbold.copyWith(fontSize: 25,color: themedata.isdark
                      ? RealestateColor.white
                      : RealestateColor.darkgreen,),),
                  Text("complète",style: lmedium.copyWith(fontSize: 25,color: themedata.isdark
                      ? RealestateColor.white
                      : RealestateColor.indigo,),),
                ],
              ),
              Text("la liste",style: lmedium.copyWith(fontSize: 25,color: themedata.isdark
                  ? RealestateColor.white
                  : RealestateColor.indigo,),),
              SizedBox(
                height: height / 36,
              ),
              Text("prix de vente".tr,style: lbold.copyWith(fontSize: 18,color: themedata.isdark
                  ? RealestateColor.white
                  : RealestateColor.indigo,),),
              SizedBox(
                height: height / 46,
              ),
              Container(
                height: height/15,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: RealestateColor.textfield,
                ),
                child: Padding(
                  padding:  EdgeInsets.symmetric(horizontal: width/26),
                  child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("\MRU 180,000",style: lsemibold.copyWith(fontSize: 12,color: RealestateColor.indigo),),

                    ],
                  ),
                ),
              ),
              SizedBox(
                height: height / 36,
              ),
              Text("prix du loyer".tr,style: lbold.copyWith(fontSize: 18,color: themedata.isdark
                  ? RealestateColor.white
                  : RealestateColor.indigo,),),
              SizedBox(
                height: height / 46,
              ),
              Container(
                height: height/15,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: RealestateColor.textfield,
                ),
                child: Padding(
                  padding:  EdgeInsets.symmetric(horizontal: width/26),
                  child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("\MRU 323/Mois",style: lsemibold.copyWith(fontSize: 12,color: RealestateColor.indigo),),

                    ],
                  ),
                ),
              ),
              SizedBox(
                height: height / 46,
              ),
              SizedBox(
                height: height / 18,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: name.length,
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
                                name[index].toString(),
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
                height: height / 36,
              ),
              Text("Caractéristiques de l'établissement".tr,style: lbold.copyWith(fontSize: 18,color: themedata.isdark
                  ? RealestateColor.white
                  : RealestateColor.indigo,),),
              ListView.builder(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                itemCount: 3,
                itemBuilder: (context, index) {
                return Container(
                  height: height/14,
                  margin: EdgeInsets.only(bottom: height/76),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: RealestateColor.textfield,
                  ),
                  child: Padding(
                    padding:  EdgeInsets.symmetric(horizontal: width/26),
                    child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("chambre à coucher",style: lsemibold.copyWith(fontSize: 12,color: RealestateColor.indigo),),
                        SizedBox(width: width/3,),
                        Container(
                          height: height/30,
                          width: width/14,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: RealestateColor.darkgrey,
                          ),
                          child: const Icon(Icons.remove_sharp,color: RealestateColor.white,size: 15,),
                        ),
                        Text("3",style: lsemibold.copyWith(fontSize: 16,color: RealestateColor.indigo),),
                        Container(
                          height: height/30,
                          width: width/14,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: RealestateColor.darkgrey,
                          ),
                          child: const Icon(Icons.add,color: RealestateColor.white,size: 15,),
                        ),
                      ],
                    ),
                  ),
                );
              },),
              SizedBox(
                height: height / 36,
              ),
              Text("Total_chambres".tr,style: lbold.copyWith(fontSize: 18,color: themedata.isdark
                  ? RealestateColor.white
                  : RealestateColor.indigo,),),
              SizedBox(
                height: height / 46,
              ),
              SizedBox(
                height: height / 18,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: roomnum.length,
                  itemBuilder: (context, index) {
                    return InkWell(
                      highlightColor: RealestateColor.transparent,
                      splashColor: RealestateColor.transparent,
                      onTap: () {
                        setState(() {
                          roomselected = index;
                        });
                      },
                      child: Container(
                        margin: EdgeInsets.only(right: width / 36),
                        decoration: BoxDecoration(
                            color: roomselected == index
                                ? RealestateColor.darkgreen
                                : RealestateColor.textfield,
                            borderRadius: BorderRadius.circular(20)),
                        child: Padding(
                          padding: EdgeInsets.symmetric(
                              horizontal: width / 15),
                          child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Image.asset(PngImage.sofo),
                              SizedBox(width: width/36,),
                              Text(
                                roomnum[index].toString(),
                                style:  roomselected == index
                                    ? lbold.copyWith(fontSize: 10,color: RealestateColor.white)
                                    : lmedium.copyWith(fontSize: 10,color: RealestateColor.indigo),
                              ),
                            ],
                          ),
                        ),
                      ),
                    );
                  },
                ),
              ),
              SizedBox(
                height: height / 26,
              ),
              Text("Installations environnementales".tr,style: lbold.copyWith(fontSize: 18,color: themedata.isdark
                  ? RealestateColor.white
                  : RealestateColor.indigo,),),
              GridView.builder(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                itemCount: enviromentname.length,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 3,
                    mainAxisSpacing: 10,
                    crossAxisSpacing: 10,
                    childAspectRatio: 2
                ),
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
                      margin: EdgeInsets.only(right: width / 346),
                      decoration: BoxDecoration(
                          color: selected == index
                              ? RealestateColor.darkgreen
                              : RealestateColor.textfield,
                          borderRadius: BorderRadius.circular(20)),
                      child: Center(
                          child: Text(
                            enviromentname[index].toString(),
                            style: selected == index
                                ? lbold.copyWith(fontSize: 10, color: RealestateColor.white)
                                : lmedium.copyWith(
                                fontSize: 10, color: RealestateColor.indigo),
                          )),
                    ),
                  );
                },
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
                      _errorshownottomsheet();
                    },
                    child: Container(
                      height: height/16,
                      width: width/2,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: RealestateColor.lightgreen
                      ),
                      child: Center(child: Text("Terminer".tr,style: lbold.copyWith(fontSize: 16,color: RealestateColor.white),)),
                    ),
                  ),
                  SizedBox(width: width/16,),
                  InkWell(
                    splashColor: RealestateColor.transparent,
                    highlightColor: RealestateColor.transparent,
                    onTap: () {
                     _shownottomsheet();
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
                    Image.asset(PngImage.alertsuccess,height: height/5,),
                    Text("Votre annonce est maintenant ",style: lmedium.copyWith(fontSize: 20,color: RealestateColor.indigo),),
                    Text("publié",style: lbold.copyWith(fontSize: 20,color: RealestateColor.darkgreen),),
                    SizedBox(
                      height: height / 46,
                    ),
                    Text("",style: lregular.copyWith(fontSize: 10,color: RealestateColor.grey),),
                    SizedBox(
                      height: height / 26,
                    ),
                    Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        InkWell(
                          splashColor: RealestateColor.transparent,
                          highlightColor: RealestateColor.transparent,
                          onTap: () {
                            // Navigator.pop(context);
                          },
                          child: Container(
                            height: height /14,
                            width: width / 2.3,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: RealestateColor.textfield),
                            child: Center(
                                child: Text(
                                  "Ajouter Plus",
                                  style: lsemibold.copyWith(fontSize: 14, color: RealestateColor.indigo),
                                )),
                          ),
                        ),
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
                                borderRadius: BorderRadius.circular(10),
                                color: RealestateColor.lightgreen),
                            child: Center(
                                child: Text(
                                  "Terminer".tr,
                                  style: lsemibold.copyWith(fontSize: 14, color: RealestateColor.white),
                                )),
                          ),
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
  _errorshownottomsheet() {
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
                    Image.asset(PngImage.alertdanger,height: height/5,),
                    Text("Aw snap, Quelque chose",style: lmedium.copyWith(fontSize: 20,color: RealestateColor.indigo),),
                    Row(mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text("Erreur",style: lbold.copyWith(fontSize: 20,color: RealestateColor.darkgreen),),
                        Text("arrivée",style: lmedium.copyWith(fontSize: 20,color: RealestateColor.indigo),),
                      ],
                    ),
                    SizedBox(
                      height: height / 46,
                    ),
                    Text("",style: lregular.copyWith(fontSize: 10,color: RealestateColor.grey),),
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
                                borderRadius: BorderRadius.circular(10),
                                color: RealestateColor.textfield),
                            child: Center(
                                child: Text(
                                  "Fermer",
                                  style: lsemibold.copyWith(fontSize: 14, color: RealestateColor.indigo),
                                )),
                          ),
                        ),
                        Container(
                          height: height /14,
                          width: width / 2.3,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: RealestateColor.lightgreen),
                          child: Center(
                              child: Text(
                                "Recommencez",
                                style: lsemibold.copyWith(fontSize: 14, color: RealestateColor.white),
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
