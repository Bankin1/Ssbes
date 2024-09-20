import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ssbek/src/bloc/team_list/team_list_event.dart';
import 'package:ssbek/src/bloc/team_list/team_list_state.dart';
import 'package:ssbek/src/repository/team_repository_mock.dart';

import '../../entities/team.dart';
import '../../repository/team_repository.dart';

class TeamListBloc extends Bloc<TeamListEvent, TeamListState>{
  final TeamRepository _teamRepository = TeamRepositoryMock();


  TeamListBloc():super(TeamListEmptyState()){
  on<TeamListRequestedEvent>(_onTeamListRequestedEvent);
  }

  _onTeamListRequestedEvent(TeamListRequestedEvent event, Emitter emit) async {
    emit(TeamListLoadingState());
    List<Team> list = await _teamRepository.getAllTeams();
    emit(TeamListUploadedState(list: list));
  }
}



