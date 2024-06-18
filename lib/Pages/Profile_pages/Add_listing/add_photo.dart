import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:realestate/Common%20class/color.dart';
import 'package:realestate/Common%20class/fontstyle.dart';
import 'package:realestate/Common%20class/icons.dart';
import '../../../Theme/themecontroller.dart';
import 'complete_listing.dart';

class AddPhoto extends StatefulWidget {
  const AddPhoto({Key? key}) : super(key: key);

  @override
  State<AddPhoto> createState() => _AddPhotoState();
}

class _AddPhotoState extends State<AddPhoto> {
  dynamic size;
double height = 0.00;
double width = 0.00;
  final themedata = Get.put(Themecontroler());
  final List<String> photo = <String>[
    PngImage.explore2,
    PngImage.explore3,
    PngImage.explore4,
  ];
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
              Text("Ajoutez des photos à votre \nréférencement",style: lmedium.copyWith(fontSize: 25,color: themedata.isdark
                  ? RealestateColor.white
                  : RealestateColor.indigo,),),
              GridView.builder(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                itemCount: photo.length,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                   mainAxisSpacing: 10,
                  crossAxisSpacing: 10,
                  childAspectRatio: 3/3,
              ), itemBuilder: (context, index) {
                return Stack(
                  children: [
                   ClipRRect(
                     borderRadius: BorderRadius.circular(20),
                     child: Image.asset(photo[index].toString(),fit:BoxFit.fitWidth,width: width/2,),
                   ),
                    const Positioned(
                      right: 0.01,
                        child: CircleAvatar(
                      radius: 13,
                      backgroundColor: RealestateColor.lightgreen,
                      child: Icon(Icons.close,size: 10,color: RealestateColor.white,),
                    ))
                  ],
                );
              },),
              SizedBox(
                height: height / 46,
              ),
              Container(
                height: height / 14,
                width: width / 7,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: RealestateColor.textfield),
                child: const Center(
                    child: Icon(Icons.add,color: RealestateColor.indigo,size: 20,)),
              ),
              SizedBox(
                height: height / 10,
              ),
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
                        return const CompleteListing();
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
      ),
    );
  }
}
