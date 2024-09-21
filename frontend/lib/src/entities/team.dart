import 'package:json_annotation/json_annotation.dart';
part 'team.g.dart';


@JsonSerializable()
class Team{
  @JsonKey(name: 'id')
  final String id;
  //final String userId;
  @JsonKey(name: 'name')
  final String name;
  @JsonKey(name: 'description_id')
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