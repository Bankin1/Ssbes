import 'package:ssbek/src/entities/team.dart';
import 'package:ssbek/src/repository/team_repository.dart';

class TeamRepositoryMock implements TeamRepository{
  final List<Team> list = [const Team(id: 0, name: "bebra"), const Team(id: 1, name: "aboba")];

  @override
  Future<List<Team>> getAllTeams() async {
    await Future.delayed(const Duration(seconds: 1));
    return list;
  }

  @override
  Future<Team> getTeamById(int id) async {
    // TODO: implement getTeamById
    throw UnimplementedError();
  }

}