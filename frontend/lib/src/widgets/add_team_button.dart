import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../bloc/team_list/team_list_bloc.dart';
import '../bloc/team_list/team_list_event.dart';

class TeamAddButton extends StatefulWidget{
  const TeamAddButton({super.key});
  @override
  State<StatefulWidget> createState() => _TeamAddButtonState();
}

class _TeamAddButtonState extends State<TeamAddButton>{
  final TextEditingController _newTeamController = TextEditingController();

  @override
  void dispose() {
    _newTeamController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return IconButton(
        onPressed: () => //BlocProvider.of<TeamListBloc>(context).add(TeamAddedEvent(name: "beb")),
            showDialog<void>(
          context: context,
          barrierDismissible: false, // user must tap button!
          builder: (BuildContext context) {
            return AlertDialog(
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
                    _newTeamController.clear();
                    Navigator.of(context).pop();
                  },
                ),

              ],
            );
          },
        ),
        icon: const Icon(Icons.add_circle_outline)
    );
  }
}