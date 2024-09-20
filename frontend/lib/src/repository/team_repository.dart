import 'package:ssbek/src/entities/team.dart';

abstract class TeamRepository{
  Future<List<Team>> getAllTeams();
  Future<Team> getTeamById(int id);
  //void addTeam(Team team);
}