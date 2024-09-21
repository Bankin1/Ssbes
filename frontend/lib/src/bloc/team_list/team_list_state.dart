import '../../entities/team.dart';

abstract class TeamListState{}

class TeamListEmptyState extends TeamListState{}

class TeamListLoadingState extends TeamListState{}

class TeamListUploadedState extends TeamListState{
  final List<Team> list;
  TeamListUploadedState({required this.list});
}