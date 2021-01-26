abstract class ProfileStates {}

class ProfileStatesInitial extends ProfileStates {}

class ProfileStatesLoading extends ProfileStates {}

class ProfileStatesSuccess extends ProfileStates {}

class ProfileStatesError extends ProfileStates
{
  final error;

  ProfileStatesError(this.error);

}