import 'package:ssbek/src/entities/team.dart';
import 'package:ssbek/src/repository/team_repository.dart';

class TeamRepositoryMock implements TeamRepository{
  final List<Team> teamsList = [const Team(id: 0, name: "Team 1"), const Team(id: 1, name: "Team 2")];

  @override
  Future<List<Team>> getAllTeams() async {
    await Future.delayed(const Duration(seconds: 1));
    return teamsList;
  }
}