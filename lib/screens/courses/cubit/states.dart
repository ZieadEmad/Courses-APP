abstract class CoursesStates {}

class CoursesStatesInitial extends CoursesStates {}

class CoursesStatesLoading extends CoursesStates {}

class CoursesStatesSuccess extends CoursesStates {}

class CoursesStatesError extends CoursesStates
{
  final error;

  CoursesStatesError(this.error);

}