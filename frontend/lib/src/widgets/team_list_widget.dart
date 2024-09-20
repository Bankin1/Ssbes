import 'package:flutter/material.dart';

import '../entities/team.dart';
import '../pages/team_page.dart';

class TeamList extends StatelessWidget{
  final List<Team> list;

  const TeamList({super.key, required this.list});
  @override
  Widget build(BuildContext context) => ListView.builder(
      padding: const EdgeInsets.all(8),
      itemCount: list.length,
      itemBuilder: (BuildContext context, int index) {
        return Center(
            child: TextButton(
              onPressed: () => Navigator.push(
                context,
                MaterialPageRoute(builder: (context) =>
                    TeamPage(id: list[index].id, name: list[index].name))
              ),

              child: Text(list[index].name),
            )
        );
      }
  );

}