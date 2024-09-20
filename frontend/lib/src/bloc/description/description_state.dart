import 'package:ssbek/src/entities/description.dart';

abstract class DescriptionState{}

class DescriptionLoadingState extends DescriptionState{}
class DescriptionUploadedState extends DescriptionState{
  final Description description;
  DescriptionUploadedState({required this.description});
}