import 'package:course_app/shared/colors/colors_common.dart';
import 'package:course_app/shared/componentes/components.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:outline_material_icons/outline_material_icons.dart';

class CoursesScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Padding(
            padding: EdgeInsets.only(left: 8, right: 8),
            child: Column(
              children: [
                Container(
                  width: MediaQuery.of(context).size.width,
                  height: 190,
                  child: Center(
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      padding: EdgeInsets.only(top: 16, bottom: 16),
                      children: [
                        Container(
                          child: buildOneBox(
                            function: () {},
                            height: 50.0,
                            width: 150.0,
                            title: 'Branding',
                            child: Icon(
                              OMIcons.highlight,
                              color: Colors.white,
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Container(
                          child: buildOneBox(
                            function: () {},
                            height: 50.0,
                            width: 150.0,
                            title: 'Design',
                            child: Icon(
                              OMIcons.create,
                              color: Colors.white,
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Container(
                          child: buildOneBox(
                            function: () {},
                            height: 50.0,
                            width: 150.0,
                            title: 'Web',
                            child: Icon(
                              OMIcons.webAsset,
                              color: Colors.white,
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Container(
                          child: buildOneBox(
                            function: () {},
                            height: 50.0,
                            width: 150.0,
                            title: 'Mobile',
                            child: Icon(
                              OMIcons.phoneIphone,
                              color: Colors.white,
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Container(
                          child: buildOneBox(
                            function: () {},
                            height: 50.0,
                            width: 150.0,
                            title: 'Code',
                            child: Icon(
                              OMIcons.code,
                              color: Colors.white,
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Container(
                          child: buildOneBox(
                            function: () {},
                            height: 50.0,
                            width: 150.0,
                            title: 'Business',
                            child: Icon(
                              Icons.business_center,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Container(
                  width: MediaQuery.of(context).size.width,
                  height:300,
                  child: Card(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(24),
                    ),
                    color: Colors.white,
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                Container(
                                  child: CircleAvatar(
                                    backgroundColor: defaultColor,
                                    child: Center(
                                      child: Icon(
                                        OMIcons.school,
                                        color: Colors.white,
                                      ),
                                    ),
                                  ),
                                  width: 50,
                                  height: 50,
                                ),
                                SizedBox(
                                  width: 10,
                                ),
                                Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment:
                                      CrossAxisAlignment.start,
                                  children: [
                                    SizedBox(
                                      height: 5,
                                    ),
                                    Text(
                                      'Ui/UX',
                                      style: TextStyle(
                                          fontSize: 16,
                                          fontWeight: FontWeight.bold),
                                    ),
                                    SizedBox(
                                      height: 3,
                                    ),
                                    Text(
                                      'Learn user Interface and\nhow peopleInteract\nwith your designs',
                                      style: TextStyle(
                                          fontSize: 13,
                                          color: Colors.grey[700]),
                                      textAlign: TextAlign.start,
                                      overflow: TextOverflow.ellipsis,
                                    ),
                                  ],
                                ),
                              ],
                            ),
                            Padding(
                              padding: const EdgeInsets.only(right: 4),
                              child: Row(
                                children: [
                                  Column(
                                    mainAxisAlignment:
                                        MainAxisAlignment.center,
                                    children: [
                                      Icon(OMIcons.favoriteBorder),
                                      SizedBox(
                                        height: 2,
                                      ),
                                      Text('Ngooom'),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 12,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text('32 Lectures',
                                style: TextStyle(fontSize: 22)),
                            Text('64 hours, 16 minutes',
                                style: TextStyle(fontSize: 15)),
                          ],
                        ),
                        SizedBox(
                          height: 16,
                        ),
                        Row(
                          children: [
                            Text(
                              'This Course includes',
                              style: TextStyle(fontSize: 15),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 8,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                Icon(Icons.download_outlined),
                                SizedBox(
                                  width: 5,
                                ),
                                Text('B Article'),
                              ],
                            ),
                            Row(
                              children: [
                                Icon(Icons.star_border_rounded),
                                SizedBox(
                                  width: 5,
                                ),
                                Text('Certificate of completion'),
                              ],
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 2,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                Icon(Icons.download_outlined),
                                SizedBox(
                                  width: 5,
                                ),
                                Text('B Article'),
                              ],
                            ),
                            Row(
                              children: [
                                Icon(Icons.star_border_rounded),
                                SizedBox(
                                  width: 5,
                                ),
                                Text('Certificate of completion'),
                              ],
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 2,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                Icon(Icons.download_outlined),
                                SizedBox(
                                  width: 5,
                                ),
                                Text('B Article'),
                              ],
                            ),
                            Row(
                              children: [
                                Icon(Icons.star_border_rounded),
                                SizedBox(
                                  width: 5,
                                ),
                                Text('Certificate of completion'),
                              ],
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 12,
                        ),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(width: 5,),
                            Column(
                              children: [

                                Text('price'),
                                SizedBox(
                                  height: 3,
                                ),

                                Text(
                                  '\$16.99',
                                  style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold),
                                ),
                              ],
                            ),
                            SizedBox(width: 210,),
                            Container(
                              padding: EdgeInsets.only(top: 4,left: 4),
                              child: FlatButton(
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.only(
                                    topLeft:Radius.circular(24),
                                    bottomRight: Radius.circular(24),
                                  ),
                                ),
                                color: defaultColor,
                                onPressed: () {},
                                child: Center(
                                  child: Text('Start Today',style: TextStyle(color: Colors.white),),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(height: 20),
                Column(
                  children: [
                    buildOneRowBox(
                      headText: 'WordPress',
                      descriptionText:
                          'Create your own website\nfrom scratch using Wordpress\nand more!',
                    ),
                    SizedBox(height: 20),
                    buildOneRowBox(
                      headText: 'Web Design',
                      descriptionText:
                          'Become a web designer\nthat looks grate on  all devices.',
                    ),
                    SizedBox(height: 20),
                    buildOneRowBox(
                      headText: 'Vue.js',
                      descriptionText:
                          'An awesome javascript Framework\nfor building frontend applications',
                    ),
                    SizedBox(height: 20),
                    buildOneRowBox(
                      headText: 'CSS',
                      descriptionText:
                          'Learn CSS for the first time\nor increase your knowledge\nas a web developer. ',
                    ),
                    SizedBox(height: 40),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
