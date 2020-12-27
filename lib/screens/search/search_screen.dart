import 'package:carousel_slider/carousel_slider.dart';
import 'package:course_app/shared/colors/colors_common.dart';
import 'package:course_app/shared/componentes/components.dart';
import 'package:flutter/material.dart';
import 'package:outline_material_icons/outline_material_icons.dart';

class SearchScreen extends StatelessWidget {
  var searchController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Padding(
            padding: EdgeInsets.all(20),
            child: Column(
              children: [
                SizedBox(height: 20),
                Stack(
                  children: [
                    Container(
                      padding: EdgeInsets.only(left: 10,right: 80,top: 10,bottom: 10),
                      width: 400,
                      height: 58,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(16)),
                        color: Colors.white,
                      ),
                      child: TextFormField(
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: 'Start Search...',
                        ),
                        keyboardType: TextInputType.text,
                        controller: searchController,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 310),
                      child: InkWell(
                        onTap: () {},
                        child: Container(
                          decoration: BoxDecoration(
                              color: defaultColor,
                              borderRadius: BorderRadius.circular(16)),
                          width: 70,
                          height: 58,
                          child: Center(
                            child: Icon(
                              Icons.search,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 20),
                CarouselSlider(
                  items: [
                    buildOneBox(
                      title: "Branding",
                      child: Icon(
                        OMIcons.highlight,
                        color: Colors.white,
                      ),
                      function: () {},
                    ),
                    buildOneBox(
                      title: 'Design',
                      child: Icon(
                        OMIcons.create,
                        color: Colors.white,
                      ),
                      function: () {},
                    ),
                    buildOneBox(
                      title: "Web",
                      child: Icon(
                        OMIcons.webAsset,
                        color: Colors.white,
                      ),
                      function: () {},
                    ),
                    buildOneBox(
                      title: "Mobile",
                      child: Icon(
                        OMIcons.phoneIphone,
                        color: Colors.white,
                      ),
                      function: () {},
                    ),
                    buildOneBox(
                      title: "Code",
                      child: Icon(
                        OMIcons.code,
                        color: Colors.white,
                      ),
                      function: () {},
                    ),
                    buildOneBox(
                      title: "Business",
                      child: Icon(
                        Icons.business_center,
                        color: Colors.white,
                      ),
                      function: () {},
                    ),
                  ],
                  options: CarouselOptions(
                    height: 200,
                    //  aspectRatio: 8/9,
                    viewportFraction: 0.6,
                    initialPage: 0,
                    enableInfiniteScroll: false,
                    reverse: false,
                    autoPlay: true,
                    autoPlayInterval: Duration(seconds: 3),
                    autoPlayAnimationDuration: Duration(milliseconds: 600),
                    autoPlayCurve: Curves.fastOutSlowIn,
                    enlargeCenterPage: true,
                    //onPageChanged: callbackFunction,
                    scrollDirection: Axis.horizontal,
                  ),
                ),
                SizedBox(height: 50),
                buildCourseItems(),
                SizedBox(height: 20),
                buildCourseItems(),
                SizedBox(height: 20),
                buildCourseItems(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
