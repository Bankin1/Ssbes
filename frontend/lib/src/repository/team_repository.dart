import '../entities/team.dart';

abstract class TeamRepository{
  Future<List<Team>> getAllTeams();
  Future<void> createTeam(String name);
  Future<void> deleteTeam(String id);
}