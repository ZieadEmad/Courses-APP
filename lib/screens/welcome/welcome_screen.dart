import 'package:course_app/layout/home.dart';
import 'package:course_app/screens/courses/cubit/cubit.dart';
import 'package:course_app/screens/login/login_screen.dart';
import 'package:course_app/screens/login_mobile_number/mobile_number_screen.dart';
import 'package:course_app/screens/sign_up/signup_screen.dart';
import 'package:course_app/shared/componentes/components.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_sign_in/google_sign_in.dart';

class WelcomeScreen extends StatelessWidget {
  GoogleSignIn googleSignIn = GoogleSignIn(
    scopes:
    [
      'email',
      'https://www.googleapis.com/auth/contacts.readonly',
    ],
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Welcome'),
      ),
      body: Padding(
        padding: EdgeInsets.all(20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [

            logo(),


            SizedBox(height: 100,),
            defaultButton(
              text: 'Login',
              function: (){
                navigateTo(context, LoginScreen());
              } ,
              toUpper: true ,
            ),


            SizedBox(height: 10,),
            defaultButton(
              text: 'Sign Up',
              function: (){
                navigateTo(context, SignUpScreen());
              } ,
              toUpper: true ,
            ),
            SizedBox(height: 40,),


            captionText('Or Login With'),
            SizedBox(height: 20,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                InkWell(
                  child: CircleAvatar(
                    radius: 20,
                    child: Image(
                      image: AssetImage('assets/images/facebook.png'),
                      height: 23,
                      width: 23,
                      color: Colors.white,
                    ),
                  ),
                  onTap: (){},
                ),

                SizedBox(width: 20,),
                InkWell(
                  child: CircleAvatar(
                    radius: 20,
                    child: Image(
                      image: AssetImage('assets/images/google.png'),
                      height: 23,
                      width: 23,
                      color: Colors.white,
                    ),
                  ),
                  onTap: (){
                    handleSignIn(context);
                  },
                ),

                SizedBox(width: 20,),
                InkWell(
                  child: CircleAvatar(
                    radius: 20,
                    child: Image(
                      image: AssetImage('assets/images/smartphone.png'),
                      height: 23,
                      width: 23,
                      color: Colors.white,
                    ),
                  ),
                  onTap: (){
                    navigateTo(context, PhoneScreen());
                  },
                ),
              ],
            ),

          ],
        ),
      ),
    );
  }

  Future<void> handleSignIn(ctx) async {
    await googleSignIn.signIn().then((value) async
    {
      print(value.email);
      print(value.displayName);
      print(value.photoUrl);


      GoogleSignInAuthentication googleSignInAuthentication = await value.authentication;

      AuthCredential credential = GoogleAuthProvider.credential(
        accessToken: googleSignInAuthentication.accessToken,
        idToken: googleSignInAuthentication.idToken,
      );

      await FirebaseAuth.instance
          .signInWithCredential(credential)
          .then((value) {
        print(value.user.uid);
        //print('token-------${googleSignInAuthentication.accessToken}');
        saveToken(googleSignInAuthentication.accessToken).then((value)
        {
          if(value){
            showToast(text:'success save token', error: false);
            navigateAndFinish(ctx ,HomeScreen());
          }
          else{
            showToast(text:'Error while saving a token', error: false);
          }
        });
       // navigateAndFinish(ctx, HomeScreen(saveToken()));
      }).catchError((e)
      {
        print(e.toString());
      });

    }).catchError((e){
      print(e.toString());
    });
  }

}
