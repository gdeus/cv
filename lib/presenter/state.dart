import 'package:cv/domain/entities/cv_info.dart';
import 'package:cv/domain/entities/exceptions.dart';

class CVInfoState{}

class LoadingState implements CVInfoState{
  const LoadingState();
}

class ErrorState implements CVInfoState{
  final CustomException customException;
  const ErrorState(this.customException);
}

class SuccessState implements CVInfoState{
  final CVInfo cvInfo;
  const SuccessState(this.cvInfo);
}