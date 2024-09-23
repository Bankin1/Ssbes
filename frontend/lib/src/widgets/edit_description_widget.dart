import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ssbek/src/bloc/description/description_event.dart';
import 'package:ssbek/src/entities/description.dart';
import 'package:ssbek/src/widgets/bool_edit_widget.dart';
import 'package:ssbek/src/widgets/text_edit_widget.dart';

import '../bloc/description/description_bloc.dart';

class EditDescriptionWidget extends StatefulWidget{
  final String id;
  final Description description;

  const EditDescriptionWidget({
    super.key,
    required this.id,
    required this.description});

  @override
  State<StatefulWidget> createState() => _EditDescriptionWidgetState();
}

class _EditDescriptionWidgetState extends State<EditDescriptionWidget>{

  final DescriptionGlobalKeys _keys = DescriptionGlobalKeys();

  void _updateDescription(){
    BlocProvider.of<DescriptionBloc>(context).add(DescriptionUpdatedEvent(
        id: widget.id,
        description: _keys.toDescription(widget.description))
    );
  }

  @override
  Widget build(BuildContext context) => Stack(
    fit: StackFit.passthrough,
    children: [
      ListView(
        children: [
          BoolEditWidget(
              key: _keys.isYandex,
              text: "Is Yandex",
              initValue: widget.description.isYandex ?? false
          ),

          const SizedBox(height: 10),

          BoolEditWidget(
              key: _keys.isToPublic,
              text: "Is to public",
              initValue: widget.description.isToPublic ?? false
          ),

          const SizedBox(height: 10),

          TextEditWidget(
              key: _keys.stackOfTechnology,
              text: "Stack of technology",
              initValue: widget.description.stackOfTechnology ?? "",
              valueType: TextInputType.text
          ),

          const SizedBox(height: 10),

          TextEditWidget(
              key: _keys.whatIDo,
              text: "What I do",
              initValue: widget.description.whatIDo ?? "",
              valueType: TextInputType.text
          ),

          const SizedBox(height: 10),

          TextEditWidget(
              key: _keys.office,
              text: "Office",
              initValue: widget.description.office ?? "",
              valueType: TextInputType.text
          ),

          const SizedBox(height: 10),

          TextEditWidget(
              key: _keys.workingTime,
              text: "Working time",
              initValue: widget.description.workingTime ?? "",
              valueType: TextInputType.text
          ),

          const SizedBox(height: 10),

          BoolEditWidget(
              key: _keys.haveISeat,
              text: "Have I seat",
              initValue: widget.description.haveISeat ?? false
          ),

          const SizedBox(height: 10),

          TextEditWidget(
              key: _keys.howOftenSinks,
              text: "How often sink",
              initValue: widget.description.howOftenSinks ?? "",
              valueType: TextInputType.text
          ),

          const SizedBox(height: 10),

          BoolEditWidget(
              key: _keys.isOpenSpace,
              text: "Is open-space",
              initValue: widget.description.isOpenSpace ?? false
          ),

          const SizedBox(height: 10),

          BoolEditWidget(
              key: _keys.workAfter,
              text: "Work after",
              initValue: widget.description.workAfter ?? false
          ),

          const SizedBox(height: 10),

          TextEditWidget(
              key: _keys.averageAge,
              text: "Average age",
              initValue: widget.description.averageAge ?? "",
              valueType: TextInputType.number
          ),

          const SizedBox(height: 10),

          BoolEditWidget(
              key: _keys.isHealthyLifestyle,
              text: "Team has healthy lifestyle",
              initValue: widget.description.isHealthyLifestyle ?? false
          ),

          const SizedBox(height: 10),

          TextEditWidget(
              key: _keys.party,
              text: "Party",
              initValue: widget.description.party ?? "",
              valueType: TextInputType.text
          ),

          const SizedBox(height: 10),

          TextEditWidget(
              key: _keys.smthElse,
              text: "Other info",
              initValue: widget.description.smthElse ?? "",
              valueType: TextInputType.text
          ),

          const SizedBox(height: 25),
        ],
      ),

      Positioned(
          bottom: 0,
          right: 0,
          child: IconButton(
              onPressed: _updateDescription,
              icon: const Icon(Icons.check)
          )
      )
    ],
  );
}

class DescriptionGlobalKeys{
  final isYandex = GlobalKey<BoolEditWidgetState>();
  final isToPublic = GlobalKey<BoolEditWidgetState>();
  final stackOfTechnology = GlobalKey<TextEditWidgetState>();
  final whatIDo = GlobalKey<TextEditWidgetState>();
  final office = GlobalKey<TextEditWidgetState>();
  final workingTime = GlobalKey<TextEditWidgetState>();
  final haveISeat = GlobalKey<BoolEditWidgetState>();
  final howOftenSinks = GlobalKey<TextEditWidgetState>();
  final isOpenSpace = GlobalKey<BoolEditWidgetState>();
  final workAfter = GlobalKey<BoolEditWidgetState>();
  final averageAge = GlobalKey<TextEditWidgetState>();
  final isHealthyLifestyle = GlobalKey<BoolEditWidgetState>();
  final party = GlobalKey<TextEditWidgetState>();
  final smthElse = GlobalKey<TextEditWidgetState>();

  int? get averageAgeValue => averageAge.currentState != null
      ? int.tryParse(averageAge.currentState!.value)
      : null;

  Description toDescription(Description old) => Description(
    isYandex: isYandex.currentState?.value ?? old.isYandex,
    isToPublic: isToPublic.currentState?.value ?? old.isToPublic,
    stackOfTechnology: stackOfTechnology.currentState?.value ?? old.stackOfTechnology,
    whatIDo: whatIDo.currentState?.value ?? old.whatIDo,
    office: office.currentState?.value ?? old.office,
    workingTime: workingTime.currentState?.value ?? old.workingTime,
    haveISeat: haveISeat.currentState?.value ?? old.haveISeat,
    howOftenSinks: howOftenSinks.currentState?.value ?? old.howOftenSinks,
    isOpenSpace: isOpenSpace.currentState?.value ?? old.isOpenSpace,
    workAfter: workAfter.currentState?.value ?? old.workAfter,
    averageAge: averageAgeValue ?? old.averageAge,
    isHealthyLifestyle: isHealthyLifestyle.currentState?.value ?? old.isHealthyLifestyle,
    party: party.currentState?.value ?? old.party,
    smthElse: smthElse.currentState?.value ?? old.smthElse
  );
}