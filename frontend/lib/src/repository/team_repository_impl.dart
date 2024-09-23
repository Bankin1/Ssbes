import 'package:dio/dio.dart';
import 'package:flutter/cupertino.dart';
import 'package:get_it/get_it.dart';
import 'package:ssbek/src/entities/team.dart';
import 'package:ssbek/src/repository/team_repository.dart';

import '../util/dio_config.dart';

class TeamRepositoryImpl implements TeamRepository{
  Dio dio = GetIt.instance<DioConfig>().dio;

  @override
  Future<List<Team>> getAllTeams() async {
    // TODO: userId
    var response = await dio.get('/team/3fa85f64-5717-4562-b3fc-2c963f66afa6');

    if(response.statusCode == 200){
      List<dynamic> data = response.data;
      List<Team> list = data.map((team) => Team.fromJson(team)).toList();
      return list;
    }
    else {
      throw Exception();
    }
  }

  @override
  Future<void> createTeam(String name) async {
    // TODO: userId
    var response = await dio.post('/team/add', data: {
      'name': name,
      'user_id': "3fa85f64-5717-4562-b3fc-2c963f66afa6"
    });

    if(response.statusCode != 200 && response.statusCode != 201) {
      debugPrint("\n${response.statusCode.toString()}\n");
      throw Exception();
    }
  }

  @override
  Future<void> deleteTeam(String id) async {
    var response = await dio.delete('/team/$id');

    if(response.statusCode != 200){
      throw Exception();
    }

  }
}