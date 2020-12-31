import 'package:course_app/screens/search/cubit/states.dart';
import 'package:course_app/shared/componentes/components.dart';
import 'package:course_app/shared/network/remote/dio_helper.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SearchCubit extends Cubit<SearchStates> {

  SearchCubit() : super(SearchStatesInitial());

  static SearchCubit get(context) => BlocProvider.of(context);
 List searchCourse ;
  getCourses(search){
    emit(SearchStatesLoading());

    DioHelper.postData(
      path: 'lms/api/v1/search',
      token: getToken(),
      searchKey: 1 ,
      data: {
        'q':'${search}',
        'type': '1'
      }

    ).then((value) {
      emit(SearchStatesSuccess());
      print(value.data.toString());
      searchCourse = value.data['result']['data'] as List;
    }).catchError((e)
    {
      emit(SearchStatesError(e.toString()));
      print(e.toString());
    });
  }

}