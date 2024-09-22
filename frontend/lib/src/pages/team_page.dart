import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ssbek/src/widgets/description_widget.dart';
import 'package:ssbek/src/widgets/edit_description_widget.dart';

import '../bloc/description/description_bloc.dart';
import '../bloc/description/description_event.dart';
import '../bloc/description/description_state.dart';
import '../entities/team.dart';


class TeamPage extends StatefulWidget{
  final Team team;
  const TeamPage({super.key, required this.team});
  @override
  State<StatefulWidget> createState() => _TeamPageState();
}

class _TeamPageState extends State<TeamPage>{
  @override
  Widget build(BuildContext context) {
    return BlocProvider<DescriptionBloc>(
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

              Text(widget.team.name,
                style: const TextStyle(
                  fontWeight: FontWeight.bold
                ),
              ),

              const SizedBox(height: 25),

              Expanded(
                child: BlocBuilder<DescriptionBloc, DescriptionState>(
                  builder: (context, descriptionState) {
                    return Stack(
                      fit: StackFit.passthrough,
                      children: [
                        if(descriptionState is DescriptionLoadingState)
                          const Center(child: CircularProgressIndicator())

                        else if(descriptionState is DescriptionUploadedState)
                          Center(
                            child: DescriptionWidget(
                                id: widget.team.descriptionId,
                                description: descriptionState.description
                            ),
                          )

                        else if(descriptionState is DescriptionEditingState)
                            Center(
                              child: EditDescriptionWidget(
                                  id: widget.team.descriptionId,
                                  description: descriptionState.description
                              ),
                            )
                      ],
                    );
                  }
                ),
              )
            ]
          ),
        )
      ),
    );
  }
}