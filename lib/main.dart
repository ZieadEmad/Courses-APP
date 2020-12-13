import 'package:course_app/screens/login/cubit/cubit.dart';
import 'package:course_app/screens/sign_up/cubit/cubit.dart';
import 'package:course_app/screens/welcome/welcome_screen.dart';
import 'package:course_app/shared/colors/colors_common.dart';
import 'package:course_app/shared/network/remote/dio_helper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    DioHelper();
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (context)=> SignUpCubit(),),

      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: defaultColor,
          scaffoldBackgroundColor: Colors.grey[200],
        ),
        home: WelcomeScreen(),
      ),
    );
  }
}


