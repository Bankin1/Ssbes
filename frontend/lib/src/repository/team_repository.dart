import 'package:ssbek/src/entities/team.dart';

abstract class TeamRepository{
  List<Team> getAllTeams();
  Team getTeamById(int id);
  //void addTeam(Team team);
}