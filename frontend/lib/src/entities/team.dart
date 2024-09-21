import 'package:json_annotation/json_annotation.dart';
part 'team.g.dart';


@JsonSerializable()
class Team{
  final String id;
  //final String userId;
  final String name;
  final String descriptionId;

  factory Team.fromJson(Map<String, dynamic> json) => _$TeamFromJson(json);
  Map<String, dynamic> toJson() => _$TeamToJson(this);

  const Team({
    required this.id,
    //required this.userId,
    required this.name,
    required this.descriptionId
  });
}