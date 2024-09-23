import '../../entities/description.dart';

abstract class DescriptionEvent{}

class DescriptionRequestedEvent extends DescriptionEvent{
  final String id;
  DescriptionRequestedEvent({required this.id});
}

class DescriptionEditEvent extends DescriptionEvent{
  final String id;
  final Description description;
  DescriptionEditEvent({required this.id, required this.description});
}

class DescriptionUpdatedEvent extends DescriptionEvent{
  final String id;
  final Description description;

  DescriptionUpdatedEvent({required this.id, required this.description});
}

class DescriptionRemoveEvent extends DescriptionEvent{
  final String id;
  DescriptionRemoveEvent({required this.id});
}