import 'package:flutter/material.dart';

class TeamPage extends StatefulWidget{
  final int id;
  final String name;

  const TeamPage({super.key, required this.id, required this.name});
  @override
  State<StatefulWidget> createState() => _TeamPageState();
}

class _TeamPageState extends State<TeamPage>{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text("SSbes"),
      ),

      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children:[

          Text(widget.name),

          Expanded(
            child: ListView(
              children: const [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                   Text("some text: "),
                   Text("other text")
                  ],
                ),

                SizedBox(height: 10),

                Row(
                 mainAxisAlignment: MainAxisAlignment.center,
                 children: [
                   Text("some text: "),
                   Text("other text")
                 ],
                ),

                SizedBox(height: 10)
              ],
            ),
          )
        ]
      )
    );
  }
}