import 'package:course_app/screens/profile/cubit/cubit.dart';
import 'package:course_app/screens/profile/cubit/states.dart';
import 'package:course_app/screens/profile/invite_friend/invite_friend_screen.dart';
import 'package:course_app/screens/profile/my_cart/my_cart_screen.dart';
import 'package:course_app/screens/profile/my_courses/My_courses_screen.dart';
import 'package:course_app/screens/profile/my_favourites/my_favourites_screen.dart';
import 'package:course_app/screens/profile/my_reviews/my_reviews_screen.dart';
import 'package:course_app/shared/colors/colors_common.dart';
import 'package:course_app/shared/componentes/components.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:outline_material_icons/outline_material_icons.dart';

class ProfileScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (BuildContext context) => ProfileCubit()..getProfile(),
      child: BlocConsumer<ProfileCubit,ProfileStates>(
        listener: (context,state){
          if (state is ProfileStatesSuccess ){
            print('secesssss zozzzzzzzzzzz');
          }
        },
        builder: (context,state){
          var profile = ProfileCubit.get(context).profile;
          return Scaffold(
            body: ListView(
              children: [
                Column(mainAxisAlignment: MainAxisAlignment.center, children: [
                  SizedBox(
                    height: 25,
                  ),
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(60.0)),
                      border: Border.all(
                        color: defaultColor,
                        width: 4.0,
                      ),
                    ),
                    child: ClipOval(
                      child: Image.asset(
                        'assets/images/ziead.jpg',
                        width: 100,
                        height: 100,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                       'Current Name',
                        style: TextStyle(
                          fontSize: 25,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      InkWell(
                        child: Icon(
                          OMIcons.borderColor,
                          color: defaultColor,
                          size: 15,
                        ),
                        onTap: () {
                        //  navigateTo(context, EditProfileScreen());
                          print(profile.toString());
                        },
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Text('Current Account@gmail.com'),

                  SizedBox(
                    height: 40,
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(
                      horizontal: 20.0,
                    ),
                    child: Row(
                      children: [
                        buildProfileItem(
                          function: () {navigateTo(context, MyCoursesScreen());},
                          title: 'My Courses',
                          shape: Text(
                            '5',
                            style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                                color: Colors.white
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 20.0,
                        ),
                        buildProfileItem(
                          function: () {navigateTo(context, MyFavouritesScreen());},
                          title: 'My Favourites',
                          shape: Icon(
                            Icons.favorite_border,
                          ),
                        ),
                      ],
                    ),
                  ),

                  SizedBox(
                    height: 20.0,
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(
                      horizontal: 20.0,
                    ),
                    child: Row(
                      children: [
                        buildProfileItem(
                          function: () {navigateTo(context, MyCartScreen());},
                          title: 'My Cart',
                          shape: Icon(
                            Icons.shopping_cart_outlined,
                          ),
                        ),
                        SizedBox(
                          width: 20.0,
                        ),
                        buildProfileItem(
                          function: () {navigateTo(context, MyReviewsScreen());},
                          title: 'My Reviews',
                          shape: Icon(
                            Icons.star_half,
                          ),
                        ),
                      ],
                    ),
                  ),

                  SizedBox(
                    height: 20.0,
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(
                      horizontal: 20.0,
                    ),
                    child: Row(
                      children: [
                        buildProfileItem(
                          function: () {navigateTo(context, InviteFriendScreen());},
                          title: 'Invite a friend',
                          shape: Icon(
                            Icons.share,
                          ),
                        ),
                        SizedBox(
                          width: 20.0,
                        ),
                        buildProfileItem(
                          function: () {},
                          title: 'Help & Support',
                          shape: Icon(
                            Icons.help_outline,
                          ),
                        ),
                      ],
                    ),
                  ),

                  SizedBox(
                    height: 20.0,
                  ),
                ],
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}

