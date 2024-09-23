import 'package:ssbek/src/entities/description.dart';

abstract class DescriptionState{}

class DescriptionLoadingState extends DescriptionState{}

class DescriptionUploadedState extends DescriptionState{
  final Description description;
  DescriptionUploadedState({required this.description});
}

class DescriptionEditingState extends DescriptionState{
  final String id;
  final Description description;
  DescriptionEditingState({required this.id, required this.description});
}

class DescriptionExitState extends DescriptionState{}