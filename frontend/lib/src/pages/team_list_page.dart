import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ssbek/src/bloc/team_list/team_list_bloc.dart';
import 'package:ssbek/src/bloc/team_list/team_list_event.dart';
import 'package:ssbek/src/bloc/team_list/team_list_state.dart';
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

  Future<void> _showNewTeamDialog() async {
    return showDialog<void>(
      context: context,
      barrierDismissible: false, // user must tap button!
      builder: (BuildContext context) {
        return BlocProvider.value(
          value: BlocProvider.of<TeamListBloc>(context),
          child: AlertDialog(
            title: const Text('Create new team'),
            content: TextField(controller: _newTeamController),
            actions: <Widget>[

              TextButton(
                child: const Text('Cancel'),
                onPressed: () => Navigator.of(context).pop(),
              ),

              TextButton(
                child: const Text('Create'),
                onPressed: () {
                  BlocProvider.of<TeamListBloc>(context)
                      .add(TeamAddedEvent(name: _newTeamController.text));
                  Navigator.of(context).pop();
                },
              ),

            ],
          ),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider<TeamListBloc>(
      create: (context) => TeamListBloc()..add(TeamListRequestedEvent()),
      child: Scaffold(

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
              Positioned(
                  bottom: 0,
                  right: 0,
                  child: IconButton(
                      onPressed: () => showDialog<void>(
                    context: context,
                    barrierDismissible: false, // user must tap button!
                    builder: (BuildContext context) {
                      return BlocProvider.value(
                        value: BlocProvider.of<TeamListBloc>(context),
                        child: AlertDialog(
                          title: const Text('Create new team'),
                          content: TextField(controller: _newTeamController),
                          actions: <Widget>[

                            TextButton(
                              child: const Text('Cancel'),
                              onPressed: () => Navigator.of(context).pop(),
                            ),

                            TextButton(
                              child: const Text('Create'),
                              onPressed: () {
                                BlocProvider.of<TeamListBloc>(context)
                                    .add(TeamAddedEvent(name: _newTeamController.text));
                                Navigator.of(context).pop();
                              },
                            ),

                          ],
                        ),
                      );
                    },
                  ),
                      icon: const Icon(Icons.add_circle_outline)
                  )
              ),
            ]
          )
      )
    );
  }
}