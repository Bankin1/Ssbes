import 'package:flutter/cupertino.dart';

import '../entities/team.dart';

class TeamList extends StatelessWidget{
  final List<Team> list;

  const TeamList({super.key, required this.list});
  @override
  Widget build(BuildContext context) => ListView.builder(
      padding: const EdgeInsets.all(8),
      itemCount: list.length,
      itemBuilder: (BuildContext context, int index)=> Center(child: Text(list[index].name))
  );

}