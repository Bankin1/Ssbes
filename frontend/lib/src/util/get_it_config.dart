import 'package:get_it/get_it.dart';
import 'package:ssbek/src/repository/description_repository.dart';
import 'package:ssbek/src/repository/description_repository_impl.dart';
import 'package:ssbek/src/repository/description_repository_mock.dart';
import 'package:ssbek/src/repository/team_repository.dart';
import 'package:ssbek/src/repository/team_repository_mock.dart';
import 'package:ssbek/src/util/dio_config.dart';

import '../repository/team_repository_impl.dart';

class GetItConfig{
  static GetIt getIt = GetIt.instance;

  static void setup(){
    getIt.registerSingleton<DioConfig>(DioConfig()..dioInit());
    getIt.registerSingleton<TeamRepository>(TeamRepositoryImpl());
    getIt.registerSingleton<DescriptionRepository>(DescriptionRepositoryImpl());
  }
}