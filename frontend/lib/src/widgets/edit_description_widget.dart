import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ssbek/src/bloc/description/description_event.dart';
import 'package:ssbek/src/entities/description.dart';
import 'package:ssbek/src/widgets/bool_switch_widget.dart';
import 'package:ssbek/src/widgets/text_field_widget.dart';

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
        description: _keys.toDescription())
    );
  }

  @override
  Widget build(BuildContext context) => Stack(
    fit: StackFit.passthrough,
    children: [
      ListView(
        children: [
          BoolSwitch(
              key: _keys.isYandex,
              text: "Is Yandex",
              initValue: widget.description.isYandex ?? false
          ),

          const SizedBox(height: 10),

          BoolSwitch(
              key: _keys.isToPublic,
              text: "Is to public",
              initValue: widget.description.isToPublic ?? false
          ),

          const SizedBox(height: 10),

          TextFieldWidget(
              key: _keys.stackOfTechnology,
              text: "Stack of technology",
              initValue: widget.description.stackOfTechnology ?? "",
              valueType: TextInputType.text
          ),

          const SizedBox(height: 10),

          TextFieldWidget(
              key: _keys.whatIDo,
              text: "What I do",
              initValue: widget.description.whatIDo ?? "",
              valueType: TextInputType.text
          ),

          const SizedBox(height: 10),

          TextFieldWidget(
              key: _keys.office,
              text: "Office",
              initValue: widget.description.office ?? "",
              valueType: TextInputType.text
          ),

          const SizedBox(height: 10),

          TextFieldWidget(
              key: _keys.workingTime,
              text: "Working time",
              initValue: widget.description.workingTime ?? "",
              valueType: TextInputType.text
          ),

          const SizedBox(height: 10),

          BoolSwitch(
              key: _keys.haveISeat,
              text: "Have I seat",
              initValue: widget.description.haveISeat ?? false
          ),

          const SizedBox(height: 10),

          TextFieldWidget(
              key: _keys.howOftenSinks,
              text: "How often sink",
              initValue: widget.description.howOftenSinks ?? "",
              valueType: TextInputType.text
          ),

          const SizedBox(height: 10),

          BoolSwitch(
              key: _keys.isOpenSpace,
              text: "Is open-space",
              initValue: widget.description.isOpenSpace ?? false
          ),

          const SizedBox(height: 10),

          BoolSwitch(
              key: _keys.workAfter,
              text: "Work after",
              initValue: widget.description.workAfter ?? false
          ),

          const SizedBox(height: 10),

          TextFieldWidget(
              key: _keys.averageAge,
              text: "Average age",
              initValue: widget.description.averageAge ?? "",
              valueType: TextInputType.number
          ),

          const SizedBox(height: 10),

          BoolSwitch(
              key: _keys.isHealthyLifestyle,
              text: "Team has healthy lifestyle",
              initValue: widget.description.isHealthyLifestyle ?? false
          ),

          const SizedBox(height: 10),

          TextFieldWidget(
              key: _keys.party,
              text: "Party",
              initValue: widget.description.party ?? "",
              valueType: TextInputType.text
          ),

          const SizedBox(height: 10),

          TextFieldWidget(
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
  final isYandex = GlobalKey<BoolSwitchState>();
  final isToPublic = GlobalKey<BoolSwitchState>();
  final stackOfTechnology = GlobalKey<TextFieldWidgetState>();
  final whatIDo = GlobalKey<TextFieldWidgetState>();
  final office = GlobalKey<TextFieldWidgetState>();
  final workingTime = GlobalKey<TextFieldWidgetState>();
  final haveISeat = GlobalKey<BoolSwitchState>();
  final howOftenSinks = GlobalKey<TextFieldWidgetState>();
  final isOpenSpace = GlobalKey<BoolSwitchState>();
  final workAfter = GlobalKey<BoolSwitchState>();
  final averageAge = GlobalKey<TextFieldWidgetState>();
  final isHealthyLifestyle = GlobalKey<BoolSwitchState>();
  final party = GlobalKey<TextFieldWidgetState>();
  final smthElse = GlobalKey<TextFieldWidgetState>();

  int? get averageAgeValue => averageAge.currentState != null
      ? int.tryParse(averageAge.currentState!.value)
      : null;

  Description toDescription() => Description(
    isYandex: isYandex.currentState?.value,
    isToPublic: isToPublic.currentState?.value,
    stackOfTechnology: stackOfTechnology.currentState?.value,
    whatIDo: whatIDo.currentState?.value,
    office: office.currentState?.value,
    workingTime: workingTime.currentState?.value,
    haveISeat: haveISeat.currentState?.value,
    howOftenSinks: howOftenSinks.currentState?.value,
    isOpenSpace: isOpenSpace.currentState?.value,
    workAfter: workAfter.currentState?.value,
    averageAge: averageAgeValue,
    isHealthyLifestyle: isHealthyLifestyle.currentState?.value,
    party: party.currentState?.value,
    smthElse: smthElse.currentState?.value
  );
}