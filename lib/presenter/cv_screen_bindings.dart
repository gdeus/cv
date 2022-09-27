import 'package:cv/external/get_cv_datasource.dart';
import 'package:cv/infra/repositories/get_cv_repository_impl.dart';
import 'package:dio/dio.dart';
import 'package:get/get.dart';

import '../domain/usecase/get_cv_usecase.dart';

class CVScreenBindings implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<GetCVUsecaseImpl>((){
      final Dio dio = Dio();
      final GetCVDatasourceImpl datasource = GetCVDatasourceImpl(dio);
      final GetCVRepositoryImpl repository = GetCVRepositoryImpl(datasource);
      return GetCVUsecaseImpl(repository);
    });
  }
}