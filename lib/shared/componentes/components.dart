import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

Widget defaultButton({
  Color background = Colors.indigo ,
  double radius = 25.0 ,
  @required Function function ,
  @required String text ,
  bool toUpper = true ,
})=>Container(
  width: double.infinity,
  height: 40.0,

  decoration: BoxDecoration(
    borderRadius: BorderRadius.circular(radius),
    color: background,
  ),
  child: FlatButton(
    onPressed: function ,
    child: Text(
      toUpper ? text.toUpperCase() : text ,
      style: TextStyle(
        color: Colors.white,
      ),
    ),
  ),
);

Widget headText(String text)=>Text(
  text,
  style: TextStyle(
    fontSize: 25 ,
  ),
);

Widget captionText(String text)=>Text(
  text,
  style: TextStyle(
    fontSize: 16 ,
  ),
);

Widget detailsText(String text)=>Text(
  text,
  style: TextStyle(
    fontSize: 14,
  ),
);

Widget logo() => Image(
  image: AssetImage('assets/images/mainLogo.png'),
);

void navigateTo (context , widget)=>Navigator.push(
  context,
  MaterialPageRoute(builder: (context) => widget ),
);

Widget defualtTextBox({
  String title ,
   String hint = ' ' ,
  @required TextEditingController controller ,
  @required TextInputType type ,
}) =>  Container(
  padding: EdgeInsetsDirectional.only(
    start:15 ,
    end: 10,
    top: 10,
  ),
  decoration: BoxDecoration(
    borderRadius: BorderRadius.circular(20.0),
    color: Colors.white,
  ),
  width: double.infinity,
  child:Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      if(title != null)
      detailsText(title),
      TextFormField(
        decoration: InputDecoration(
          border: InputBorder.none,
          hintText: hint,
        ),
        controller: controller,
        keyboardType: type,
      ),

    ],
  ),
);