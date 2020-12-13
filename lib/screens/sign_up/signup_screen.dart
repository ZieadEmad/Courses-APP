import 'package:course_app/layout/home.dart';
import 'package:course_app/screens/login/login_screen.dart';
import 'package:course_app/screens/sign_up/cubit/cubit.dart';
import 'package:course_app/screens/sign_up/cubit/states.dart';
import 'package:course_app/shared/componentes/components.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SignUpScreen extends StatelessWidget {
  var firstNameController = TextEditingController();
  var lastNameController= TextEditingController() ;
  var emailController= TextEditingController() ;
  var passController= TextEditingController() ;
  var cityController= TextEditingController() ;
  @override
  Widget build(BuildContext context) {
    return BlocConsumer<SignUpCubit,SignUpStates>(

      listener: (context,state) {
        if (state is SignUpStateLoading) {
          return buildProgress(context: context, text: "please Wait");
        }
        if (state is SignUpStateSuccess) {
          return navigateAndFinish(
            context,
            HomeScreen(),
          );
        }
        if (state is SignUpStateError){
          return buildProgress(context: context, text: state.error.toString());
        }
      },



      builder: (context,state){
        return Scaffold(
          appBar: AppBar(
            title: Text('SignUp'),
          ),
          body: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.all(20),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [

                  Padding(
                    padding: const EdgeInsets.only(top: 30),
                    child: Container(
                      child:logo(),
                    ),
                  ),

                  SizedBox(height:50 ,),
                  defualtTextBox(
                    title: "First name",
                    hint: 'Enter your First Name',
                    controller: firstNameController,
                    type: TextInputType.text,
                  ),

                  SizedBox(height: 15,),
                  defualtTextBox(
                    title: "Last name",
                    hint: 'Enter your Last Name',
                    controller: lastNameController,
                    type: TextInputType.text,
                  ),

                  SizedBox(height: 15,),
                  defualtTextBox(
                    title: "Email",
                    hint: 'Enter your Email',
                    controller: emailController,
                    type: TextInputType.emailAddress,
                  ),

                  SizedBox(height: 15,),
                  defualtTextBox(
                    title: "Password",
                    hint: '*****************',
                    controller: passController,
                    type: TextInputType.visiblePassword,
                  ),

                  SizedBox(height: 15,),
                  defualtTextBox(
                    title: "City",
                    hint: 'Enter your City',
                    controller: cityController,
                    type: TextInputType.emailAddress,
                  ),


                  SizedBox(height: 65,),
                  defaultButton(
                    function:  (){
                      SignUpCubit.get(context).register(
                        first: firstNameController,
                        last: lastNameController,
                        email: emailController,
                        password: passController,
                        city: cityController,
                      );
                    } ,
                    text: "Sign Up",
                  ),



                  SizedBox(height: 10,),
                  defaultButton(
                    function: (){
                      navigateTo(context , LoginScreen());
                    } ,
                    text: "Back To Login",
                  ),


                ],
              ),
            ),
          ),
        );
      },

    );
  }
}
