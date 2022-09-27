import 'package:cv/domain/entities/cv_info.dart';
import 'package:cv/domain/repositories/iget_cv_repository.dart';
import 'package:dartz/dartz.dart';

import '../entities/exceptions.dart';

abstract class GetCVUsecase{
  Future<Either<CustomException, CVInfo>> call();
}

class GetCVUsecaseImpl implements GetCVUsecase{
  final IGetCVRepository repository;

  GetCVUsecaseImpl(this.repository);
  
  @override
  Future<Either<CustomException, CVInfo>> call() {
    return repository.call();
  }
}

