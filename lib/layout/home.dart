import 'package:course_app/layout/cubit/cubit.dart';
import 'package:course_app/layout/cubit/states.dart';
import 'package:course_app/shared/colors/colors_common.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:outline_material_icons/outline_material_icons.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocConsumer<HomeCubit, HomeStates>(
      listener: (context, state) {},
      builder: (context, state) {
        var currentIndex = HomeCubit.get(context).currentIndex;
        return Scaffold(
          appBar: AppBar(
            title: Text(HomeCubit.get(context).title[currentIndex]),
          ),
          bottomNavigationBar: Container(
            decoration: BoxDecoration(
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.5),
                  spreadRadius: 10,
                  blurRadius: 15,
                ),
              ],
              color: Colors.white,
              borderRadius: BorderRadius.only(
                topRight: Radius.circular(25.0),
                topLeft: Radius.circular(25.0),
              ),
            ),
            child: BottomNavigationBar(
              backgroundColor: Colors.transparent,
              elevation: 0.0,
              items: [
                BottomNavigationBarItem(
                  icon: Icon(OMIcons.school),
                  label: 'Courses',
                ),
                BottomNavigationBarItem(
                  icon: Icon(OMIcons.search),
                  label: 'Search',
                ),
                BottomNavigationBarItem(
                  icon: Icon(OMIcons.person),
                  label: 'Profile',
                ),
                BottomNavigationBarItem(
                  icon: Icon(OMIcons.settings),
                  label: 'Settings',
                ),
              ],
              onTap: (index) {
                HomeCubit.get(context).changeIndex(index);
              },
              type: BottomNavigationBarType.fixed,
              selectedItemColor: defaultColor,
              currentIndex: currentIndex,
            ),
          ),
          body: HomeCubit.get(context).widget[currentIndex],
        );
      },
    );
  }
}
// InkWell(
//   onTap:(){
//     removeToken();
//   } ,
//   child:Text('logout'),
// )
