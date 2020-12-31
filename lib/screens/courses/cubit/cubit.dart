import 'package:course_app/screens/courses/cubit/states.dart';
import 'package:course_app/shared/componentes/components.dart';
import 'package:course_app/shared/network/remote/dio_helper.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CoursesCubit extends Cubit<CoursesStates> {

  CoursesCubit() : super(CoursesStatesInitial());

  static CoursesCubit get(context) => BlocProvider.of(context);
List courses = [];
  getCourses(){
    emit(CoursesStatesLoading());

    DioHelper.postData(
        path: 'lms/api/v1/courses',
      token: getToken(),

    ).then((value) {
      emit(CoursesStatesSuccess());
      courses=value.data['result']['data'] as List;
     print(value.data.toString());
    }).catchError((e)
    {
      emit(CoursesStatesError(e.toString()));
      print(e.toString());
    });
  }

}