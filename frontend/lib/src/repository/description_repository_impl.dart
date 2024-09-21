import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:ssbek/src/entities/description.dart';
import 'package:ssbek/src/repository/description_repository.dart';
import 'package:ssbek/src/util/dio_config.dart';

class DescriptionRepositoryImpl implements DescriptionRepository{
  Dio dio = GetIt.instance<DioConfig>().dio;

  @override
  Future<Description> getDescriptionById(String id) async {
    var response = await dio.get('/description/$id');

    if(response.statusCode == 200){
      Description result = Description.fromJson(response.data);
      return result;
    }
    else{
      throw Exception();
    }
  }
  
}