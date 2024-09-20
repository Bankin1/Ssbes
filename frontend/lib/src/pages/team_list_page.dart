import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ssbek/src/bloc/team_list/team_list_bloc.dart';
import 'package:ssbek/src/bloc/team_list/team_list_event.dart';
import 'package:ssbek/src/bloc/team_list/team_list_state.dart';
import 'package:ssbek/src/widgets/team_list_widget.dart';

import '../entities/team.dart';

class TeamListPage extends StatefulWidget{
  const TeamListPage({super.key});
  @override
  State<StatefulWidget> createState() => _TeamListPageState();
}

class _TeamListPageState extends State<TeamListPage>{
  @override
  Widget build(BuildContext context) {
    return BlocProvider<TeamListBloc>(
      create: (context) => TeamListBloc()..add(TeamListRequestedEvent()),
      child: Scaffold(

          appBar: AppBar(
            centerTitle: true,
            title: const Text("SSbes"),
          ),

          body: Center(
            child: BlocBuilder<TeamListBloc, TeamListState>(
              builder: (BuildContext context, teamListState) =>
              teamListState is TeamListUploadedState
                  ? TeamList(list: teamListState.list)
                  : const CircularProgressIndicator()
            ),
          )
      )
    );
  }
}