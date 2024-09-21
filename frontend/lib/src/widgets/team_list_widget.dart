import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ssbek/src/bloc/team_list/team_list_bloc.dart';
import 'package:ssbek/src/bloc/team_list/team_list_event.dart';

import '../entities/team.dart';
import '../pages/team_page.dart';

class TeamListWidget extends StatefulWidget{
  final List<Team> teams;

  const TeamListWidget({super.key, required this.teams});

  @override
  State<StatefulWidget> createState() => _TeamListWidgetState();
}

class _TeamListWidgetState extends State<TeamListWidget>{
  @override
  Widget build(BuildContext context) => ListView.builder(
      padding: const EdgeInsets.all(10),
      itemCount: widget.teams.length,
      itemBuilder: (BuildContext context, int index) {
        return Center(
            child: TextButton(
              onPressed: () => Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) =>
                      TeamPage(team: widget.teams[index])
                  )
              ),

              child: Text(widget.teams[index].name),
            )
        );
      }
  );
}