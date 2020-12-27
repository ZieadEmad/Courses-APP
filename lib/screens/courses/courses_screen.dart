import 'package:flutter/material.dart';
import 'package:course_app/shared/componentes/components.dart';
class CoursesScreen extends StatelessWidget
{
  @override
  Widget build(BuildContext context)
  {
    return Column(
      children: [
        SizedBox(
          height: 30.0,
        ),
        Container(
          height: 100.0,
          padding: EdgeInsets.symmetric(
            horizontal: 20.0,
          ),
          child: ListView.separated(
            physics: BouncingScrollPhysics(),
            scrollDirection: Axis.horizontal,
            itemBuilder: (context, index) => buildSearchCategoryItem(cat[index], context),
            separatorBuilder: (context, index) => SizedBox(
              width: 10.0,
            ),
            itemCount: cat.length,
          ),
        ),
        SizedBox(
          height: 20.0,
        ),
        Expanded(
          child: ListView.separated(
            physics: BouncingScrollPhysics(),
            padding: EdgeInsets.only(top: 20.0,),
            itemBuilder: (context, index) => buildCourseItems(),
            separatorBuilder: (context, index) => SizedBox(
              height: 25.0,
            ),
            itemCount: 10,
          ),
        ),
      ],
    );
  }
}