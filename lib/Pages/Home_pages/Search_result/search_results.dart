import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:realestate/Common%20class/color.dart';
import 'package:realestate/Common%20class/fontstyle.dart';
import 'package:realestate/Common%20class/icons.dart';
import '../../../Theme/themecontroller.dart';
import 'filter_choose_location.dart';
import 'search_details.dart';

class SearchResults extends StatefulWidget {
  const SearchResults({Key? key}) : super(key: key);

  @override
  State<SearchResults> createState() => _SearchResultsState();
}

class _SearchResultsState extends State<SearchResults> {
  dynamic size;
double height = 0.00;
double width = 0.00;
  final themedata = Get.put(Themecontroler());
  TextEditingController search = TextEditingController();
  TextEditingController filtersearch = TextEditingController();
  final List<String> gridimg = <String>[
   PngImage.villa1,
   PngImage.explore9,
   PngImage.explore4,
   PngImage.explore5,
   PngImage.explore6,
   PngImage.explore2,
  ];
  final List<String> listviewimg = <String>[
    PngImage.explore8,
    PngImage.explore7,
    PngImage.explore3,
  ];
  final List<String> listviewname = <String>[
  "Ismail Moderne Maison",
  "Sidelemin Moderne Maison",
  "Mariem Maison",
  ];
  final List<String> gridname = <String>[
    "Ismail Maison",
    "Sisi Moderne Maison",
    "Sidi Mocktar Maison",
    "Warde Hamady Appartement",
    "mohammed sidi",
    "Hel Va7vo  Maison"
  ];
  int selected = 0;
  final List<String> propertytype = <String>[
    "Tout",
    "Maison",
    "Appartement",
    "Villa",
  ];
  final List<String> listname = <String>["House","semarang","\$250-\$450"];
  int typeselect = 0;
  List selectedimage = [PngImage.verticalInactive,PngImage.horizontalactive];
  List unselectedimage = [PngImage.verticalactive,PngImage.horizontalInactive];
  @override
  Widget build(BuildContext context) {
    size = MediaQuery.of(context).size;
    height = size.height;
    width = size.width;
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
            padding:EdgeInsets.symmetric(horizontal: width / 26, vertical: height / 22),
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
                  Text("Résultats de recherche".tr,style: lbold.copyWith(fontSize: 14,color: themedata.isdark
                      ? RealestateColor.white
                      : RealestateColor.indigo,),),
                  InkWell(
                    splashColor: RealestateColor.transparent,
                    highlightColor: RealestateColor.transparent,
                    onTap: () {
                      _showFilterbottomsheet();
                    },
                    child: Container(
                      height: height / 20,
                      width: height / 20,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(50),
                          color: RealestateColor.textfield),
                      child: Center(
                          child: Image.asset(PngImage.filter,color: RealestateColor.indigo,height: height / 36,)),
                    ),
                  )
                ],
              ),
              SizedBox(
                height: height / 36,
              ),
              TextField(
                controller: search,
                style: lmedium.copyWith(fontSize: 12),
                cursorColor: RealestateColor.grey,
                decoration: InputDecoration(
                    suffixIcon: const Icon(
                      Icons.search,
                      color: RealestateColor.black,
                      size: 20,
                    ),
                    filled: true,
                    hintStyle: lmedium.copyWith(fontSize: 12,color: RealestateColor.grey),
                    hintText: "Rechercher une maison, un appartement, etc.",
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20),
                        borderSide: BorderSide.none),
                    fillColor: RealestateColor.textfield),
              ),
              SizedBox(height: height/36,),
              Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SizedBox(
                    height: height /20,
                    width: width / 1.5,
                    child: Row(
                      children: [
                        Text(
                          "Trouvé".tr,
                          style:
                          lmedium.copyWith(fontSize: 18, color: themedata.isdark
                              ? RealestateColor.white
                              : RealestateColor.indigo,),
                        ),
                        Text(
                          " 8 ".tr,
                          style:
                          lbold.copyWith(fontSize: 18, color: themedata.isdark
                              ? RealestateColor.white
                              : RealestateColor.indigo,),
                        ),
                        Text(
                          "domaines".tr,
                          style:
                          lmedium.copyWith(fontSize: 18, color: themedata.isdark
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
                  ),
                ],
              ),
              if(selected == 0) ...[
                GridView.builder(
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  itemCount: gridimg.length,
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      mainAxisExtent: 250,
                      crossAxisSpacing: 10,
                      mainAxisSpacing: 10),
                  itemBuilder: (context, index) {
                    return InkWell(
                      splashColor: RealestateColor.transparent,
                      highlightColor: RealestateColor.transparent,
                      onTap: () {
                        Navigator.push(context, MaterialPageRoute(builder: (context) {
                          return const SearchDetails();
                        },));
                      },
                      child: Container(
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
                                    gridimg[index].toString(),
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
                                height: height / 200,
                              ),
                              SizedBox(
                                  height: height / 24,
                                  width: width / 2,
                                  child: Text(
                                    gridname[index].toString(),
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
                                    "Nouakchott, Arafatt",
                                    style: lregular.copyWith(fontSize: 8,color: RealestateColor.black),
                                    maxLines: 3,
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
              ]else ...[
                SizedBox(
                  height: height / 36,
                ),
                SizedBox(
                  height: height/15,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: 2,
                    itemBuilder: (context, index) {
                      return  Container(
                        margin: EdgeInsets.only(right: width/36),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(25),
                          color: RealestateColor.green,
                        ),
                        child: Padding(
                          padding: EdgeInsets.symmetric(
                              vertical: height / 66, horizontal: width / 26),
                          child: Row(
                            children: [
                              Container(
                                  height: height / 14,
                                  width: width / 12,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(50),
                                      color: RealestateColor.lightgreen),
                                  child: const Center(
                                      child: Icon(Icons.close,color: RealestateColor.white,size: 12,))
                              ),
                              SizedBox(
                                width: width / 36,
                              ),
                              Text(
                                listname[index].toString(),
                                style: lregular.copyWith(
                                    color: RealestateColor.indigo, fontSize: 10),
                              ),
                            ],
                          ),
                        ),
                      );
                    },),
                ),
                ListView.builder(
                  physics: const NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  itemCount: listviewimg.length,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding:  EdgeInsets.only(bottom:height/64 ),
                      child: InkWell(
                        highlightColor: RealestateColor.transparent,
                        splashColor: RealestateColor.transparent,
                        onTap: () {
                          // Navigator.push(context, MaterialPageRoute(
                          //   builder: (context) {
                          //     return FeaturedCategory();
                          //   },
                          // ));
                        },
                        child: Container(
                          height: height / 4.3,
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
                                      listviewimg[index].toString(),
                                      width: width / 2,
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
                                              borderRadius:
                                              BorderRadius.circular(50),
                                              color: RealestateColor.textfield),
                                          child: const Center(
                                              child: Icon(
                                                Icons.favorite_outline,
                                                color: RealestateColor.radial,
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
                                              borderRadius:
                                              BorderRadius.circular(10),
                                              color: RealestateColor.darkgreen),
                                          child: Center(
                                              child: Padding(
                                                padding: EdgeInsets.symmetric(
                                                    horizontal: width / 34),
                                                child: Text(
                                                  "Maison",
                                                  style: lmedium.copyWith(
                                                      fontSize: 9,
                                                      color: RealestateColor.white),
                                                ),
                                              ))
                                        // SvgPicture.asset(SvgIcons.right_arrow,color: color.white,height: height/34,),
                                      )),
                                ]),
                                SizedBox(
                                  width: width / 46,
                                ),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    SizedBox(
                                        width: width / 3,
                                        height: height / 18,
                                        child: Text(
                                          listviewname[index].toString(),
                                          style: lbold.copyWith(
                                              fontSize: 12,
                                              color: RealestateColor.indigo),
                                          maxLines: 2,
                                        )),
                                    Row(
                                      mainAxisAlignment:
                                      MainAxisAlignment.start,
                                      children: [
                                        const Icon(
                                          Icons.star_rounded,
                                          color: RealestateColor.yellow,
                                          size: 15,
                                        ),
                                        Text(
                                          "4.9",
                                          style: lbold.copyWith(fontSize: 8,color: RealestateColor.grey),
                                        ),
                                      ],
                                    ),
                                    SizedBox(
                                      width: width / 3,
                                      height: height / 14,
                                      child: Row(
                                        children: [
                                          Icon(
                                            Icons.location_pin,
                                            color: RealestateColor.darkgreen,
                                            size: height / 66,
                                          ),
                                          Center(
                                              child: Text(
                                                "Nouakchott, Sokokk",
                                                style:
                                                lregular.copyWith(fontSize: 8,color: RealestateColor.grey),
                                                maxLines: 3,
                                              ))
                                        ],
                                      ),
                                    ),
                                    Row(
                                      children: [
                                        Text(
                                          "\MRU 456",
                                          style: lsemibold.copyWith(
                                              color: RealestateColor.indigo, fontSize: 16),
                                        ),
                                        Text(
                                          "/Mois",
                                          style: lmedium.copyWith(
                                              color: RealestateColor.indigo, fontSize: 8),
                                        ),
                                      ],
                                    )
                                  ],
                                )
                              ],
                            ),
                          ),
                        ),
                      ),
                    );
                  },
                ),
              ],
              // SizedBox(height: height/8,),
              // Image.asset(PngImage.Alert_Warning),
              // SizedBox(height: height/36,),
              // Row(mainAxisAlignment: MainAxisAlignment.center,
              //   children: [
              //     Text("Search ",style: lmedium.copyWith(fontSize: 25,color: RealestateColor.indigo),),
              //     Text("not found",style: lbold.copyWith(fontSize: 25,color: RealestateColor.darkgreen),),
              //   ],
              // ),
              // SizedBox(height: height/46,),
              // Text("Sorry, we can’t find the real estates you are looking",style: lregular.copyWith(fontSize: 12,color: RealestateColor.grey),),
              // Text("for. Maybe, a little spelling mistake?",style: lregular.copyWith(fontSize: 12,color: RealestateColor.grey),),
            ],
          ),
        ),
      ),
    );
  }
  _showFilterbottomsheet() {
    showModalBottomSheet(
      backgroundColor: RealestateColor.transparent,
      context: context,
      builder: (BuildContext context) {
        return StatefulBuilder(
          builder: (BuildContext context, StateSetter setState) {
            return SingleChildScrollView(
              child: Container(
                decoration: const BoxDecoration(
                    borderRadius:  BorderRadius.only(topRight:Radius.circular(50),topLeft: Radius.circular(50)),
                    color: RealestateColor.white),
                child: Padding(
                  padding: EdgeInsets.symmetric(
                      horizontal: width / 26, vertical: height / 66),
                  child: Column(crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Divider(
                        indent: 130,
                        thickness: 1.5,
                        color: RealestateColor.grey,
                        endIndent: 130,
                      ),
                      SizedBox(
                        height: height / 36,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text("Filtre".tr,
                              style: lbold.copyWith(
                                  fontSize: 18, color: RealestateColor.indigo)),
                          Container(
                            width: width / 4,
                            height: height / 18,
                            margin: EdgeInsets.only(right: width / 36),
                            decoration: BoxDecoration(
                                color: RealestateColor.darkgreen,
                                borderRadius: BorderRadius.circular(50)),
                            child: Padding(
                              padding:
                              EdgeInsets.symmetric(horizontal: width / 15),
                              child: Center(
                                  child: Text(
                                    "Réinitialiser".tr,
                                    style: lmedium.copyWith(
                                        fontSize: 10, color: RealestateColor.white),
                                  )),
                            ),
                          )
                        ],
                      ),
                      SizedBox(
                        height: height / 36,
                      ),
                      Text(
                        "Type de propriété",
                        style:
                        lmedium.copyWith(fontSize: 18, color: RealestateColor.indigo),
                      ),
                      SizedBox(
                        height: height / 76,
                      ),
                      SizedBox(
                        height: height / 20,
                        child: ListView.builder(
                          scrollDirection: Axis.horizontal,
                          itemCount: propertytype.length,
                          itemBuilder: (context, index) {
                            return InkWell(
                              highlightColor: RealestateColor.transparent,
                              splashColor: RealestateColor.transparent,
                              onTap: () {
                               setState((){
                                 typeselect = index;
                               });
                              },
                              child: Container(
                                // width: width/7,
                                margin: EdgeInsets.only(right: width / 36),
                                decoration: BoxDecoration(
                                    color: typeselect == index
                                        ? RealestateColor.darkgreen
                                        : RealestateColor.textfield,
                                    borderRadius: BorderRadius.circular(20)),
                                child: Padding(
                                  padding: EdgeInsets.symmetric(
                                      horizontal: width / 15),
                                  child: Center(
                                      child: Text(
                                        propertytype[index].toString(),
                                        style:  typeselect == index
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
                      Text(
                        "Localisation",
                        style:
                        lmedium.copyWith(fontSize: 18, color: RealestateColor.indigo),
                      ),
                      SizedBox(
                        height: height / 76,
                      ),
                      TextField(
                        controller: filtersearch,
                        style: lmedium.copyWith(fontSize: 12),
                        cursorColor: RealestateColor.grey,
                        decoration: InputDecoration(
                            prefixIcon: const Icon(
                              Icons.location_on,
                              color: RealestateColor.darkgreen,
                              size: 20,
                            ),
                            suffixIcon: const Icon(
                              Icons.search,
                              color: RealestateColor.black,
                              size: 20,
                            ),
                            filled: true,
                            hintText: "Rechercher une maison, un appartement, etc.",
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(20),
                                borderSide: BorderSide.none),
                            fillColor: RealestateColor.textfield),
                      ),
                      SizedBox(
                        height: height / 36,
                      ),
                      Container(
                        height: height/3.5,
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
                              height: height/4.3,
                              width: width/1,
                              child: ClipRRect(
                                  borderRadius: const BorderRadius.only(topRight: Radius.circular(25),topLeft: Radius.circular(25)),
                                  child: Image.asset(PngImage.map,fit: BoxFit.fitWidth,)),
                            ),
                            InkWell(
                              splashColor: RealestateColor.transparent,
                              highlightColor: RealestateColor.transparent,
                              onTap: () {
                                Navigator.push(context, MaterialPageRoute(builder: (context) {
                                  return const ChooseLocation();
                                },));
                              },
                              child: Container(
                                height: height/19,
                                decoration: BoxDecoration(
                                  borderRadius: const BorderRadius.only(bottomRight: Radius.circular(20),bottomLeft: Radius.circular(20)),
                                  color: RealestateColor.green,
                                ),
                                child: Center(child: Text("Sélectionnez sur la map",style: lregular.copyWith(fontSize: 12,color: RealestateColor.indigo),),),
                              ),
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
                          Navigator.pop(context);
                        },
                        child: Center(
                          child: Container(
                            height: height /14,
                            width: width / 1.5,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: RealestateColor.lightgreen),
                            child: Center(
                                child: Text(
                                  "Appliquer le filtre",
                                  style: lbold.copyWith(fontSize: 16, color: RealestateColor.white),
                                )),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            );
          },
        );
      },
    );
  }
}
