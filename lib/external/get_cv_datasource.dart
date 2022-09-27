import 'package:cv/domain/entities/cv_info.dart';
import 'package:cv/domain/entities/exceptions.dart';
import 'package:cv/infra/datasource/iget_cv_datasource.dart';
import 'package:dio/dio.dart';

class GetCVDatasourceImpl implements IGetCVDatasource{
  final Dio dio;

  GetCVDatasourceImpl(this.dio);

  @override
  Future<CVInfo> call() async{
    final response = await dio.get('https://632a3c1d713d41bc8e6c8e0a.mockapi.io/all');
    if(response.statusCode != 200){
      throw CustomException.networkError;
    }
    return CVInfo.fromJson(response.data);
  }

}