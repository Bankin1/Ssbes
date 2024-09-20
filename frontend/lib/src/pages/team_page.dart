import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ssbek/src/widgets/description_widget.dart';

import '../bloc/description/description_bloc.dart';
import '../bloc/description/description_event.dart';
import '../bloc/description/description_state.dart';


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
    return BlocProvider<DescriptionBloc>(
      create: (context) => DescriptionBloc()..add(DescriptionRequestedEvent(teamId: widget.id)),
      child: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: const Text("SSbes"),
        ),

        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children:[

            Text(widget.name),

            const SizedBox(height: 10),

            Expanded(
              child: BlocBuilder<DescriptionBloc, DescriptionState>(
                builder: (context, teamState) {
                  if(teamState is DescriptionLoadingState) {
                    return const Center(child: CircularProgressIndicator());
                  } else if(teamState is DescriptionUploadedState){
                    return DescriptionWidget(description: teamState.description);
                  } else{
                    throw UnimplementedError();
                  }
                }
              ),
            )
          ]
        )
      ),
    );
  }
}