import 'package:course_app/shared/colors/colors_common.dart';
import 'package:course_app/shared/network/remote/dio_helper.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:outline_material_icons/outline_material_icons.dart';
import 'package:shared_preferences/shared_preferences.dart';

SharedPreferences preferences;

void initApp() {
  DioHelper();
}

Future<void> initpref() async {
  preferences = await SharedPreferences.getInstance();
}

Future<bool> saveToken(String token) => preferences.setString('token', token);

Future<bool> removeToken() => preferences.remove('token');

String getToken() => preferences.getString('token');

Widget defaultButton({
  Color background = Colors.indigo,
  double radius = 25.0,
  double width = double.infinity,
  @required Function function,
  @required String text,
  bool toUpper = true,
}) =>
    Container(
      width: width,
      height: 40.0,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(radius),
        color: background,
      ),
      child: FlatButton(
        onPressed: function,
        child: Text(
          toUpper ? text.toUpperCase() : text,
          style: TextStyle(
            color: Colors.white,
          ),
        ),
      ),
    );

Widget headText(String text) => Text(
      text,
      style: TextStyle(
        fontSize: 25,
      ),
    );

Widget captionText(String text) => Text(
      text,
      style: TextStyle(
        fontSize: 16,
      ),
    );

Widget detailsText(String text) => Text(
      text,
      style: TextStyle(
        fontSize: 14,
      ),
    );

Widget logo() => Image(
      image: AssetImage('assets/images/mainLogo.png'),
    );

void navigateTo(context, widget) => Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => widget),
    );

void navigateAndFinish(context, widget) => Navigator.pushAndRemoveUntil(
    context,
    MaterialPageRoute(builder: (context) => widget),
    (Route<dynamic> route) => false);

Widget defualtTextBox({
  String title,
  String hint = ' ',
  bool isPassword = false,
  @required TextEditingController controller,
  @required TextInputType type,
}) =>
    Container(
      padding: EdgeInsetsDirectional.only(
        start: 15,
        end: 10,
        top: 10,
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20.0),
        color: Colors.white,
      ),
      width: double.infinity,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          if (title != null) detailsText(title),
          TextFormField(
            obscureText: isPassword,
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

void buildProgress({context, text, bool error = false}) => showDialog(
      context: context,
      builder: (context) => AlertDialog(
        content: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Row(
              children: [
                if (!error) CircularProgressIndicator(),
                if (!error)
                  SizedBox(
                    width: 20,
                  ),
                Expanded(child: Text(text)),
              ],
            ),
            if (error) SizedBox(height: 20),
            if (error)
              defaultButton(
                function: () {
                  Navigator.pop(context);
                },
                text: "Cancel",
              ),
          ],
        ),
      ),
    );

void showToast({@required text, @required error}) => Fluttertoast.showToast(
    msg: text.toString(),
    toastLength: Toast.LENGTH_SHORT,
    gravity: ToastGravity.BOTTOM,
    timeInSecForIosWeb: 1,
    backgroundColor: error ? Colors.red : Colors.green,
    textColor: Colors.white,
    fontSize: 16.0);

Widget buildOneCard({
  title,
  @required Function firstFunction,
  @required Function secondFunction,
  @required Function thirdFunction,
  @required fisrtText,
  @required secondText,
  @required thirdText,
  @required firstHeroTag,
  @required secondHeroTag,
  @required thirdHeroTag,
}) {
  return Column(
    children: [
      buildCardTitle(title: title),
      Container(
        child: Padding(
          padding: const EdgeInsets.only(left: 20, right: 20, bottom: 20),
          child: Card(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(15.0),
            ),
            child: Padding(
              padding: EdgeInsets.only(left: 10),
              child: Column(
                children: [
                  buildRowCard(
                    function: firstFunction,
                    text: fisrtText,
                    heroTag: firstHeroTag,
                  ),
                  buildRowCard(
                    function: secondFunction,
                    text: secondText,
                    heroTag: secondHeroTag,
                  ),
                  buildRowCard(
                    function: thirdFunction,
                    text: thirdText,
                    heroTag: thirdHeroTag,
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    ],
  );
}

Widget buildRowCard(
    {@required text, @required Function function, @required String heroTag}) {
  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: [
      Text(text, style: TextStyle(fontWeight: FontWeight.bold)),
      FloatingActionButton(
        heroTag: heroTag,
        backgroundColor: Colors.transparent,
        elevation: 0.0,
        onPressed: function,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              OMIcons.keyboardArrowRight,
              color: Colors.black,
            ),
          ],
        ),
      ),
    ],
  );
}

Widget buildCardTitle({@required title}) {
  return Row(
    mainAxisAlignment: MainAxisAlignment.start,
    children: [
      SizedBox(
        width: 30,
      ),
      Container(
        child: Text(title),
      ),
    ],
  );
}

Widget buildOneBox({
  @required title,
  @required Widget child,
  Function function,
  double width = 200,
  double height = 200,
}) {
  return Container(
    width: width,
    height: height,
    padding: EdgeInsets.all(8),
    child: InkWell(
      onTap: function,
      borderRadius: BorderRadius.circular(15),
      child: Container(
        padding: EdgeInsets.all(15),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CircleAvatar(
              backgroundColor: defaultColor,
              child: Center(
                child: child,
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              title,
              style: TextStyle(
                fontSize: 20,
              ),
            ),
          ],
        ),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: Colors.white,
        ),
      ),
    ),
  );
}

Widget buildOneRowBox(
    {@required String headText, @required String descriptionText}) {
  return Container(
    padding: EdgeInsets.all(10),
    width: 400,
     height: 100,
    decoration: BoxDecoration(
      borderRadius: BorderRadius.all(Radius.circular(30)),
      color: Colors.white,
    ),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
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
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: 5,
                    ),
                    Text(
                      headText,
                      style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      height: 3,
                    ),
                    Text(
                      descriptionText,
                      style: TextStyle(fontSize: 13, color: Colors.grey[700]),
                      textAlign: TextAlign.start,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
        Row(
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Total ratings',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: 2,
                ),
                Text('Ngooooooom'),
              ],
            ),
          ],
        ),
      ],
    ),
  );
}



