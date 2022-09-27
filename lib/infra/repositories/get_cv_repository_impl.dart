import 'package:cv/domain/entities/exceptions.dart';
import 'package:cv/domain/entities/cv_info.dart';
import 'package:cv/domain/repositories/iget_cv_repository.dart';
import 'package:cv/infra/datasource/iget_cv_datasource.dart';
import 'package:dartz/dartz.dart';

class GetCVRepositoryImpl implements IGetCVRepository{
  final IGetCVDatasource datasource;

  GetCVRepositoryImpl(this.datasource);
  @override
  Future<Either<CustomException, CVInfo>> call() async{
    try{
      return Right(await datasource.call());
    }catch(e){
      return const Left(CustomException.repositoryError);
    }
  }
  
}