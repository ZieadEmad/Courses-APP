import 'package:course_app/screens/profile/cubit/states.dart';
import 'package:course_app/shared/componentes/components.dart';
import 'package:course_app/shared/network/remote/dio_helper.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ProfileCubit extends Cubit<ProfileStates> {

  ProfileCubit() : super(ProfileStatesInitial());

  static ProfileCubit get(context) => BlocProvider.of(context);

  List profile = [];


  getProfile(){
    emit(ProfileStatesLoading());

    DioHelper.postData(
        path: 'api/v1/my-account',
        token: getToken(),

    ).then((value) {
      emit(ProfileStatesSuccess());
      profile=value.data['result'] as List;
      print(value.data.toString());
    }).catchError((e)
    {
      emit(ProfileStatesError(e.toString()));
      print(e.toString());
    });
  }


}