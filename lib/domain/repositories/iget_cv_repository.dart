import 'package:dartz/dartz.dart';

import '../entities/cv_info.dart';
import '../entities/exceptions.dart';

abstract class IGetCVRepository{
  Future<Either<CustomException, CVInfo>> call();
}