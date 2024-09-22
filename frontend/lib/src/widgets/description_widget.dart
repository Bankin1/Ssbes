import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ssbek/src/widgets/bool_description_widget.dart';
import 'package:ssbek/src/widgets/string_description_widget.dart';

import '../bloc/description/description_bloc.dart';
import '../bloc/description/description_event.dart';
import '../entities/description.dart';

class DescriptionWidget extends StatelessWidget{
  final String id;
  final Description description;

  const DescriptionWidget({super.key, required this.id, required this.description});

  @override
  Widget build(BuildContext context) {
    return Stack(
      fit: StackFit.passthrough,
      children: [
        ListView(
          children: [
            BoolDescriptionWidget(text: "Is Yandex", value: description.isYandex),
            const SizedBox(height: 10),
            BoolDescriptionWidget(text: "Is to public", value: description.isToPublic),
            const SizedBox(height: 10),
            StringDescriptionWidget(text: "Stack", value: description.stackOfTechnology),
            const SizedBox(height: 10),
            StringDescriptionWidget(text: "What I do", value: description.whatIDo),
            const SizedBox(height: 10),
            StringDescriptionWidget(text: "Office", value: description.office),
            const SizedBox(height: 10),
            StringDescriptionWidget(text: "Working time", value: description.workingTime),
            const SizedBox(height: 10),
            BoolDescriptionWidget(text: "Have I seat", value: description.haveISeat),
            const SizedBox(height: 10),
            StringDescriptionWidget(text: "How often sinks", value: description.howOftenSinks),
            const SizedBox(height: 10),
            BoolDescriptionWidget(text: "Is open space", value: description.isOpenSpace),
            const SizedBox(height: 10),
            BoolDescriptionWidget(text: "Work after", value: description.workAfter),
            const SizedBox(height: 10),
            StringDescriptionWidget(text: "Average age", value: description.averageAge?.toString()),
            const SizedBox(height: 10),
            BoolDescriptionWidget(text: "Is healthy lifestyle", value: description.isHealthyLifestyle),
            const SizedBox(height: 10),
            StringDescriptionWidget(text: "Party", value: description.party),
            const SizedBox(height: 10),
            StringDescriptionWidget(text: "Other", value: description.smthElse),
            const SizedBox(height: 30),
          ],
        ),

        Positioned(
            right: 0,
            bottom: 0,
            child: IconButton(
              onPressed: (){
                BlocProvider.of<DescriptionBloc>(context)
                    .add(DescriptionEditEvent(
                  id: id,
                  description: description,
                ));
              },
              icon: const Icon(Icons.edit),
            )
        ),
      ],
    );
  }

}