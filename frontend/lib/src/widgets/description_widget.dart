import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ssbek/src/widgets/bool_description_widget.dart';
import 'package:ssbek/src/widgets/string_description_widget.dart';

import '../entities/description.dart';

class DescriptionWidget extends StatelessWidget{
  final Description description;

  const DescriptionWidget({super.key, required this.description});

  @override
  Widget build(BuildContext context) {
    return ListView(
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
        StringDescriptionWidget(text: "Average age", value: description.averageAge.toString()),
        const SizedBox(height: 10),
        StringDescriptionWidget(text: "Is healthy lifestyle", value: description.isHealthyLifestyle),
        const SizedBox(height: 10),
        StringDescriptionWidget(text: "Party", value: description.party),
        const SizedBox(height: 10),
        StringDescriptionWidget(text: "Other", value: description.smthElse),
      ],
    );
  }

}