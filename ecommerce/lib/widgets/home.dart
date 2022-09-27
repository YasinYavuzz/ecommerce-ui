import 'dart:async';

import 'package:delayed_display/delayed_display.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomeWidget extends StatefulWidget {
  const HomeWidget({super.key});

  @override
  State<HomeWidget> createState() => _HomeWidgetState();
}

class _HomeWidgetState extends State<HomeWidget> {
  int gridCount = 0;
  List<String> banner = [
    "assets/banner1.png",
    "assets/banner2.png",
    "assets/banner3.png"
  ];
  List<String> category = [
    "assets/apparel.png",
    "assets/school.png",
    "assets/sports.png",
    "assets/electronic.png",
    "assets/all.png"
  ];
  List<String> categoryName = [
    "Apparel",
    "School",
    "Sports",
    "Electronic",
    "All"
  ];
  List<String> productImages = [
    "assets/productTV.png",
    "assets/productCup.png",
    "assets/productHeadPhones.png",
    "assets/productGameConsole.png"
  ];
  List<String> productName = [
    "Monitor LG 22”inc 4K ...",
    "Aestechic Mug - white ...",
    "Airpods pro",
    "Playstation 4 - SSD 128 GB",
  ];
  List<String> productPrice = [
    "\$199.99",
    "\$19.99",
    "\$499.99",
    "\$1999.99",
  ];
  
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Center(
        child: Column(
          children: [
          DelayedDisplay(
            child: Container(
              margin: EdgeInsets.only(top: 60, left: 25, right: 25),
              //width: MediaQuery.of(context).size.width,
              width: 340,
              //height: MediaQuery.of(context).size.height,
              height: 30,
                  child:Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          width: 168,
                          child: Column(children: [
                            Container(
                              alignment: Alignment.topLeft,
                              height: 12,
                              child: Text(
                                //textAlign: TextAlign.start,
                                'Delivery address',
                                style: GoogleFonts.inter(
                                  fontWeight: FontWeight.w400,
                                  fontSize: 10,
                                  color: Color(0xffC8C8CB),
                                ),
                              ),
                            ),
                            Container(
                              height: 18,
                              child: Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Container(
                                      child: Text(
                                        'Salatiga City, Central Java',
                                        style: GoogleFonts.inter(
                                          fontWeight: FontWeight.w500,
                                          fontSize: 12,
                                          color: Color(0xff393F42),
                                        ),
                                      ),
                                    ),
                                    Container(
                                      margin: EdgeInsets.only(top: 2, right: 3),
                                      child: Image.asset('assets/arrow.png'),
                                    ),
                                  ]),
                            ),
                          ]),
                        ),
                        Container(
                          //margin: EdgeInsets.only(top: 30,right: 20),
                          width: 90,
                          child: Row(
                            //crossAxisAlignment: CrossAxisAlignment.sta,
                            // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            //mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Container(
                                margin: EdgeInsets.only(left: 10),
                                child: Stack(
                                  alignment: Alignment.topRight,
                                  children: [
                                    GestureDetector(
                                        onTap: () {},
                                        child: Image.asset('assets/buy.png')),
                                    Image.asset('assets/iki.png')
                                  ],
                                ),
                              ),
                              GestureDetector(
                                child: Container(
                                  margin: EdgeInsets.only(left: 20),
                                  child: Image.asset('assets/notification.png'),
                                ),
                              )
                            ],
                          ),
                        ),
                      ])
            ),
          ),
          DelayedDisplay(
            delay: Duration(milliseconds: 1000),
            child: Container(
              margin: EdgeInsets.only(top: 15, bottom: 7),
              width: 350,
              height: 43,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  border: Border.all(color: Color(0xffF0F2F1))),
              child: TextField(
                style: TextStyle(
                  color: Colors.black,
                ),
                decoration: InputDecoration(
                    enabledBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: Colors.white),
                    ),
                    focusedBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: Colors.white),
                    ),
                    contentPadding:
                        EdgeInsets.only(left: 10, top: 10, right: 12, bottom: 10),
                    hintText: 'Search here ...',
                    //filled: true,
                    //hoverColor: Colors.white,
                    fillColor: Color(0xffFFFFFF),
                    hintStyle: TextStyle(
                      color: Color(0xffC8C7CB),
                    ),
                    prefixIcon: IconButton(
                      onPressed: () {},
                      icon: Image.asset('assets/search.png'),
                    )),
              ),
            ),
          ),
          DelayedDisplay(
            delay: Duration(milliseconds: 1500),
            child: SizedBox(
              width: double.infinity,
              height: 168,
              child: ListView.builder(
                itemCount: 3,
                scrollDirection: Axis.horizontal,
                shrinkWrap: true,
                itemBuilder: (BuildContext context, int index) {
                  return Container(
                    width: 304,
                    //height: 144,
                    margin: EdgeInsets.only(top: 10, left: 19, right: 5),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.1),
                          spreadRadius: 5,
                          blurRadius: 7,
                          offset: Offset(0, 50), // changes position of shadow
                        ),
                      ],
                      // color: Color(0xffFFFEE1)
                    ),
                    child: Image.asset('${banner[index]}'),
                  );
                },
              ),
            ),
          ),
          DelayedDisplay(
            delay: Duration(milliseconds: 2000),
            child: Container(
              margin: EdgeInsets.only(left: 25, top: 10),
              alignment: Alignment.bottomLeft,
              child: Text(
                'Category',
                style: GoogleFonts.inter(
                    fontSize: 14,
                    fontWeight: FontWeight.w500,
                    color: Color(0xff393F42)),
              ),
            ),
          ),
          DelayedDisplay(
            delay: Duration(milliseconds: 2500),
            child: SizedBox(
              width: double.infinity,
              height: 65,
              child: ListView.builder(
                itemCount: 5,
                scrollDirection: Axis.horizontal,
                shrinkWrap: true,
                itemBuilder: (BuildContext context, int index) {
                  return Container(
                      margin: EdgeInsets.only(left: 17, top: 10),
                      width: 57,
                      height: 61,
                      // margin: EdgeInsets.only(top: 10, left: 19),
                      decoration: BoxDecoration(
                        //borderRadius: BorderRadius.circular(8),
                        // color: Color(0xffFFFEE1)
                        color: Color(0xffFFFFFF),
                      ),
                      child: Column(
                        children: [
                          Container(
                            alignment: Alignment.center,
                            child: Image.asset('${category[index]}'),
                          ),
                          Container(
                            alignment: Alignment.center,
                            child: Text(
                              '${categoryName[index]}',
                              style: GoogleFonts.inter(
                                  color: Color(0xff939393),
                                  fontWeight: FontWeight.w400,
                                  fontSize: 12),
                            ),
                          )
                        ],
                      ));
                },
              ),
            ),
          ),
          DelayedDisplay(
            delay: Duration(milliseconds: 3000),
            child: Container(
              margin: EdgeInsets.only(top: 10),
              width: 350,
              height: 30,
              decoration: BoxDecoration(
                  // border: Border.all(color: Color(0xffF0F2F1)),
                  borderRadius: BorderRadius.circular(8)),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    child: Text(
                      'Recent product',
                      style: GoogleFonts.inter(
                        color: Color(0xff393F42),
                        fontSize: 14,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.all(5),
                    decoration: BoxDecoration(
                        border: Border.all(color: Color(0xffF0F2F1)),
                        borderRadius: BorderRadius.circular(8)),
                    width: 80,
                    height: 27,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          child: Text(
                            'Filters',
                            style: GoogleFonts.inter(
                              color: Color(0xff393F42),
                              fontSize: 12,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ),
                        Container(
                          child: Image.asset('assets/filter.png'),
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          //Padding(
          //padding: const EdgeInsets.symmetric(horizontal: 3),
          DelayedDisplay(
            delay: Duration(milliseconds: 3500),
            child: SizedBox(
              width: double.infinity,
              //height: double.infinity,
              child: GridView.builder(
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                itemCount: 4,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    childAspectRatio: 0.8,
                    mainAxisSpacing: 0,
                    crossAxisSpacing: 0),
                itemBuilder: (BuildContext context, int index) {
                  return Container(
                    //alignment: Alignment.topLeft,
                    margin: EdgeInsets.only(left: 10, right: 10, bottom: 15),
                    decoration: BoxDecoration(
                      color: Color(0xffFAFAFC),
                      borderRadius: BorderRadius.circular(8),
                      boxShadow: [
                        BoxShadow(
                          color: Color.fromARGB(255, 7, 6, 6).withOpacity(0.1),
                          spreadRadius: 5,
                          blurRadius: 7,
                          offset: Offset(3, 3), // changes position of shadow
                        ),
                      ],
                    ),
                    width: double.infinity,
                    height: 230,
                    child: Column(
                      // mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Flexible(
                            flex: 1,
                            child: Container(
                              width: double.infinity,
                              child: Image.asset(
                                '${productImages[index]}',
                                fit: BoxFit.cover,
                              ),
                            )),
                        Flexible(
                          flex: 1,
                          child: Column(
                            // mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Container(
                                margin: EdgeInsets.only(top: 15, left: 15),
                                alignment: Alignment.bottomLeft,
                                child: Text(
                                  "${productName[index]}",
                                  style: GoogleFonts.inter(
                                    color: Color(0xff393F42),
                                    fontSize: 12,
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),
                              ),
                              Container(
                                margin: EdgeInsets.only(top: 6, left: 15),
                                alignment: Alignment.bottomLeft,
                                child: Text(
                                  "${productPrice[index]}",
                                  style: GoogleFonts.inter(
                                    color: Color(0xff393F42),
                                    fontSize: 14,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                              ),
                              GestureDetector(
                                onTap: () {},
                                child: Container(
                                  alignment: Alignment.bottomCenter,
                                  margin: EdgeInsets.only(top: 18),
                                  width: 145,
                                  height: 31,
                                  decoration: BoxDecoration(
                                      color: Color(0xff67C4A7),
                                      borderRadius: BorderRadius.circular(4)),
                                  child: Center(
                                    child: Text(
                                      "Add to cart",
                                      style: GoogleFonts.inter(
                                        color: Color(0xffFFFFFF),
                                        fontSize: 12,
                                        fontWeight: FontWeight.w400,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  );
                },
              ),
            ),
          ),
          //)
          // GridView.builder(
          //   gridDelegate: null,
          //   itemBuilder: (BuildContext context, int index) {
          //     return Container();
          //   },
          // )
        ]),
      ),
    );
  }
}
