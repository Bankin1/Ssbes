import 'package:ssbek/src/entities/team.dart';
import 'package:ssbek/src/repository/team_repository.dart';

class TeamRepositoryMock implements TeamRepository{
  final List<Team> teamsList = [
    const Team(
        id: "0",
        //userId: "3fa85f64-5717-4562-b3fc-2c963f66afa6",
        name: "Team 1",
        descriptionId: "0"
    ),
    const Team(
        id: "1",
        //userId: "3fa85f64-5717-4562-b3fc-2c963f66afa6",
        name: "Team 2",
        descriptionId: "1"
    )
  ];

  @override
  Future<List<Team>> getAllTeams() async {
    await Future.delayed(const Duration(seconds: 1));
    return teamsList;
  }

  @override
  Future<void> createTeam(String name) async{
    await Future.delayed(const Duration(seconds: 1));
    teamsList.add(Team(
        id: "${teamsList.length}",
        //userId: "3fa85f64-5717-4562-b3fc-2c963f66afa6",
        name: name,
        descriptionId: "${teamsList.length}"));
  }
}