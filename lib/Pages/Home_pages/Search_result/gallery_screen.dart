import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:realestate/Common%20class/color.dart';
import 'package:realestate/Common%20class/fontstyle.dart';
import 'package:realestate/Common%20class/icons.dart';

class GalleryScreen extends StatefulWidget {
  const GalleryScreen({Key? key}) : super(key: key);

  @override
  State<GalleryScreen> createState() => _GalleryScreenState();
}

class _GalleryScreenState extends State<GalleryScreen> {
  dynamic size;
double height = 0.00;
double width = 0.00;
  @override
  Widget build(BuildContext context) {
    size = MediaQuery.of(context).size;
    height = size.height;
    width = size.width;
    return Scaffold(
      body:Stack(
        children: [
          Container(
            decoration: BoxDecoration(
                image: DecorationImage(image: AssetImage(PngImage.pagethreeimage),
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
                    color: RealestateColor.textfield),
                child: const Center(
                    child: Icon(
                      Icons.chevron_left_outlined,
                      size: 25,
                      color: RealestateColor.indigo,
                    )),
              ),
            ),),
          Positioned(
            bottom: 25,
            left: 15,
            child:  InkWell(
              splashColor: RealestateColor.transparent,
              highlightColor: RealestateColor.transparent,
              // onTap: () {
              //   Navigator.pop(context);
              // },
              child: Container(
                height: height / 14,
                width: width / 2.5,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(50),
                    color: RealestateColor.white),
                child: Padding(
                  padding:  EdgeInsets.symmetric(horizontal: width/76,vertical: height/96),
                  child: Row(mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      CircleAvatar(
                        radius: 20,
                        backgroundImage: AssetImage(PngImage.profile),
                      ),
                      SizedBox(width: width/76,),
                      Column(crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text("Hamoudi",style: lbold.copyWith(fontSize:12,color: RealestateColor.indigo ),),
                          RatingBar.builder(
                            initialRating: 5,
                            minRating: 1,
                            direction: Axis.horizontal,
                            allowHalfRating: true,
                            itemCount: 5,
                            itemSize: 10,
                            itemBuilder: (context, _) => Image.asset(PngImage.star),
                            onRatingUpdate: (rating) {
                              // print(rating);
                            },
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              ),
            ),),
          Positioned(
            bottom: 25,
            right: 15,
            child:  InkWell(
                splashColor: RealestateColor.transparent,
                highlightColor: RealestateColor.transparent,
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return const GalleryScreen();
                  },));
                },
                child: Container(
                  height: height/12,
                  width: width/6,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: RealestateColor.white
                  ),
                  child: Padding(
                    padding:  const EdgeInsets.all(3),
                    child:ClipRRect(
                        borderRadius: BorderRadius.circular(10),
                        child: Image.asset(PngImage.pagethreeimage,fit: BoxFit.fitWidth,)),
                  ),
                )),
          ),
          Positioned(
            bottom: 95,
            right: 15,
            child:  InkWell(
                splashColor: RealestateColor.transparent,
                highlightColor: RealestateColor.transparent,
                // onTap: () {
                //   Navigator.pop(context);
                // },
                child:Container(
                  height: height/12,
                  width: width/6,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: RealestateColor.white
                  ),
                  child: Padding(
                    padding:  const EdgeInsets.all(3),
                    child: ClipRRect(
                        borderRadius: BorderRadius.circular(10),
                        child: Image.asset(PngImage.pagetwoimage,fit: BoxFit.fitWidth,)),
                  ),
                )),
          ),
          Positioned(
            bottom: 165,
            right: 15,
            child:  InkWell(
                splashColor: RealestateColor.transparent,
                highlightColor: RealestateColor.transparent,
                // onTap: () {
                //   Navigator.pop(context);
                // },
                child:Container(
                  height: height/12,
                  width: width/6,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: RealestateColor.white
                  ),
                  child: Padding(
                    padding:  const EdgeInsets.all(3),
                    child: ClipRRect(
                        borderRadius: BorderRadius.circular(10),
                        child: Image.asset(PngImage.pagethreeimage,fit: BoxFit.fitWidth,)),
                  ),
                )),
          ),
        ],
      ),
    );
  }
}
