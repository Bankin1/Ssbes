import 'package:json_annotation/json_annotation.dart';
part 'description.g.dart';


@JsonSerializable()
class Description{
  final String id;

  final bool? isYandex;
  final bool? isToPublic;
  final String? stackOfTechnology;
  final String? whatIDo;
  final String? office;
  final String? workingTime;
  final bool? naveISeat;
  final String? howOftenSinks;
  final bool? isOpenSpace;
  final bool? workAfter;
  final int? averageAge;
  final String? isHealthyLifestyle;
  final String? party;
  final String? smthElse;

  factory Description.fromJson(Map<String, dynamic> json) => _$DescriptionFromJson(json);
  Map<String, dynamic> toJson() => _$DescriptionToJson(this);

  const Description({
    required this.id,
    this.isYandex,
    this.isToPublic,
    this.stackOfTechnology,
    this.whatIDo,
    this.office,
    this.workingTime,
    this.naveISeat,
    this.howOftenSinks,
    this.isOpenSpace,
    this.workAfter,
    this.averageAge,
    this.isHealthyLifestyle,
    this.party,
    this.smthElse
  });
}