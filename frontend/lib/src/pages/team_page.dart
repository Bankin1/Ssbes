import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ssbek/src/widgets/description_widget.dart';
import 'package:ssbek/src/widgets/edit_description_widget.dart';

import '../bloc/description/description_bloc.dart';
import '../bloc/description/description_event.dart';
import '../bloc/description/description_state.dart';
import '../bloc/team_list/team_list_bloc.dart';
import '../bloc/team_list/team_list_event.dart';
import '../bloc/team_list/team_list_state.dart';
import '../entities/team.dart';


class TeamPage extends StatefulWidget{
  final Team team;
  const TeamPage({super.key, required this.team});
  @override
  State<StatefulWidget> createState() => _TeamPageState();
}

class _TeamPageState extends State<TeamPage>{

  _onTeamRemovedPressed() async {
    bool? acceptation = await showDialog<bool>(
      context: context,
      barrierDismissible: false, // user must tap button!
      builder: (BuildContext context) {
        return AlertDialog(
          title: const Text('Removing team'),
          content: const SingleChildScrollView(
            child: ListBody(
              children: <Widget>[
                Text('Do you want to delete this team?'),
              ],
            ),
          ),
          actions: <Widget>[
            TextButton(
              child: const Text('No'),
              onPressed: (){
                Navigator.of(context).pop(false);
              },
            ),
            TextButton(
              child: const Text('Yes'),
              onPressed: () {
                Navigator.of(context).pop(true);
              },
            ),
          ],
        );
      },
    );

    if((acceptation ?? false) && context.mounted){
      BlocProvider.of<TeamListBloc>(context)
          .add(TeamRemovedEvent(id: widget.team.id));
    }
  }

  @override
  Widget build(BuildContext context) {
    return BlocListener<TeamListBloc, TeamListState>(
      listener: (BuildContext context, teamListState) {
        if(teamListState is TeamRemovedState
            && teamListState.id == widget.team.id){
          Navigator.of(context).pop();
        }
      },

      child: BlocProvider<DescriptionBloc>(
        create: (context) => DescriptionBloc()
          ..add(DescriptionRequestedEvent(id: widget.team.descriptionId)),

        child: Scaffold(
          appBar: AppBar(
            centerTitle: true,
            title: const Text("SSbes"),
          ),

          body: Padding(
            padding: const EdgeInsets.all(15.0),

            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children:[

                Row(
                  children: [
                    const Spacer(),
                    Text(widget.team.name,
                      style: const TextStyle(
                        fontWeight: FontWeight.bold
                      ),
                    ),
                    IconButton(
                        onPressed: () => _onTeamRemovedPressed(),
                        icon: const Icon(Icons.delete)
                    ),
                    const Spacer()
                  ],
                ),

                const SizedBox(height: 25),

                Expanded(
                  child: BlocBuilder<DescriptionBloc, DescriptionState>(
                    builder: (context, descriptionState) {
                      if(descriptionState is DescriptionLoadingState) {
                        return const Center(child: CircularProgressIndicator());
                      }

                      else if(descriptionState is DescriptionUploadedState){
                        return Center(
                          child: DescriptionWidget(
                              id: widget.team.descriptionId,
                              description: descriptionState.description
                          ),
                        );
                      }

                      else if(descriptionState is DescriptionEditingState){
                        return Center(
                          child: EditDescriptionWidget(
                              id: widget.team.descriptionId,
                              description: descriptionState.description
                          ),
                        );
                      }

                      else {
                        throw UnimplementedError();
                      }
                    }
                  ),
                )
              ]
            ),
          )
        ),
      ),
    );
  }
}