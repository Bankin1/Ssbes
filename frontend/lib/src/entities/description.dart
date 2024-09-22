import 'package:json_annotation/json_annotation.dart';
part 'description.g.dart';


@JsonSerializable()
class Description{
  // @JsonKey(name: 'id')
  // final String id;

  @JsonKey(name: 'is_yandex')
  final bool? isYandex;
  @JsonKey(name: 'is_to_public')
  final bool? isToPublic;
  @JsonKey(name: 'stack_of_technology')
  final String? stackOfTechnology;
  @JsonKey(name: 'what_ido')
  final String? whatIDo;
  @JsonKey(name: 'office')
  final String? office;
  @JsonKey(name: 'working_time')
  final String? workingTime;
  @JsonKey(name: 'seat')
  final bool? haveISeat;
  @JsonKey(name: 'how_often_sink')
  final String? howOftenSinks;
  @JsonKey(name: 'is_open_space')
  final bool? isOpenSpace;
  @JsonKey(name: 'work_after')
  final bool? workAfter;
  @JsonKey(name: 'average_age')
  final int? averageAge;
  @JsonKey(name: 'is_healthy_lifestyle')
  final bool? isHealthyLifestyle;
  @JsonKey(name: 'party')
  final String? party;
  @JsonKey(name: 'smth_else')
  final String? smthElse;

  factory Description.fromJson(Map<String, dynamic> json) => _$DescriptionFromJson(json);
  Map<String, dynamic> toJson() => _$DescriptionToJson(this);

  const Description({
    //required this.id,
    this.isYandex,
    this.isToPublic,
    this.stackOfTechnology,
    this.whatIDo,
    this.office,
    this.workingTime,
    this.haveISeat,
    this.howOftenSinks,
    this.isOpenSpace,
    this.workAfter,
    this.averageAge,
    this.isHealthyLifestyle,
    this.party,
    this.smthElse
  });
}