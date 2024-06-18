import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';
import 'package:realestate/Common%20class/color.dart';
import 'package:realestate/Common%20class/fontstyle.dart';
import 'package:realestate/Common%20class/icons.dart';
import 'package:realestate/Theme/themecontroller.dart';

class EditScreen extends StatefulWidget {
  const EditScreen({Key? key}) : super(key: key);

  @override
  State<EditScreen> createState() => _EditScreenState();
}

class _EditScreenState extends State<EditScreen> {
  dynamic size;
double height = 0.00;
double width = 0.00;
  TextEditingController fullname = TextEditingController();
  TextEditingController phone = TextEditingController();
  TextEditingController email = TextEditingController();
  List<String> image = [PngImage.googlelogo, PngImage.facebooklogo];
  int _variationselecationindex = 0;

  final themedata = Get.put(Themecontroler());

  final ImagePicker _picker = ImagePicker();
  String imagepath = "";
  String imagename = "";

  imageoption() {
    showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          backgroundColor: themedata.isdark
              ? RealestateColor.white
              : RealestateColor.black,
          actions: [
            Column(
              children: [
                SizedBox(
                  width: width / 1,
                  height: height / 6,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      GestureDetector(
                        onTap: () async {
                          final navigator = Navigator.of(context);
                          final XFile? photo = await _picker.pickImage(
                              source: ImageSource.camera);
                          imagepath = photo!.path;
                          setState(() {});
                          navigator.pop();
                        },
                        child: SizedBox(
                          height: 120,
                          width: 125,
                          child: Column(
                            children: [
                              SizedBox(
                                width: 80,
                                height: 80,
                                child: Icon(
                                  Icons.camera_alt,
                                  size: 60,
                                  color: themedata.isdark
                                      ? RealestateColor.black
                                      : RealestateColor.white,
                                ),
                              ),
                              Text(
                                "Camara",
                                style: TextStyle(
                                  fontSize: 18,
                                  fontFamily: 'TenorSans',
                                  color: themedata.isdark
                                      ? RealestateColor.black
                                      : RealestateColor.white,
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                      GestureDetector(
                        onTap: () async {
                          final navigator = Navigator.of(context);
                          final XFile? photo = await _picker.pickImage(
                              source: ImageSource.gallery);
                          imagepath = photo!.path;
                          setState(() {});
                          navigator.pop();
                        },
                        child: SizedBox(
                          height: 120,
                          width: 125,
                          child: Column(
                            children: [
                              SizedBox(
                                width: 80,
                                height: 80,
                                child: Icon(
                                  Icons.photo,
                                  size: 60,
                                  color: themedata.isdark
                                      ? RealestateColor.black
                                      : RealestateColor.white,
                                ),
                              ),
                              Text(
                                "Photos",
                                style: TextStyle(
                                  fontSize: 18,
                                  fontFamily: 'TenorSans',
                                  color: themedata.isdark
                                      ? RealestateColor.black
                                      : RealestateColor.white,
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  alignment: Alignment.centerRight,
                  child: TextButton(
                    // style: TextButton.styleFrom(primary: globaldata.fullblk),
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      child: Text(
                        "Annuler",
                        style: lregular.copyWith(
                          fontSize: 15,
                          color: themedata.isdark
                              ? RealestateColor.black
                              : RealestateColor.white,
                        ),
                      )),
                ),
              ],
            )
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    size = MediaQuery.of(context).size;
    height = size.height;
    width = size.width;
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Padding(
        padding:
            EdgeInsets.symmetric(horizontal: width / 26, vertical: height / 22),
        child: Column(
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
                      size: 20,
                      color: RealestateColor.indigo,
                    )),
                  ),
                ),
                SizedBox(
                  width: width / 4,
                ),
                Text(
                  "Editer le profil".tr,
                  style: lbold.copyWith(fontSize: 14, color: themedata.isdark
                      ? RealestateColor.white
                      : RealestateColor.indigo,),
                ),
              ],
            ),
            SizedBox(
              height: height / 36,
            ),
            Stack(
              children: [
                CircleAvatar(
                  radius: 55,
                  backgroundImage: AssetImage(PngImage.profile),
                ),
                Positioned(
                    bottom: 0,
                    right: 0,
                    child: Container(
                      height: height / 20,
                      width: height / 20,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: themedata.isdark
                            ? RealestateColor.white
                            : RealestateColor.darkgreen,
                      ),
                      child: IconButton(
                        onPressed: () {
                          imageoption();
                        },
                        icon: Icon(
                          Icons.camera_alt,
                          color: themedata.isdark
                              ? RealestateColor.darkgreen
                              : RealestateColor.white,
                          size: height / 40,
                        ),
                      ),
                    ))
              ],
            ),
            SizedBox(
              height: height / 26,
            ),
            TextField(
              controller: fullname,
              style: lmedium.copyWith(fontSize: 12, color: RealestateColor.indigo),
              cursorColor: RealestateColor.grey,
              decoration: InputDecoration(
                  suffixIcon: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Image.asset(PngImage.person,height: height/36),
                  ),
                  filled: true,
                  hintText: "Nom et prénom".tr,
                  hintStyle: lregular.copyWith(fontSize: 12, color: RealestateColor.grey),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15),
                      borderSide: BorderSide.none),
                  fillColor: RealestateColor.textfield),
            ),
            SizedBox(
              height: height / 46,
            ),
            TextField(
              controller: phone,
              style: lmedium.copyWith(fontSize: 12, color: RealestateColor.indigo),
              cursorColor: RealestateColor.grey,
              keyboardType: TextInputType.phone,
              decoration: InputDecoration(
                  suffixIcon: Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Image.asset(PngImage.phone,height: height/36),
                  ),
                  filled: true,
                  hintText: "Numéro de tél",
                  hintStyle: lregular.copyWith(fontSize: 12, color: RealestateColor.grey),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15),
                      borderSide: BorderSide.none),
                  fillColor: RealestateColor.textfield),
            ),
            SizedBox(
              height: height / 46,
            ),
            TextField(
              controller: email,
              style: lmedium.copyWith(fontSize: 12, color: RealestateColor.indigo),
              cursorColor: RealestateColor.grey,
              decoration: InputDecoration(
                  suffixIcon: Padding(
                    padding: const EdgeInsets.all(13.0),
                    child: Image.asset(PngImage.email,height: height/36),
                  ),
                  filled: true,
                  hintText: "Email".tr,
                  hintStyle: lregular.copyWith(fontSize: 12, color: RealestateColor.grey),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15),
                      borderSide: BorderSide.none),
                  fillColor: RealestateColor.textfield),
            ),
            SizedBox(
              height: height / 26,
            ),
            SizedBox(
              height: height / 12,
              child: ListView.builder(
                physics: const NeverScrollableScrollPhysics(),
                scrollDirection: Axis.horizontal,
                itemCount: image.length,
                itemBuilder: (context, index) {
                  return InkWell(
                    highlightColor: RealestateColor.transparent,
                    splashColor: RealestateColor.transparent,
                    onTap: () {
                      setState(() {
                        _variationselecationindex = index ;
                      });
                      },
                    child: Padding(
                        padding: EdgeInsets.only(right: width / 20),
                        child: Container(
                            height: height / 12,
                            width: width / 2.3,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                color: _variationselecationindex == index
                                    ? RealestateColor.darkgreen
                                    : RealestateColor.textfield),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Image.asset(image[index],height: height/26,),
                                SizedBox(
                                  width: width / 36,
                                ),
                                Text(
                                  _variationselecationindex == index
                                      ? "Dissocier"
                                      : "Lien",
                                  style: lsemibold.copyWith(
                                      fontSize: 12,
                                      color: _variationselecationindex == index
                                          ? RealestateColor.white
                                          : RealestateColor.indigo),
                                )
                              ],
                            )),
                      ),

                  );
                },
              ),
            ),
            const Spacer(),
            Container(
              height: height / 14,
              width: width / 2,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: RealestateColor.lightgreen),
              child: Center(
                  child: Text(
                "Miss à jour".tr,
                style: lsemibold.copyWith(fontSize: 15, color: RealestateColor.white),
              )),
            )
          ],
        ),
      ),
    );
  }
}
