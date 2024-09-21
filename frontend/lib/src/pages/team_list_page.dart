import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ssbek/src/bloc/team_list/team_list_bloc.dart';
import 'package:ssbek/src/bloc/team_list/team_list_event.dart';
import 'package:ssbek/src/bloc/team_list/team_list_state.dart';
import 'package:ssbek/src/widgets/add_team_button.dart';
import 'package:ssbek/src/widgets/team_list_widget.dart';

class TeamListPage extends StatefulWidget{
  const TeamListPage({super.key});
  @override
  State<StatefulWidget> createState() => _TeamListPageState();
}

class _TeamListPageState extends State<TeamListPage>{
  final TextEditingController _newTeamController = TextEditingController();

  @override
  void dispose() {
    _newTeamController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text("SSbes"),
      ),

      body: Stack(
        children: [
          Center(
            child: BlocBuilder<TeamListBloc, TeamListState>(
              builder: (BuildContext context, teamListState) =>
              teamListState is TeamListUploadedState
                  ? TeamListWidget(teams: teamListState.list)
                  : const CircularProgressIndicator()
            ),
          ),
          const Positioned(
              bottom: 0,
              right: 0,
              child: TeamAddButton(),
          ),
        ]
      )
    );
  }
}