import 'package:cv/domain/entities/cv_info.dart';

abstract class IGetCVDatasource{
  Future<CVInfo> call();
}