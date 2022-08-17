import 'package:design_flutter1/core/util/widgets/Offers_Packages_Rooms.dart';
import 'package:design_flutter1/core/util/widgets/PrimaryRoomItem.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_carousel_widget/flutter_carousel_options.dart';

// import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter_carousel_widget/flutter_carousel_widget.dart';

class DesignOfChildrensRooms extends StatefulWidget {
  const DesignOfChildrensRooms({Key? key}) : super(key: key);

  @override
  State<DesignOfChildrensRooms> createState() => _DesignOfChildrensRoomsState();
}

class _DesignOfChildrensRoomsState extends State<DesignOfChildrensRooms> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: SizedBox(
        height: 600,
        child: Column(children: [
              Padding(
                padding: EdgeInsets.only(left: 15, top: 10),
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    'Different services',
                    style: const TextStyle(
                      fontSize: 15.0,
                      fontWeight: FontWeight.w500,
                      color: Colors.black,
                    ),
                  ),
                ),
              ),
              SingleChildScrollView(
                child: Container(
                  height: 300,
                  child: Expanded(
                    child: ListView.builder(
                      shrinkWrap: true,
                      itemBuilder: (context, index) => PrimaryRoomItem(),
                      itemCount: 3,
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Expanded(
                child: Column(
                  children: [
                    Row(
                      children: [
                        Padding(
                          padding: EdgeInsets.only(left: 15, top: 10, bottom: 10),
                          child: Expanded(
                            child: Align(
                              alignment: Alignment.centerLeft,
                              child: Text(
                                'Offers & packages',
                                style: const TextStyle(
                                  fontSize: 15.0,
                                  fontWeight: FontWeight.w500,
                                  color: Colors.black,
                                ),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 150,
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: 15, top: 10, bottom: 10),
                          child: Expanded(
                            child: Align(
                              alignment: Alignment.centerLeft,
                              child: Text(
                                'see all',
                                style: const TextStyle(
                                  fontSize: 15.0,
                                  fontWeight: FontWeight.w500,
                                  color: Colors.black26,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    FlutterCarousel(
                      options: CarouselOptions(
                        height: 200,
                        viewportFraction: 0.8,
                        initialPage: 0,
                        enableInfiniteScroll: true,
                        reverse: false,
                        autoPlay: true,
                        autoPlayInterval: Duration(seconds: 3),
                        autoPlayAnimationDuration: Duration(milliseconds: 800),
                        autoPlayCurve: Curves.fastOutSlowIn,
                        enlargeCenterPage: true,
                        scrollDirection: Axis.horizontal,
                      ),
                      items: [1, 2, 3, 4, 5].map((i) {
                        return Builder(
                          builder: (BuildContext context) {
                            return Container(
                                width: MediaQuery.of(context).size.width,
                                margin: EdgeInsets.symmetric(horizontal: 14),
                                decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(10)),
                                child: ClipRRect(
                                    borderRadius: BorderRadius.circular(20),
                                    child: Image.asset(
                                      'images/image.jpeg',
                                      width: double.infinity,
                                    )));
                          },
                        );
                      }).toList(),
                    ),
                  ],
                ),
              ),
            ]

        ),
      ),
    );
  }
}
