import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:realestate/Common%20class/color.dart';
import 'package:realestate/Common%20class/fontstyle.dart';
import 'package:realestate/Common%20class/icons.dart';

import '../../Theme/themecontroller.dart';

class Otp extends StatefulWidget {
  const Otp({Key? key}) : super(key: key);

  @override
  State<Otp> createState() => _OtpState();
}

class _OtpState extends State<Otp> {
  dynamic size;
  double height = 0.00;
  double width = 0.00;
  final themedata = Get.put(Themecontroler());

  @override
  void initState()
  {
    super.initState();
    startTimer();
  }

  bool isresend=false;
  Timer? countdownTimer;
  Duration myDuration = const Duration(minutes: 2);
  void startTimer() {
    countdownTimer =
        Timer.periodic(const Duration(seconds: 1), (_) => setCountDown());
  }
  void setCountDown() {
    const reduceSecondsBy = 1;
    setState(() {
      final seconds = myDuration.inSeconds - reduceSecondsBy;
      if (seconds < 0) {
        isresend = true;
        countdownTimer!.cancel();
      } else {
        myDuration = Duration(seconds: seconds);
      }
    });
  }
  @override
  Widget build(BuildContext context) {
    String strDigits(int n) => n.toString().padLeft(2, '0');
    final minutes = strDigits(myDuration.inMinutes.remainder(2));
    final seconds = strDigits(myDuration.inSeconds.remainder(60));

    size = MediaQuery.of(context).size;
    height = size.height;
    width = size.width;
    return Scaffold(
      body: Padding(
        padding:  EdgeInsets.symmetric(horizontal: width/26,vertical: height/20),
        child:
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
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
            SizedBox(height: height/26,),
            Row(mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text('Entrez le ', style: lmedium.copyWith(fontSize: 25,color: themedata.isdark
                    ? RealestateColor.white
                    : RealestateColor.indigo,)),
                Text('code', style: lbold.copyWith(fontSize: 25,color: themedata.isdark
                    ? RealestateColor.white
                    : RealestateColor.darkgreen,)),
              ],
            ),
            SizedBox(height: height/46,),
            Text("Entrez le code à 4 chiffres que nous venons d'envoyer ", style: lregular.copyWith(fontSize: 12,color: themedata.isdark
                ? RealestateColor.white
                : RealestateColor.grey, )),
            Text('elbechirmekfoule@email.com ', style: lsemibold.copyWith(fontSize: 12,color: themedata.isdark
                ? RealestateColor.white
                : RealestateColor.indigo, )),
            SizedBox(height: height/16,),
            Padding(
              padding:  EdgeInsets.symmetric(horizontal: width/36,vertical: height/36),
              child: Form(child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SizedBox(
                    height: height/13,
                    width:width/6,
                    child: TextFormField(
                      onChanged: (value){
                        if(value.length == 1){
                          FocusScope.of(context).nextFocus();
                        }
                      },
                      onSaved: (pin1){},
                      decoration: InputDecoration(
                          fillColor: RealestateColor.textfield,
                          filled: true,
                          border: OutlineInputBorder(
                            borderSide: BorderSide.none,
                            borderRadius: BorderRadius.circular(10),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderSide: const BorderSide(color: RealestateColor.darkgreen),
                            borderRadius: BorderRadius.circular(10),
                          )
                      ),
                      //  style: Theme.of(context).textTheme.headline6,
                      style: lmedium.copyWith(fontSize: 20,color: RealestateColor.indigo),
                      cursorColor: RealestateColor.grey,
                      keyboardType: TextInputType.number,
                      textAlign: TextAlign.center,
                      inputFormatters: [
                        LengthLimitingTextInputFormatter(1),
                        FilteringTextInputFormatter.digitsOnly
                      ],
                    ),
                  ),
                  SizedBox(
                    height: height/13,
                    width:width/6,
                    child: TextFormField(
                      onChanged: (value){
                        if(value.length == 1){
                          FocusScope.of(context).nextFocus();
                        }
                      },
                      onSaved: (pin2){},
                      decoration: InputDecoration(
                          fillColor: RealestateColor.textfield,
                          filled: true,
                          border: OutlineInputBorder(
                            borderSide: BorderSide.none,
                            borderRadius: BorderRadius.circular(10),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderSide: const BorderSide(color:RealestateColor.darkgreen),
                            borderRadius: BorderRadius.circular(10),
                          )
                      ),
                      //  style: Theme.of(context).textTheme.headline6,
                      style: lmedium.copyWith(fontSize: 22,color: RealestateColor.indigo),
                      cursorColor: RealestateColor.grey,
                      keyboardType: TextInputType.number,
                      textAlign: TextAlign.center,
                      inputFormatters: [
                        LengthLimitingTextInputFormatter(1),
                        FilteringTextInputFormatter.digitsOnly
                      ],
                    ),
                  ),
                  SizedBox(
                    height: height/13,
                    width:width/6,
                    child: TextFormField(
                      onChanged: (value){
                        if(value.length == 1){
                          FocusScope.of(context).nextFocus();
                        }
                      },
                      onSaved: (pin3){},
                      decoration: InputDecoration(
                          fillColor: RealestateColor.textfield,
                          filled: true,
                          border: OutlineInputBorder(
                            borderSide: BorderSide.none,
                            borderRadius: BorderRadius.circular(10),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderSide: const BorderSide(color:RealestateColor.darkgreen),
                            borderRadius: BorderRadius.circular(10),
                          )
                      ),
                      //  style: Theme.of(context).textTheme.headline6,
                      style:  lmedium.copyWith(fontSize: 22,color: RealestateColor.indigo),
                      cursorColor: RealestateColor.grey,
                      keyboardType: TextInputType.number,
                      textAlign: TextAlign.center,
                      inputFormatters: [
                        LengthLimitingTextInputFormatter(1),
                        FilteringTextInputFormatter.digitsOnly
                      ],
                    ),
                  ),
                  SizedBox(
                    height: height/13,
                    width:width/6,
                    child: TextFormField(
                      onChanged: (value){
                        if(value.length == 1){
                          FocusScope.of(context).nextFocus();
                        }
                      },
                      onSaved: (pin4){},
                      decoration: InputDecoration(
                          fillColor:RealestateColor.textfield,
                          filled: true,
                          border: OutlineInputBorder(
                            borderSide: BorderSide.none,
                            borderRadius: BorderRadius.circular(10),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderSide: const BorderSide(color:RealestateColor.darkgreen),
                            borderRadius: BorderRadius.circular(10),
                          )
                      ),
                      //  style: Theme.of(context).textTheme.headline6,
                      style: lmedium.copyWith(fontSize: 22,color: RealestateColor.indigo),
                      cursorColor: RealestateColor.grey,
                      keyboardType: TextInputType.number,
                      textAlign: TextAlign.center,
                      inputFormatters: [
                        LengthLimitingTextInputFormatter(1),
                        FilteringTextInputFormatter.digitsOnly
                      ],
                    ),
                  ),
                ],
              ),
              ),
            ),
            const Spacer(),
            if(isresend == false) ...[
              Center(
                child: Container(
                  height: height/16,
                  width: width/4,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(50),
                    color: RealestateColor.textfield,
                  ),
                  child: Padding(
                    padding:  EdgeInsets.symmetric(horizontal: width/36),
                    child: Row(mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset(PngImage.timer,),
                        SizedBox(width: width/96,),
                        Text("${minutes.toString()}:${seconds.toString()}",
                          style: lmedium.copyWith(fontSize: 12,color: RealestateColor.indigo),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ]else ...[
              Center(
                child: Container(
                  height: height/16,
                  width: width/4,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(50),
                    color: RealestateColor.textfield,
                  ),
                  child: Padding(
                    padding:  EdgeInsets.symmetric(horizontal: width/36),
                    child: Row(mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset(PngImage.timer,height: height/36,),
                        SizedBox(width: width/96,),
                        Text("00:00",
                          style: lmedium.copyWith(fontSize: 12,color: RealestateColor.indigo),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
            SizedBox(height: height/36,),
            if(isresend == true)...[
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "N'a pas_reçu_le_Otp".tr,
                    style:
                    lregular.copyWith(fontSize: 12, color: themedata.isdark
                        ? RealestateColor.white
                        : RealestateColor.indigo,),
                  ),
                  Text(
                    "Renvoyer_Otp".tr,
                    style:
                   lbold.copyWith(fontSize: 12,color: themedata.isdark
                       ? RealestateColor.white
                       : RealestateColor.darkgreen,),
                  ),
                ],
              )
            ]
            else...[]

          ],
        ),
      ),
    );
  }
}
