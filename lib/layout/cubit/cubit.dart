import 'package:course_app/layout/cubit/states.dart';
import 'package:course_app/screens/courses/courses_screen.dart';
import 'package:course_app/screens/profile/profile_screen.dart';
import 'package:course_app/screens/search/search_screen.dart';
import 'package:course_app/screens/settings/settings_screen.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomeCubit extends Cubit<HomeStates> {

  HomeCubit() : super(HomeStateInitial());

  static HomeCubit get(context) => BlocProvider.of(context);

  var widget = [
    CoursesScreen(),
    SearchScreen(),
    ProfileScreen(),
    SettingsScreen(),
  ];

  var title = [
    'Courses',
    'Search Courses',
    'Your Profile',
    'Settings'
  ];

int currentIndex = 0 ;

changeIndex(index){
  currentIndex = index ;
  emit(HomeStateIndex());
}

}