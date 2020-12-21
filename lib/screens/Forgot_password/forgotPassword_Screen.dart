import 'package:course_app/shared/componentes/components.dart';
import 'package:flutter/material.dart';

class ForgorPasswordScreen extends StatelessWidget {

  var emailController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Forgot Your Password'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [

            Transform.translate(
              offset: Offset( 0.0 ,-100.0 ),
              child: Container(
                child:logo(),
              ),
            ),


            defualtTextBox(
               title:"Email" ,
                hint:"Enter Your Email" ,
                controller: emailController,
                type: TextInputType.emailAddress,
            ),

            Transform.translate(
              offset: Offset(0.0 , 175.0),
              child: Container(
                child:Column(
                  children: [
                    defaultButton(
                      toUpper: false,
                      function: (){} ,
                      text: "Send reset code",
                    ),
                    SizedBox(height: 20,),
                    FlatButton(
                      onPressed:(){},
                      child: Text('Login'),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
