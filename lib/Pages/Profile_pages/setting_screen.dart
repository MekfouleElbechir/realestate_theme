import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:realestate/Common%20class/color.dart';
import 'package:realestate/Common%20class/fontstyle.dart';
import 'package:realestate/Common%20class/icons.dart';
import 'package:realestate/Pages/Authentication/real_login.dart';
import 'package:realestate/Pages/Home_pages/dash_board.dart';
import 'package:realestate/Pages/Profile_pages/edit_screen.dart';
import 'package:realestate/Theme/themecontroller.dart';

import 'changepassword.dart';

class Setting extends StatefulWidget {
  const Setting({Key? key}) : super(key: key);

  @override
  State<Setting> createState() => _SettingState();
}

class _SettingState extends State<Setting> {
  final themedata = Get.put(Themecontroler());
  bool isDark = true;
  dynamic size;
  double height = 0.00;
  double width = 0.00;

  Future<bool> onbackpressed() async {
    return await showDialog(
        builder: (context) => AlertDialog(
              backgroundColor: themedata.isdark
                  ? RealestateColor.white
                  : RealestateColor.black,
              title: Center(
                child: Text("Immobilier".tr,
                    textAlign: TextAlign.end,
                    style: lbold.copyWith(
                        fontSize: 18,
                        color: themedata.isdark
                            ? RealestateColor.black
                            : RealestateColor.white)),
              ),
              content: Text(
                "Êtes-vous sûr de vous déconnecter de cette application ?",
                style: lregular.copyWith(
                    fontSize: 12,
                    color: themedata.isdark
                        ? RealestateColor.black
                        : RealestateColor.white),
              ),
              actionsAlignment: MainAxisAlignment.end,
              actions: [
                ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        backgroundColor: themedata.isdark
                            ? RealestateColor.black
                            : RealestateColor.white),
                    onPressed: () {
                      Get.back();
                    },
                    child: Text(
                      "No",
                      style: lregular.copyWith(
                          color: themedata.isdark
                              ? RealestateColor.white
                              : RealestateColor.black),
                    )),
                ElevatedButton(
                  onPressed: () {
                    Navigator.pushReplacement(context, MaterialPageRoute(
                      builder: (context) {
                        return const RealLogin();
                      },
                    ));
                  },
                  style: ElevatedButton.styleFrom(
                      backgroundColor: themedata.isdark
                          ? RealestateColor.black
                          : RealestateColor.white),
                  child: Text("oui",
                      style: lregular.copyWith(
                          color: themedata.isdark
                              ? RealestateColor.white
                              : RealestateColor.black)),
                )
              ],
            ),
        context: context);
  }

  @override
  Widget build(BuildContext context) {
    size = MediaQuery.of(context).size;
    height = size.height;
    width = size.width;
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              width: width / 1,
              height: height / 4.5,
              color: themedata.isdark
                  ? RealestateColor.white
                  : RealestateColor.darkgreen,
              child: Column(children: [
                Padding(
                  padding: EdgeInsets.only(
                      top: height / 16, left: width / 26, right: width / 26),
                  child: Row(children: [
                    Container(
                      height: height / 8,
                      width: height /8,
                      decoration: const BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(7))),
                      child: Image.asset(PngImage.logo,fit: BoxFit.fill),
                    ),
                    SizedBox(
                      width: width / 16,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Row(
                          children: [
                            Text(
                              "Immobilier",
                              style: lbold.copyWith(
                                fontSize: 20,
                                color: themedata.isdark
                                    ? RealestateColor.black
                                    : RealestateColor.white,
                              ),
                            ),
                          ],
                        ),
                        Text(
                          "realestate@yopmail.com",
                          style: lregular.copyWith(
                            fontSize: 15,
                            color: themedata.isdark
                                ? RealestateColor.black
                                : RealestateColor.white,
                          ),
                        ),
                        SizedBox(height: height / 96),
                        ElevatedButton(
                            style: ButtonStyle(
                                backgroundColor: MaterialStateColor.resolveWith(
                              (states) => themedata.isdark
                                  ? RealestateColor.black
                                  : RealestateColor.white,
                            )),
                            onPressed: () {
                              Navigator.push(context, MaterialPageRoute(
                                builder: (context) {
                                  return const EditScreen();
                                },
                              ));
                            },
                            child: Text(
                              'Editer le profil'.tr,
                              style: lregular.copyWith(
                                fontSize: 12,
                                color: themedata.isdark
                                    ? RealestateColor.white
                                    : RealestateColor.black,
                              ),
                            ))
                      ],
                    )
                  ]),
                ),
              ]),
            ),
            Column(
              children: [
                SizedBox(height: height / 36),
                Column(
                  children: [
                    Padding(
                        padding: EdgeInsets.symmetric(horizontal: width / 36),
                        child: InkWell(
                          highlightColor: RealestateColor.transparent,
                          splashColor: RealestateColor.transparent,
                          onTap: () {
                            Navigator.push(context,
                                MaterialPageRoute(builder: (context) {
                              return const ChangePass();
                            }));
                          },
                          child: Row(
                            children: [
                              SvgPicture.asset(SvgIcons.lock,
                                  height: height / 36,
                                  color:
                                      themedata.isdark
                                          ? RealestateColor.white
                                          : RealestateColor.darkblack,
                                      ),
                              SizedBox(
                                width: width / 36,
                              ),
                              Text(
                                'Changer le mot de passe'.tr,
                                style: lsemibold.copyWith(
                                    fontSize: 15,
                                    color: themedata.isdark
                                        ? RealestateColor.white
                                        : RealestateColor.darkblack),
                              ),
                              const Spacer(),
                              const Icon(
                                Icons.chevron_right_outlined,
                                size: 25,
                              ),
                            ],
                          ),
                        )),
                    SizedBox(height: height / 36),
                    Padding(
                        padding: EdgeInsets.symmetric(horizontal: width / 36),
                        child: InkWell(
                          highlightColor: RealestateColor.transparent,
                          splashColor: RealestateColor.transparent,
                          onTap: () {
                            _showbottomsheet();
                          },
                          child: Row(
                            children: [
                              SvgPicture.asset(
                                SvgIcons.swap,
                                color:
                                    themedata.isdark
                                        ? RealestateColor.white
                                        : RealestateColor.darkblack,
                                height: height / 36,
                              ),
                              SizedBox(
                                width: width / 36,
                              ),
                              Text(
                                'changer la disposition'.tr,
                                style: lsemibold.copyWith(
                                    fontSize: 15,
                                    color: themedata.isdark
                                        ? RealestateColor.white
                                        : RealestateColor.darkblack),
                              ),
                              const Spacer(),
                              const Icon(
                                Icons.chevron_right_outlined,
                                size: 25,
                              ),
                            ],
                          ),
                        )),
                    SizedBox(height: height / 36),
                    Padding(
                        padding: EdgeInsets.symmetric(horizontal: width / 36),
                        child: Row(
                          children: [
                            Image.asset(
                              PngImage.darkmode,
                              height: height / 36,
                              color: themedata.isdark
                                  ? RealestateColor.white
                                  : RealestateColor.darkblack,
                            ),
                            SizedBox(
                              width: width / 36,
                            ),
                            Text(
                              'mode_sombre'.tr,
                              style: lsemibold.copyWith(
                                  fontSize: 15,
                                  color: themedata.isdark
                                      ? RealestateColor.white
                                      : RealestateColor.darkblack),
                            ),
                            const Spacer(),
                            SizedBox(
                              height: height / 30,
                              child: Switch(
                                  activeColor: themedata.isdark
                                      ? RealestateColor.white
                                      : RealestateColor.darkblack,
                                  onChanged: (state) {
                                    themedata.changeThem(state);
                                    isDark = state;
                                    themedata.update();
                                    Navigator.push(context, MaterialPageRoute(builder: (context) {
                                      return const DashBoardpage();
                                    },));
                                  },
                                  value: themedata.isdark),
                            ),
                          ],
                        )),
                    SizedBox(height: height / 36),
                    Padding(
                        padding: EdgeInsets.symmetric(horizontal: width / 36),
                        child: InkWell(
                          highlightColor: RealestateColor.transparent,
                          splashColor: RealestateColor.transparent,
                          onTap: () {
                            onbackpressed();
                          },
                          child: Row(
                            children: [
                              SvgPicture.asset(SvgIcons.logout,
                                  height: height / 36,
                                  color:
                                      themedata.isdark
                                          ? RealestateColor.white
                                          : RealestateColor.black,
                                     ),
                              SizedBox(
                                width: width / 36,
                              ),
                              Text(
                                'Se déconnecter'.tr,
                                style: lsemibold.copyWith(
                                    fontSize: 15,
                                    color: themedata.isdark
                                        ? RealestateColor.white
                                        : RealestateColor.darkblack),
                              ),
                              const Spacer(),
                              const Icon(
                                Icons.chevron_right_outlined,
                                size: 25,
                              ),
                            ],
                          ),
                        )),
                  ],
                )
              ],
            ),
          ],
        ),
      ),
    );
  }

  _showbottomsheet() {
    showModalBottomSheet(
        backgroundColor:
            themedata.isdark ? RealestateColor.white : RealestateColor.black,
        context: context,
        builder: (BuildContext context) {
          return StatefulBuilder(
              builder: (BuildContext context, StateSetter setState) {
            return Container(
              decoration: BoxDecoration(
                // color: Colors.white,
                borderRadius: BorderRadius.circular(7),
              ),
              height: height / 4,
              child: Column(
                children: [
                  Container(
                    margin: EdgeInsets.only(
                      top: height / 96,
                      bottom: height / 76,
                    ),
                    child: Text('sélectionnerLaMiseEnPagDeApp'.tr,
                        style: lsemibold.copyWith(
                            fontSize: 18, color: RealestateColor.grey)),
                  ),
                  Container(
                    height: 0.8,
                    width: MediaQuery.of(context).size.width,
                    color: RealestateColor.grey,
                  ),
                  SizedBox(
                    height: height / 16,
                    child: InkWell(
                      highlightColor: RealestateColor.transparent,
                      splashColor: RealestateColor.transparent,
                      onTap: () async {
                        final navigator = Navigator.of(context);
                        await Get.updateLocale(const Locale('en', 'US'));
                        navigator.pop();
                      },
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'ltr'.tr,
                            style: lregular.copyWith(
                                fontSize: 15,
                                color: themedata.isdark
                                    ? RealestateColor.black
                                    : RealestateColor.white),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Container(
                    height: 0.8,
                    width: MediaQuery.of(context).size.width,
                    color: RealestateColor.grey,
                  ),
                  SizedBox(
                    height: height / 16,
                    child: InkWell(
                      highlightColor: RealestateColor.transparent,
                      splashColor: RealestateColor.transparent,
                      onTap: () async {
                        final navigator = Navigator.of(context);
                        await Get.updateLocale(const Locale('ar', 'ab'));
                        navigator.pop();
                      },
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'rtl'.tr,
                            style: lregular.copyWith(
                                fontSize: 15,
                                color: themedata.isdark
                                    ? RealestateColor.black
                                    : RealestateColor.white),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Container(
                    height: 0.8,
                    width: MediaQuery.of(context).size.width,
                    color: RealestateColor.grey,
                  ),
                  SizedBox(
                    height: height / 16,
                    child: InkWell(
                      highlightColor: RealestateColor.transparent,
                      splashColor: RealestateColor.transparent,
                      onTap: () async {
                        Navigator.of(context).pop();
                      },
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'Annuler'.tr,
                            style: lregular.copyWith(
                                fontSize: 15,
                                color: themedata.isdark
                                    ? RealestateColor.black
                                    : RealestateColor.white),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            );
          });
        });
  }
}
