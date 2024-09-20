import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ssbek/src/widgets/team_list_widget.dart';

import '../entities/team.dart';

class TeamListPage extends StatefulWidget{
  TeamListPage({super.key});

  final List<Team> list = [const Team(id: 0, name: "bebra"), const Team(id: 1, name: "aboba")];
  @override
  State<StatefulWidget> createState() => _TeamListPageState();
}

class _TeamListPageState extends State<TeamListPage>{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text("SSbek"),
      ),
      body: TeamList(list: widget.list),
    );
  }
}