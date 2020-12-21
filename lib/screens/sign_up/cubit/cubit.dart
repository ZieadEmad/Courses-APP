import 'package:course_app/screens/sign_up/cubit/states.dart';
import 'package:course_app/shared/network/remote/dio_helper.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SignUpCubit extends Cubit<SignUpStates>
{
  SignUpCubit() : super(SignUpStateInitial());
  static SignUpCubit get(context) => BlocProvider.of(context);

register({first, last, email, password, city})
{
  emit(SignUpStateLoading());

  DioHelper.postData(
    path: 'lms/api/v1/auth/signup-save',
    data:
    {
      'first_name':'$first',
      'last_name':'$last',
      'email':'$email',
      'password':'$password',
      'city':'$city',
    },
  ).then((value)
  {
    emit(SignUpStateSuccess());
  }).catchError((e)
  {
    emit(SignUpStateError(e.toString()));
  });
}
}

