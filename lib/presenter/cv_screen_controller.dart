
import 'package:cv/domain/entities/cv_info.dart';
import 'package:cv/domain/entities/exceptions.dart';
import 'package:cv/presenter/state.dart';
import 'package:dio/dio.dart';
import 'package:get/get.dart';

import '../domain/usecase/get_cv_usecase.dart';
import '../external/get_cv_datasource.dart';
import '../infra/repositories/get_cv_repository_impl.dart';

class CVScreenController extends GetxController{
  RxBool isLightTheme = true.obs;
  Rx<CVInfoState> state = CVInfoState().obs;
  final injectionDependecy = Get.lazyPut<GetCVUsecaseImpl>((){
    final Dio dio = Dio();
    final GetCVDatasourceImpl datasource = GetCVDatasourceImpl(dio);
    final GetCVRepositoryImpl repository = GetCVRepositoryImpl(datasource);
    return GetCVUsecaseImpl(repository);
  });
  var cvInfo = CVInfo.obs;
  final usecase = Get.find<GetCVUsecaseImpl>();

  setState(CVInfoState newState) {
    state.value = newState;
  }

  @override
  void onInit() async{
    final result = await usecase();
    setState(const LoadingState());
    result.fold((l){
      setState(ErrorState(l));
    },
    (r){
      cvInfo.value = r;
      setState(SuccessState(r));
    });
  }
  changeTheme(bool value){
    isLightTheme = isLightTheme.isTrue ? false.obs : true.obs;
  }
}