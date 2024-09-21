import '../entities/team.dart';

abstract class TeamRepository{
  Future<List<Team>> getAllTeams();
  Future<void> addTeam(String name);
}