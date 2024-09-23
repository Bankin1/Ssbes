abstract class TeamListEvent{}

class TeamListRequestedEvent extends TeamListEvent{}

class TeamAddedEvent extends TeamListEvent{
  final String name;
  TeamAddedEvent({required this.name});
}

class TeamRemovedEvent extends TeamListEvent{
  final String id;
  TeamRemovedEvent({required this.id});
}