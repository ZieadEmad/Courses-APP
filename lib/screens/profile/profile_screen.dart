

import 'package:course_app/screens/profile/edit_profile/edit_profile_screen.dart';
import 'package:course_app/screens/profile/invite_friend/invite_friend_screen.dart';
import 'package:course_app/screens/profile/my_cart/my_cart_screen.dart';
import 'package:course_app/screens/profile/my_courses/My_courses_screen.dart';
import 'package:course_app/screens/profile/my_favourites/my_favourites_screen.dart';
import 'package:course_app/screens/profile/my_reviews/my_reviews_screen.dart';
import 'package:course_app/shared/colors/colors_common.dart';
import 'package:course_app/shared/componentes/components.dart';
import 'package:flutter/material.dart';
import 'package:outline_material_icons/outline_material_icons.dart';

class ProfileScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
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
                onTap: () {navigateTo(context,EditProfileScreen());},
              ),
            ],
          ),
          SizedBox(
            height: 15,
          ),
          Text('Current Account@gmail.com'),
          Expanded(
            child: GridView(
              gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
                maxCrossAxisExtent: 200,
                childAspectRatio: 2 / 2,
                crossAxisSpacing: 10,
                mainAxisSpacing: 1,
              ),
              primary: false,
              padding: EdgeInsets.all(20),
              children: <Widget>[
                buildOneBox(
                  title: 'My Courses',
                  child: Text(
                    '4',
                    style: TextStyle(
                      fontSize: 20,
                      color: Colors.white,
                    ),
                  ),
                  function: (){navigateTo(context,MyCoursesScreen());} ,
                ),
                buildOneBox(
                    title: "My Favourites",
                    child: Icon(
                      OMIcons.favoriteBorder,
                      color: Colors.white,
                    ),
                  function: (){navigateTo(context,MyFavouritesScreen());} ,
                ),
                buildOneBox(
                    title: "My Cart",
                    child: Icon(
                      OMIcons.shoppingCart,
                      color: Colors.white,
                    ),
                  function: (){navigateTo(context,MyCartScreen());} ,
                ),
                buildOneBox(
                    title: "My Reviews",
                    child: Icon(
                      OMIcons.starBorder,
                      color: Colors.white,
                    ),
                  function: (){navigateTo(context,MyReviewsScreen());} ,
                ),
                buildOneBox(
                    title: "invite a friend",
                    child: Icon(
                      OMIcons.share,
                      color: Colors.white,
                    ),
                  function: (){navigateTo(context,InviteFriendScreen());} ,
                ),
                buildOneBox(
                    title: "Help & support",
                    child: Icon(
                      OMIcons.help,
                      color: Colors.white,
                    ),
                  function: (){} ,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
