import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';
import 'package:ssbek/src/bloc/team_list/team_list_event.dart';
import 'package:ssbek/src/bloc/team_list/team_list_state.dart';
import '../../entities/team.dart';
import '../../repository/team_repository.dart';

class TeamListBloc extends Bloc<TeamListEvent, TeamListState>{
  final TeamRepository _teamRepository = GetIt.instance<TeamRepository>();

  TeamListBloc():super(TeamListEmptyState()){
    on<TeamListRequestedEvent>(_onTeamListRequestedEvent);
    on<TeamAddedEvent>(_onTeamAddedEvent);
    on<TeamRemovedEvent>(_onTeamRemovedEvent);
  }

  _onTeamListRequestedEvent(TeamListRequestedEvent event, Emitter emit) async {
    emit(TeamListLoadingState());
    List<Team> list = await _teamRepository.getAllTeams();
    emit(TeamListUploadedState(list: list));
  }

  _onTeamAddedEvent(TeamAddedEvent event, Emitter emit) async {
    emit(TeamListLoadingState());
    await _teamRepository.createTeam(event.name);
    List<Team> list = await _teamRepository.getAllTeams();
    emit(TeamListUploadedState(list: list));
  }

  _onTeamRemovedEvent(TeamRemovedEvent event, Emitter emit) async{
    emit(TeamRemovedState(id: event.id));
    emit(TeamListLoadingState());
    await _teamRepository.deleteTeam(event.id);
    var newTeams = await _teamRepository.getAllTeams();
    emit(TeamListUploadedState(list: newTeams));
  }
}



