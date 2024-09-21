abstract class DescriptionEvent{}

class DescriptionRequestedEvent extends DescriptionEvent{
  final String descriptionId;
  DescriptionRequestedEvent({required this.descriptionId});
}