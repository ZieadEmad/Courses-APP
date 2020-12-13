import 'package:course_app/screens/Forgot_password/forgotPassword_Screen.dart';
import 'package:course_app/screens/sign_up/signup_screen.dart';
import 'package:course_app/shared/componentes/components.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {

  var emailController = TextEditingController();
  var passController= TextEditingController() ;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('login'),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding:  EdgeInsets.all(20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [


              Padding(
                padding: EdgeInsets.only(top: 60),
                child: Container(child: logo(),),
              ),

              SizedBox(height: 100,),
              defualtTextBox(
                title: "Email",
                hint: 'Enter Your Email',
                controller: emailController,
                type: TextInputType.emailAddress,
              ),

              SizedBox(height: 20,),
              defualtTextBox(
                title: "Password",
                hint: '****************',
                controller: passController,
                type: TextInputType.visiblePassword,
              ),

              SizedBox(height: 65,),
              defaultButton(
                function: (){} ,
                text: "Login",
              ),

              SizedBox(height: 10,),
              defaultButton(
                function:  (){
                  navigateTo(context , SignUpScreen());
                } ,
                text: "Sign Up",
              ),

              SizedBox(height: 20,),
              FlatButton(
                onPressed:(){
                  navigateTo(context, ForgorPasswordScreen());
                },
                child: Text('Forgot your password ?'),
              )


            ],
          ),
        ),
      ),
    );
  }
}