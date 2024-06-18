import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:realestate/Common%20class/color.dart';
import 'package:realestate/Common%20class/fontstyle.dart';
import '../../../Theme/themecontroller.dart';
import 'add_loction.dart';

class AddListing extends StatefulWidget {
  const AddListing({Key? key}) : super(key: key);

  @override
  State<AddListing> createState() => _AddListingState();
}

class _AddListingState extends State<AddListing> {
  dynamic size;
double height = 0.00;
double width = 0.00;
  final themedata = Get.put(Themecontroler());
  final List<String> listtype = <String>["Rent", "Sell"];
  final List<String> category = <String>[
    "Maison",
    "Appartement",
    "Hôtel",
    "Villa",
    "Élevage"
  ];
  int selected = 0;

  @override
  Widget build(BuildContext context) {
    size = MediaQuery.of(context).size;
    height = size.height;
    width = size.width;
    return Scaffold(
      body: Padding(
        padding:
            EdgeInsets.symmetric(horizontal: width / 26, vertical: height / 22),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
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
                SizedBox(
                  width: width / 4,
                ),
                Text(
                  "Ajouter une annonce".tr,
                  style: lbold.copyWith(fontSize: 14,color: themedata.isdark
                      ? RealestateColor.white
                      : RealestateColor.indigo,),
                ),
              ],
            ),
            SizedBox(
              height: height / 26,
            ),
            Text(
              "Salut Ahmmed, Remplissez les détails de votre",
              style: lmedium.copyWith(fontSize: 25, color: themedata.isdark
                  ? RealestateColor.white
                  : RealestateColor.indigo,),
            ),
            Text(
              "immobilier",
              style: lmedium.copyWith(fontSize: 25, color: themedata.isdark
                  ? RealestateColor.white
                  : RealestateColor.darkgreen,),
            ),
            SizedBox(
              height: height / 36,
            ),
            TextField(
              style: lmedium.copyWith(fontSize: 12, color: RealestateColor.indigo),
              decoration: InputDecoration(
                  suffixIcon: const Icon(
                    Icons.home_outlined,
                    color: RealestateColor.indigo,
                    size: 20,
                  ),
                  filled: true,
                  enabled: false,
                  hintText: "La Maison du Lodge",
                  hintStyle: lregular.copyWith(fontSize: 12, color: RealestateColor.grey),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15),
                      borderSide: BorderSide.none),
                  fillColor: RealestateColor.textfield),
            ),
            SizedBox(
              height: height / 36,
            ),
            Text(
              "Type d'annonce".tr,
              style: lsemibold.copyWith(fontSize: 18,color: themedata.isdark
                  ? RealestateColor.white
                  : RealestateColor.indigo,),
            ),
            SizedBox(
              height: height / 46,
            ),
            SizedBox(
              height: height / 18,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: listtype.length,
                itemBuilder: (context, index) {
                  return InkWell(
                    highlightColor: RealestateColor.transparent,
                    splashColor: RealestateColor.transparent,
                    onTap: () {
                      // setState(() {
                      //   selected = index;
                      // });
                    },
                    child: Container(
                      // width: width/7,
                      margin: EdgeInsets.only(right: width / 36),
                      decoration: BoxDecoration(
                          color: RealestateColor.darkgreen,
                          borderRadius: BorderRadius.circular(20)),
                      child: Padding(
                        padding: EdgeInsets.symmetric(horizontal: width / 15),
                        child: Center(
                            child: Text(
                          listtype[index].toString(),
                          style:
                              lbold.copyWith(fontSize: 10, color: RealestateColor.white),
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
              "Catégorie de Propriété".tr,
              style: lsemibold.copyWith(fontSize: 18, color: themedata.isdark
                  ? RealestateColor.white
                  : RealestateColor.indigo,),
            ),
            GridView.builder(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              itemCount: 5,
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
                      category[index].toString(),
                      style: selected == index
                          ? lbold.copyWith(fontSize: 10, color: RealestateColor.white)
                          : lmedium.copyWith(
                              fontSize: 10, color: RealestateColor.indigo),
                    )),
                  ),
                );
              },
            ),
            const Spacer(),
            Row(mainAxisAlignment: MainAxisAlignment.center,
              children: [
                InkWell(
                  splashColor: RealestateColor.transparent,
                  highlightColor: RealestateColor.transparent,
                  onTap: () {
                    Navigator.pop(context);
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
                        child: Icon(Icons.arrow_back,color: RealestateColor.black,size: 20,)),
                  ),
                ),
                SizedBox(width: width/16,),
                InkWell(
                  highlightColor: RealestateColor.transparent,
                  splashColor: RealestateColor.transparent,
                  onTap: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) {
                      return const AddLocation();
                    },));
                  },
                  child: Container(
                    height: height/16,
                    width: width/2,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: RealestateColor.lightgreen
                    ),
                    child: Center(child: Text("Suivant".tr,style: lbold.copyWith(fontSize: 16,color: RealestateColor.white),)),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
