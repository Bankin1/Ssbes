abstract class DescriptionEvent{}

class DescriptionRequestedEvent extends DescriptionEvent{
  final int teamId;
  DescriptionRequestedEvent({required this.teamId});
}