import '../entities/team.dart';

abstract class TeamRepository{
  Future<List<Team>> getAllTeams();
  //void addTeam(Team team);
}