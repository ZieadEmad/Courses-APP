abstract class SignUpStates {}

class SignUpStateInitial extends SignUpStates {}

class SignUpStateLoading extends SignUpStates {}

class SignUpStateSuccess extends SignUpStates {}

class SignUpStateError extends SignUpStates
{
  final error;

  SignUpStateError(this.error);
}